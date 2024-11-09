import 'package:flutter/material.dart';
import 'package:spark_chat/home_screen/home_screen.dart';
import 'package:spark_chat/screens/login_screen.dart';
import 'package:spark_chat/utils/utils.dart';

void main() async {
  await setUp();
  runApp(const MyApp());
}

Future<void> setUp() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupFirebase();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}
