part of 'notifications_bloc.dart';

@freezed
class NotificationsEvent with _$NotificationsEvent {

  const factory NotificationsEvent.showNotifications(String filter) = showNotificationsEvent;

  const factory NotificationsEvent.deleteNotification(String hash) = deleteNotificationEvent;

  const factory NotificationsEvent.clearAll() = clearAllEvent;

  const factory NotificationsEvent.back() = backEvent;

  const factory NotificationsEvent.notificationPressed(String patientHash) = notificationPressedEvent;

}