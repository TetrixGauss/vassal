import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vassal/models/category_model.dart';
import 'package:vassal/models/service_model.dart';
import 'package:vassal/repositories/appointment_repo.dart';
import 'package:vassal/repositories/blog_repo.dart';
import 'package:vassal/repositories/service_repo.dart';
import 'package:vassal/utils/status.dart';

part 'services_event.dart';

part 'services_bloc.freezed.dart';

part 'services_state.dart';

class ServicesBloc extends Bloc<ServicesEvent, ServicesState> {
  late final ServiceRepository _serviceRepository;
  late final AppointmentRepository _appointmentRepository;
  int takes = 100000000000000;

  ServicesBloc(this._serviceRepository, this._appointmentRepository) : super(ServicesState.initial()) {
    //this._patientRepository, this._wearableRepository

    on<ServicesEvent>((event, emit) async {
      await event.when(initServices: () async {
        emit(state.copyWith(serviceStatus: ServiceStatus.servicesLoading));
        // _getServices().then((services) {
          emit(state.copyWith(serviceStatus: ServiceStatus.initServices, services: await _getServices()));
        // });
        // List<Service> services = await _getServices();

      }, showServices: () {

      }, goToService: (Service service) async {
        emit(state.copyWith(serviceStatus: ServiceStatus.goToService, service: await _getService(service.id)));
      }, goToCategory: (Category category, Service service) async {
        emit(state.copyWith(serviceStatus: ServiceStatus.goToService, service: service, category: await _getCategory(category.id)));
      }, addAppointment: (String staffId, String serviceId, String date) async {
        await _sendAppointment(staffId, serviceId, date);
      });
    });
  }

  _getServices() async {
    return await _serviceRepository.getServices();
  }

  _getService(int id) async {
    return await _serviceRepository.getService(id);
  }

  _getCategory(int id) async {
    return await _serviceRepository.getCategory(id);
  }

  _sendAppointment(String staffId, String serviceId, String date) async {
    await _appointmentRepository.saveAppointment(staffId, serviceId, date);
  }

}
