import 'package:flutter/material.dart';
import 'package:interview_test/services/navigation_service.dart';
import 'package:interview_test/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fintech Dashboard',
      theme: ThemeData(
        colorScheme: .fromSeed(
          seedColor: Colors.blueAccent,
          primaryContainer: Colors.blueAccent[700],
          surfaceContainer: Color(0xFFe4f1f6),
          surface: Color(0xFFf6f6f6),
        ),
      ),
      home: HomeScreen(),
      initialRoute: HomeScreen.pageId,
      onGenerateRoute: NavigationService.onGenerateRoute,
    );
  }
}
