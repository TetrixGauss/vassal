part of 'services_bloc.dart';

@freezed
class ServicesEvent with _$ServicesEvent {
  const factory ServicesEvent.initServices() = initServicesEvent;

  const factory ServicesEvent.goToService(Service service) = goToServiceEvent;

  const factory ServicesEvent.goToCategory(Category category, Service service) = goToCategoryEvent;

  const factory ServicesEvent.showServices() = showServicesEvent;

  const factory ServicesEvent.addAppointment(String staffId, String serviceId, String date) = addAppointmentEvent;

}