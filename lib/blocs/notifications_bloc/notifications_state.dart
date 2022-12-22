part of 'notifications_bloc.dart';

@freezed
class NotificationsState with _$NotificationsState {
  factory NotificationsState.initial() {
    return const NotificationsState(notificationsStatus: NotificationsStatus.noNotifications, notifications: [], errorMessage: "", patient: '', colorFilter: '');
  }

  const factory NotificationsState({
    required NotificationsStatus notificationsStatus,
    required List<Notification> notifications,
    required String colorFilter,
    required String patient,
    required String errorMessage,
  }) = notificationsState;
}