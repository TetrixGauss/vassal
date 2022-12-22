import 'dart:developer';

import 'package:vassal/blocs/blog_bloc/blog_bloc.dart';
import 'package:vassal/blocs/chat_bloc/chat_bloc.dart';
import 'package:vassal/blocs/dashboard_bloc/dashboard_bloc.dart';
import 'package:vassal/blocs/home_bloc/home_bloc.dart';
import 'package:vassal/blocs/log_in_bloc/log_in_bloc.dart';
import 'package:vassal/blocs/notifications_bloc/notifications_bloc.dart';
import 'package:vassal/blocs/points_bloc/points_bloc.dart';
import 'package:vassal/blocs/profile_bloc/profile_bloc.dart';
import 'package:vassal/blocs/services_bloc/services_bloc.dart';
import 'package:vassal/blocs/splash_bloc/splash_bloc.dart';
import 'package:vassal/components/screen_arguments.dart';
import 'package:vassal/dependency_injection/services/database_service.dart';
import 'package:vassal/dependency_injection/services/repositories_service.dart';
import 'package:vassal/dependency_injection/setup_locator.dart';
import 'package:vassal/models/blog_model.dart';
import 'package:vassal/models/category_model.dart';
import 'package:vassal/models/service_model.dart';
import 'package:vassal/repositories/user_repo.dart';
import 'package:vassal/routes/routes.dart';
import 'package:vassal/screens/blog_specific_screen.dart';
import 'package:vassal/screens/chat_screen.dart';
import 'package:vassal/screens/checkout_screen.dart';
import 'package:vassal/screens/dashboard/dashboard_screen.dart';
import 'package:vassal/screens/login/login_screen.dart';
import 'package:vassal/screens/profile_screen.dart';
import 'package:vassal/screens/services_screens/service_screen.dart';
import 'package:vassal/screens/services_screens/services_screen.dart';
import 'package:vassal/screens/services_screens/specific_service_screen.dart';

import 'package:vassal/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class RouteGenerator {
  static Route<dynamic>? geneRateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider<LogInBloc>(
            create: (context) =>
                LogInBloc(getIt<RepositoriesService>().userRepository),
            child: LoginScreen(),
          ),
        );
      case Routes.dashboardScreen:
        var from = settings.arguments as String?;

        if(from == null) {
          from = "";
        }

        log("Routes.dashboardScreen");
        log(from);
        return MaterialPageRoute(
          builder: (_) => MultiBlocProvider(
            providers: [
              BlocProvider(
                create: (_) =>
                   // from != "appointment" ? (DashboardBloc(getIt<RepositoriesService>().userRepository)..add(DashboardEvent.homeEvent())) : DashboardBloc(getIt<RepositoriesService>().userRepository)..add(DashboardEvent.servicesEvent()),
                DashboardBloc(getIt<RepositoriesService>().userRepository)..add(from != "appointment" ? DashboardEvent.homeEvent() : DashboardEvent.servicesEvent())
              ),
              BlocProvider(create: (_) => HomeBloc(getIt<RepositoriesService>().blogRepository, getIt<RepositoriesService>().userRepository, getIt<RepositoriesService>().serviceRepository, getIt<RepositoriesService>().appointmentRepository)..add(HomeEvent.initHome())),
              BlocProvider(create: (_) => BlogBloc(getIt<RepositoriesService>().blogRepository)..add(BlogEvent.initBlog())),
              BlocProvider(create: (_) => PointsBloc(getIt<RepositoriesService>().userRepository)..add(PointsEvent.initPoints())),
              BlocProvider(create: (_) => ServicesBloc(getIt<RepositoriesService>().serviceRepository, getIt<RepositoriesService>().appointmentRepository)..add(ServicesEvent.initServices()))

            ],
            child: DashboardScreen(from: from,),
            //   BlocProvider<DashboardBloc>(
            // create: (context) =>
            //     DashboardBloc(getIt<RepositoriesService>().userRepository),
            // child: DashboardScreen(),
          ),
        );

      case Routes.splashScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider<SplashBloc>(
            create: (context) => SplashBloc(getIt<RepositoriesService>().userRepository)..add(SplashEvent.checkLoggedIn()),
            child: SplashScreen(),
          ),
        );

      case Routes.blogSpecificScreen:
        var blog = settings.arguments as Blog?;
        return MaterialPageRoute(
          builder: (_) => BlocProvider<BlogBloc>(
            create: (context) => BlogBloc(getIt<RepositoriesService>().blogRepository)..add(BlogEvent.showBlog()),
            child: BlogSpecificScreen( blog: blog!),
          ),
        );

      case Routes.servicesScreen:
        var service = settings.arguments as Service;
        return MaterialPageRoute(
          builder: (_) => BlocProvider<ServicesBloc>(
              create: (context) => ServicesBloc(getIt<RepositoriesService>().serviceRepository, getIt<RepositoriesService>().appointmentRepository),
              child: ServicesScreen(service: service,)
          ),
        );

      case Routes.specificServiceScreen:
        var category = settings.arguments as Category;
        return MaterialPageRoute(
          builder: (_) => BlocProvider<ServicesBloc>(
              create: (context) => ServicesBloc(getIt<RepositoriesService>().serviceRepository, getIt<RepositoriesService>().appointmentRepository),
              child: SpecificServiceScreen(category: category,)
          ),
        );

      case Routes.serviceScreen:
        final args = settings.arguments as ScreenArguments;
        return MaterialPageRoute(
          builder: (_) => BlocProvider<ServicesBloc>(
              create: (context) => ServicesBloc(getIt<RepositoriesService>().serviceRepository, getIt<RepositoriesService>().appointmentRepository),
              child: ServiceScreen(category: args.category, service: args.service,)
          ),
        );

      case Routes.profileScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider<ProfileBloc>(
            create: (context) => ProfileBloc(getIt<RepositoriesService>().userRepository, getIt<RepositoriesService>().appointmentRepository, getIt<DatabaseService>().db)..add(ProfileEvent.initProfile()),
            child: ProfileScreen(),
          ),
        );
      case Routes.chatScreen:

        return MaterialPageRoute(
          builder: (_) => BlocProvider<ChatBloc>(
            create: (context) => ChatBloc(getIt<RepositoriesService>().userRepository, getIt<RepositoriesService>().chatRepository)..add(ChatEvent.initChat()),
            child: ChatScreen(),
          ),
        );
      case Routes.checkoutScreen:

        return MaterialPageRoute(
          builder: (_) => BlocProvider<ChatBloc>(
            create: (context) => ChatBloc(getIt<RepositoriesService>().userRepository, getIt<RepositoriesService>().chatRepository)..add(ChatEvent.initChat()),
            child: CheckoutScreen(),
          ),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => BlocProvider<SplashBloc>(
            create: (context) => SplashBloc(getIt<RepositoriesService>().userRepository)..add(SplashEvent.checkLoggedIn()),
            child: SplashScreen(),
          ),
        );
    }
  }
}
