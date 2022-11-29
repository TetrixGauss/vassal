import 'dart:developer';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:vassal/repositories/user_repo.dart';
import 'package:vassal/utils/status.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../models/user_model.dart';

part 'splash_event.dart';

part 'splash_bloc.freezed.dart';

part 'splash_state.dart';

class SplashBloc extends Bloc<SplashEvent, SplashState> {
  late final UserRepository _userRepository;

  SplashBloc(this._userRepository) : super(SplashState.initial()) {
    on<SplashEvent>((event, emit) async {

      await event.when(
          goTo: (loggedIn) {
      }, checkLoggedIn: () async{
       await _checkLogIn();
      });
    });
  }

  _checkLogIn() async {
    List<User> userList =  await _userRepository.getUsers();
    if(userList.length > 0) {
      emit(state.copyWith(splashStatus: SplashStatus.dashboard));
    } else {
      emit(state.copyWith(splashStatus: SplashStatus.logIn));
    }
  }
}
