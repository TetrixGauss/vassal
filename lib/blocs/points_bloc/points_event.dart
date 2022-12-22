part of 'points_bloc.dart';

@freezed
class PointsEvent with _$PointsEvent {
  const factory PointsEvent.initPoints() = initPointsEvent;

  const factory PointsEvent.reedemPoints(String points) = reedemPointsEvent;

}