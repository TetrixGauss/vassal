part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  factory HomeState.initial() {
    return HomeState(homeStatus: HomeStatus.homeLoading, errorMessage: "", paidUser: false, service: Service.newService(), blog: null, blogs: [], services : [], user: User.newUser(),
        appointments: []);
  }

  const factory HomeState({
    required HomeStatus homeStatus,
    required String errorMessage,
    required bool paidUser,
    required Service service,
    required Blog? blog,
    required List<Blog> blogs,
    required List<Service> services,
    required List<dynamic> appointments,
    required User user
  }) = homeState;
}