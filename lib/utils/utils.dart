import 'package:firebase_core/firebase_core.dart';
import 'package:get_it/get_it.dart';
import 'package:spark_chat/firebase_options.dart';
import 'package:spark_chat/services/auth_services.dart';

Future<void> setupFirebase() async {
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
}

Future<void> registerServices() async {
  final GetIt getIt = GetIt.instance;
  getIt.registerSingleton<AuthServices>(AuthServices());
}
