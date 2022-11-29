import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:vassal/helpers/facebook_sign_in_helper.dart';
import 'package:vassal/helpers/google_sign_in_helper.dart';
import 'package:vassal/repositories/user_repo.dart';
import 'package:vassal/utils/status.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'log_in_event.dart';

part 'log_in_bloc.freezed.dart';

part 'log_in_state.dart';

class LogInBloc extends Bloc<LogInEvent, LogInState> {
  late final UserRepository _userRepository;

  LogInBloc(this._userRepository) : super(LogInState.initial()) {
    on<LogInEvent>((event, emit) async {
      await event.when(
          forgotPassword: () {
            emit(state.copyWith(loginStatus: LoginStatus.forgotPassword));
          },
          resetPassword: (String email) async {
            int response = await _userRepository.resetPassword(email: email);
            if (response == 1) {
              emit(
                state.copyWith(
                    loginStatus: LoginStatus.resetPasswordSuccessful,
                    errorMessage: "Password reset successful"),
              );
            } else {
              emit(
                state.copyWith(
                    loginStatus: LoginStatus.resetPasswordFailed,
                    errorMessage: "Password reset failed"),
              );
            }
          },
          goToRegister: () {
            emit(
              state.copyWith(
                  loginStatus: LoginStatus.register,
                  errorMessage: ""),
            );
          },
          facebookLoginEvent: (String email, String password) async {
            UserCredential userCredential = await FacebookSignInHelper().signInWithFacebook();
            if (await _userRepository.login(email: userCredential.user!.email, password: "", provider: 2) != 1) {
              if(await _userRepository.register(email: userCredential.user!.email, firstName: userCredential.user!.displayName, lastName: "", password: "", phone: userCredential.user!.phoneNumber ?? "", provider: 2) == 1){
                await _userRepository.login(email: userCredential.user!.email, password: "", provider: 2);
              }
            } else {
              emit(
                state.copyWith(
                    loginStatus: LoginStatus.logInSuccessful,
                    errorMessage: "Login Successful"),
              );
            }
          },
          register: (String email, String password, String firstName, String lastName, String phone) async {
            _userRepository.register(email: email, firstName: firstName, lastName: lastName, password: password, phone: phone, provider: 1).then((response){
              if( response == 1) {
                emit(
                  state.copyWith(
                      loginStatus: LoginStatus.registerSuccessful,
                      errorMessage: "Έγγραφη επιτυχής"),
                );
              } else if(response == -1) {
                emit(
                  state.copyWith(
                      loginStatus: LoginStatus.registerFailed,
                      errorMessage: "Το email υπάρχει!"),
                );
              } else {
                emit(
                  state.copyWith(
                      loginStatus: LoginStatus.registerFailed,
                      errorMessage: "Υπήρχε πρόβλημα κατά την εγγραφή! Προσπαθήστε ξανά!"),
                );
              }
            });


          },
          loginEvent: (String email, String password) async {
            if (await _userRepository.login(email: email, password: password, provider: 1) != 1) {
              emit(
                state.copyWith(
                    loginStatus: LoginStatus.logInFailed,
                    errorMessage: "Login Failed"),
              );
            } else {
              emit(
                state.copyWith(
                    loginStatus: LoginStatus.logInSuccessful,
                    errorMessage: "Login Successful"),
              );
            }
            // await _userRepository.login(email: email, password: password, provider: 1);
          },
          googleLoginEvent: (String email, String password) async {
            UserCredential userCredential = await GoogleSignInHelper().signInWithGoogle();
            log("userCredential.user.toString()");
            log(userCredential.user.toString());
            if (await _userRepository.login(email: userCredential.user!.email, password: "", provider: 3, ) != 1) {
            if(await _userRepository.register(email: userCredential.user!.email, firstName: userCredential.user!.displayName, lastName: "", password: "", phone: userCredential.user!.phoneNumber ?? "", provider: 3) == 1) {
              await _userRepository.login(email: userCredential.user!.email, password: "",  provider: 3);
            }
            emit(
              state.copyWith(
                  loginStatus: LoginStatus.logInSuccessful,
                  errorMessage: "Login Successful"),
            );
            } else {
              emit(
                state.copyWith(
                    loginStatus: LoginStatus.logInSuccessful,
                    errorMessage: "Login Successful"),
              );
            }

          }, back: () {
            if(state.loginStatus == LoginStatus.register) {
              emit(
                state.copyWith(
                    loginStatus: LoginStatus.login),
              );
            }
      });
    });
  }
}
