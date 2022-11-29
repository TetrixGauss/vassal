part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.initHome() = initHomeEvent;

  const factory HomeEvent.showBlogs() = showBlogsEvent;

  const factory HomeEvent.goToBlog(Blog blog) = goToBlogEvent;

  const factory HomeEvent.goToService(int id) = goToServiceEvent;

  const factory HomeEvent.addAppointment() = addAppointmentEvent;
}