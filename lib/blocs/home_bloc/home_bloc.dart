import 'dart:developer';

// import 'package:vassal/models/patient/patient_model.dart';
// import 'package:vassal/models/wearable/wearable_model.dart';
// import 'package:vassal/repositories/patient_repo.dart';
// import 'package:vassal/repositories/wearable_repo.dart';
import 'package:vassal/models/appointment_model.dart';
import 'package:vassal/models/blog_model.dart';
import 'package:vassal/models/user_model.dart';
import 'package:vassal/models/service_model.dart';
import 'package:vassal/repositories/appointment_repo.dart';
import 'package:vassal/repositories/blog_repo.dart';
import 'package:vassal/repositories/service_repo.dart';
import 'package:vassal/repositories/user_repo.dart';
import 'package:vassal/utils/keys/asset_keys.dart';
import 'package:vassal/utils/keys/locale_keys.dart';
import 'package:vassal/utils/status.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_event.dart';

part 'home_bloc.freezed.dart';

part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  late final BlogRepository _blogRepository;
  late final UserRepository _userRepository;
  late final ServiceRepository _serviceRepository;
  late final AppointmentRepository _appointmentRepository;
  int takes = 100000000000000;

  HomeBloc(this._blogRepository, this._userRepository, this._serviceRepository, this._appointmentRepository) : super(HomeState.initial()) {
    //this._patientRepository, this._wearableRepository

    on<HomeEvent>((event, emit) async {
      await event.when(
          goToBlog: (Blog blog) {
            emit(state.copyWith(homeStatus: HomeStatus.goToBlog, blog: blog));
          },
          showBlogs: () {
            emit(state.copyWith(homeStatus: HomeStatus.showBlogs));
          },
          addAppointment: () {
            emit(state.copyWith(homeStatus: HomeStatus.addAppointment));
          },
          goToService: (int id) async{
            emit(state.copyWith(homeStatus: HomeStatus.goToService, service: await _getService(id)));
          }, initHome: () async {
            // User user = await _getSubscription();
            // if((await _getSubscription()).roleId != 0) {
              emit(state.copyWith(homeStatus: HomeStatus.homeLoading));
              emit(state.copyWith(homeStatus: HomeStatus.home, paidUser: true, blogs: await _getBlogs(), services: await _getServices(), appointments: await _getAppointments(), user: await _getUser()));
            // } else {
            //   emit(state.copyWith(homeStatus: HomeStatus.home, paidUser: false, blogs: await _getBlogs(), user: await _getUser));
            // }
        // await _getAppointments();
        // await _getServices();
        // await _getBlogs();

      });
    });
  }

  _getUser() async {
    List<User> userList =  await _userRepository.getUsers();
    log(userList[0].toString());
    // emit(state.copyWith(profileStatus: ProfileStatus.init, user: userList[0]));
    return userList[0];
  }

  /// don't get user from, get user from endpoint and update user at db if lastUpdate  is not today
  _getSubscription() async {
    User user = await _userRepository.getUserDB();
    if(user.updated_at.day < DateTime.now().day) {
      await _userRepository.getUser(true);
    }
    return await _userRepository.getUserDB();
  }

  _getAppointments() async{
    List<dynamic> list = await _appointmentRepository.getAppointments();

    return list;
  }

  _getServices() async {
    return await _serviceRepository.getServices();
  }

  _getService(int id) async {
    return await _serviceRepository.getService(id);
  }

  _getBlogs() async {
    return await _blogRepository.getBlogs();
  }
}
