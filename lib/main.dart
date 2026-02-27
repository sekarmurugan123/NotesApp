import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:ui_project/screens/homescreen.dart';
import 'package:ui_project/screens/registerpage.dart';
import 'package:ui_project/screens/welcome_screen.dart';
import 'package:ui_project/firebase_options.dart';
  void main()async {
    WidgetsFlutterBinding.ensureInitialized();
    Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  }


class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState()=>_MyApp();
}
  class _MyApp extends State<MyApp> {
    TextEditingController controller = TextEditingController();

    @override
    Widget build(BuildContext context) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'CRUD APP',
        theme: ThemeData(
          colorSchemeSeed: Colors.indigoAccent,
          inputDecorationTheme: InputDecorationTheme(
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide(color: Colors.transparent),
              ),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.transparent)
              ),
              errorBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.transparent),
                  borderRadius: BorderRadius.circular(10)
              ),
              focusedErrorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.transparent)
              ),
              fillColor: Colors.grey.shade200,
              filled: true
          ),
          scaffoldBackgroundColor: Colors.white,

        ),
        home: WelcomeScreen()
      );
    }
  }