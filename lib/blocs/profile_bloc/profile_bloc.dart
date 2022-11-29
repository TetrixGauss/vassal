import 'dart:developer';

import 'package:vassal/database/database.dart' as db;
import 'package:vassal/models/user_model.dart';
import 'package:vassal/repositories/appointment_repo.dart';
import 'package:vassal/repositories/user_repo.dart';
import 'package:vassal/utils/status.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_event.dart';

part 'profile_bloc.freezed.dart';

part 'profile_state.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  late final UserRepository _userRepository;
  late final AppointmentRepository _appointmentRepository;

  late final db.DatabaseHelper _databaseHelper;

  int takes = 100000000000000;

  ProfileBloc(this._userRepository, this._appointmentRepository, this._databaseHelper) : super(ProfileState.initial()) {

    on<ProfileEvent>((event, emit) async {
      await event.when(initProfile: () async {
        await _getUser();
        emit(state.copyWith(profileStatus: ProfileStatus.init, user: await _getUser(), appointments: await _getAppointments()));
      }, logOut: () {
        _databaseHelper.deleteEverything();
        emit(state.copyWith(profileStatus: ProfileStatus.logOut));
      }, addAppointment: () {
        emit(state.copyWith(profileStatus: ProfileStatus.addAppointment));
      });
    });

  }

  _getUser() async {
    List<User> userList =  await _userRepository.getUsers();
    log(userList[0].toString());
    // emit(state.copyWith(profileStatus: ProfileStatus.init, user: userList[0]));
    return userList[0];
  }

  _getAppointments() async{
    List<dynamic> list = await _appointmentRepository.getAppointments();

    return list;
  }
}
