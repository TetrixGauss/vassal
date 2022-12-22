import 'package:vassal/dependency_injection/services/api_service.dart';
import 'package:vassal/dependency_injection/services/daos_service.dart';
import 'package:vassal/dependency_injection/services/database_service.dart';
import 'package:vassal/dependency_injection/services/firebase_service.dart';
import 'package:vassal/dependency_injection/services/repositories_service.dart';
import 'package:get_it/get_it.dart';

var getIt = GetIt.instance;

void setupLocator(){
  getIt.registerLazySingleton(() => DatabaseService());
  getIt.registerLazySingleton(() => FirebaseService());
  getIt.registerLazySingleton(() => DaosService());
  getIt.registerLazySingleton(() => RepositoriesService());
  getIt.registerLazySingleton(() => ApiService());
}