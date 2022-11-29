part of 'profile_bloc.dart';

@freezed
class ProfileEvent with _$ProfileEvent {
  const factory ProfileEvent.initProfile() = initProfileEvent;

  const factory ProfileEvent.addAppointment() = addAppointmentEvent;

  const factory ProfileEvent.logOut() = logOutEvent;

}