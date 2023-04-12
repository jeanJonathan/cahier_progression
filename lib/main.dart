/*Attention dans les imports, le dossier lib est invisible devant le compilateur*/
import 'package:flutter/material.dart';
import 'package:cahier_progression/utils/Constants.dart';
import 'package:cahier_progression/screens/HomeScreen.dart';
import 'package:cahier_progression/screens/LoginScreen.dart';
import 'package:cahier_progression/screens/NotesScreen.dart';
import 'package:cahier_progression/screens/SignUpScreen.dart';
import 'package:cahier_progression/screens/VideoPlayerScreen.dart';
import 'package:cahier_progression/services/AuthenticationService.dart';
import 'package:cahier_progression/services/DatabaseService.dart';
import 'package:cahier_progression/services/VideoService.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final authService = AuthenticationService();
  final databaseService = DatabaseService();
  final videoService = VideoService();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Constants.appName,
      theme: Constants.lightTheme,
      darkTheme: Constants.darkTheme,
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(authService: authService, databaseService: databaseService, videoService: videoService),
        '/login': (context) => LoginScreen(authService: authService),
        '/signup': (context) => SignUpScreen(authService: authService),
        '/notes': (context) => NotesScreen(databaseService: databaseService),
        '/video': (context) => VideoPlayerScreen(videoService: videoService),
      },
    );
  }
}
