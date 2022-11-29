
import 'package:vassal/dependency_injection/services/repositories_service.dart';
import 'package:vassal/dependency_injection/setup_locator.dart';
import 'package:vassal/utils/firebase_notification.dart';

class FirebaseService {
  FirebaseNotification firebaseNotification = FirebaseNotification(
      userRepository : getIt<RepositoriesService>().userRepository,
  );
}