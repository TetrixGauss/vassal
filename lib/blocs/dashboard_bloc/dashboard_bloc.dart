import 'dart:developer';

// import 'package:vassal/database/database.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:vassal/models/user_model.dart';
import 'package:vassal/repositories/user_repo.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vassal/utils/status.dart';

part 'dashboard_event.dart';

part 'dashboard_bloc.freezed.dart';

part 'dashboard_state.dart';

class DashboardBloc extends Bloc<DashboardEvent, DashboardState> {
  late final UserRepository _userRepository;

  DashboardBloc(this._userRepository) : super(DashboardState.initial()) {
    on<DashboardEvent>((event, emit) async {
      // SharedPreferences _sp = await SharedPreferences.getInstance();
      await event.when(homeEvent: () async {
        emit(state.copyWith(dashboardStatus: DashboardStatus.home, user: await _getSubscription(), sp: await SharedPreferences.getInstance()));
      }, servicesEvent: () async{
        emit(state.copyWith(dashboardStatus: DashboardStatus.services, user: await _getSubscription(), sp: await SharedPreferences.getInstance()));
      }, pointsEvent: () async{
        emit(state.copyWith(dashboardStatus: DashboardStatus.points, user: await _getSubscription(), sp: await SharedPreferences.getInstance()));
      }, blogEvent: () async{
        emit(state.copyWith(dashboardStatus: DashboardStatus.blog, user: await _getSubscription(), sp: await SharedPreferences.getInstance()));
      }, blogFromHomeEvent: () async{
        emit(state.copyWith(dashboardStatus: DashboardStatus.blogFromHome, user: await _getSubscription(), sp: await SharedPreferences.getInstance()));
      });
    });
  }

  /// don't get user from, get user from endpoint and update user at db if lastUpdate  is not today
  _getSubscription() async {
    User user = await _userRepository.getUserDB();
    if(user.updated_at.day < DateTime.now().day) {
      await _userRepository.getUser(true);
    }
    return await _userRepository.getUserDB();
  }

}
