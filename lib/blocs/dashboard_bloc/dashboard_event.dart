part of 'dashboard_bloc.dart';

@freezed
class DashboardEvent with _$DashboardEvent {
  const factory DashboardEvent.homeEvent() = homeEvent;

  const factory DashboardEvent.servicesEvent() = servicesEvent;

  const factory DashboardEvent.pointsEvent() = pointsEvent;

  const factory DashboardEvent.blogEvent() = blogEvent;

  const factory DashboardEvent.blogFromHomeEvent() = blogFromHomeEvent;
}