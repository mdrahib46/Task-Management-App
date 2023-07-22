import 'package:flutter/material.dart';
import 'package:task_management_app/ui/screens/splash_screen.dart';

class TaskManagementApp extends StatelessWidget {
  const TaskManagementApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Task Manager',

/// Light theme style form here
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.green,

        /// Title Text theme style form here
        textTheme: const TextTheme(
          titleLarge: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w600,
            letterSpacing: 0.6,
          ),
        ),

        /// Input decoration theme style from here
        inputDecorationTheme: const InputDecorationTheme(
          filled: true,
          fillColor: Colors.white,
          contentPadding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
          border: OutlineInputBorder(borderSide: BorderSide.none),
        ),

        ///Elevated button theme style from here
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.green,
            padding: const EdgeInsets.symmetric(vertical: 10),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            elevation: 4,
          ),
        ),
      ),





/// Dark theme style from here
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.grey,

        /// Title Text theme style form here
        textTheme: const TextTheme(
          titleLarge: TextStyle(
            color: Colors.grey,
            fontSize: 30,
            fontWeight: FontWeight.w600,
            letterSpacing: 0.6,
          ),
        ),

        /// Input decoration theme style from here
        inputDecorationTheme: const InputDecorationTheme(
          filled: true,
          fillColor: Colors.grey,
          contentPadding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
          border: OutlineInputBorder(borderSide: BorderSide.none),
        ),

        ///Elevated button theme style from here
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.grey,
            padding: const EdgeInsets.symmetric(vertical: 10),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            elevation: 4,
          ),
        ),
      ),
      home: const SplashScreen(),
    );
  }
}
