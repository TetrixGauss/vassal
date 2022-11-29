import 'dart:convert';
import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vassal/models/user_model.dart';

import 'package:vassal/repositories/service_repo.dart';
import 'package:vassal/repositories/user_repo.dart';
import 'package:vassal/utils/status.dart';

part 'points_event.dart';

part 'points_bloc.freezed.dart';

part 'points_state.dart';

class PointsBloc extends Bloc<PointsEvent, PointsState> {
  late final UserRepository _userRepository;
  int takes = 100000000000000;

  PointsBloc(this._userRepository) : super(PointsState.initial()) {
    //this._patientRepository, this._wearableRepository

    on<PointsEvent>((event, emit) async {
      await event.when(initPoints: () async {

        User user = await _getUser();
        String points = user.points;
        log(points);
        Map<String, dynamic> pointsMap = jsonDecode(points);
        log(pointsMap.toString());
        emit(state.copyWith(pointsStatus: PointsStatus.showPoints, points: pointsMap["all"].toString()));

      });
    });
  }

  _getStaff() async {

  }

  _getUser() async {
    return await _userRepository.findUser();
  }
}
