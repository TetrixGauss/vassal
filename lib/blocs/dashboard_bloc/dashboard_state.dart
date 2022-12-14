part of 'dashboard_bloc.dart';

@freezed
class DashboardState with _$DashboardState {
  factory DashboardState.initial() {
    return DashboardState(dashboardStatus: DashboardStatus.init, errorMessage: "", user: User.newUser());
  }

  const factory DashboardState({
    required DashboardStatus dashboardStatus,
    required String errorMessage,
    required User user
  }) = dashboardState;
}