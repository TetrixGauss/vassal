part of 'points_bloc.dart';

@freezed
class PointsState with _$PointsState {
  factory PointsState.initial() {
    return PointsState(pointsStatus: PointsStatus.initPoints, errorMessage: "", points: "0", controller: TextEditingController() );
  }

  const factory PointsState({
    required PointsStatus pointsStatus,
    required String errorMessage,
    required String points,
    required TextEditingController controller

  }) = pointsState;
}