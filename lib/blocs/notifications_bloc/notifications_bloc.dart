import 'package:bloc/bloc.dart';
import 'package:vassal/models/notification_model.dart';
import 'package:vassal/utils/keys/locale_keys.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vassal/utils/status.dart';

part 'notifications_event.dart';

part 'notifications_bloc.freezed.dart';

part 'notifications_state.dart';

class NotificationsBloc extends Bloc<NotificationsEvent, NotificationsState> {
  NotificationsBloc() : super(NotificationsState.initial()) {
    List<Notification> notifications = _getNotifications();
    on<NotificationsEvent>((event, emit) async {
      await event.when(
          deleteNotification: (String hash) {},
          clearAll: () {},
          back: () {
            emit(state.copyWith(notificationsStatus: NotificationsStatus.back));
          },
          notificationPressed: (String patientHash) {
            emit(state.copyWith(
                notificationsStatus: NotificationsStatus.notificationPressed,
                patient: patientHash));
          },
          showNotifications: (String filter) {
            emit(state.copyWith(
                notificationsStatus: NotificationsStatus.showingNotifications,
                notifications: _checkFilters(filter, notifications),
                patient: "", colorFilter: filter));
          });
    });

    if (notifications.length > 0) {
      emit(state.copyWith(
          notificationsStatus: NotificationsStatus.showingNotifications,
          notifications: notifications,
          patient: "", colorFilter: LocaleKeys.all));
    } else {
      emit(state.copyWith(notificationsStatus: NotificationsStatus.noNotifications));
    }
  }

  _getNotifications() {
    List<Notification> patients = [];
    Notification patient1 = new Notification("", "0xff4334E7", false);
    Notification patient2 = new Notification("", "0xffA31C75", false);
    patients.add(patient1);
    patients.add(patient2);
    while (true) {
      Notification patient1 = new Notification("", "0xff43C622", true);
      patients.add(patient1);
      if (patients.length > 15) {
        break;
      }
    }
    return patients;
  }


  _checkFilters(String filterColor, List<Notification> notifications) {
    List<Notification> tmpNotifications = [];
    if (filterColor == LocaleKeys.all) {
      tmpNotifications.addAll(notifications);
    } else {
      notifications.forEach((element) {
        if (element.color == filterColor) {
          tmpNotifications.add(element);
        }
      });
    }

    return tmpNotifications;
  }
}
