part of 'services_bloc.dart';

@freezed
class ServicesState with _$ServicesState {
  factory ServicesState.initial() {
    return ServicesState(serviceStatus: ServiceStatus.showServices, errorMessage: "",service: Service.newService(), category: Category.newCategory(), services: [],);
  }

  const factory ServicesState({
    required ServiceStatus serviceStatus,
    required String errorMessage,
    required Service? service,
    required Category? category,
    required List<Service> services,
  }) = servicesState;
}