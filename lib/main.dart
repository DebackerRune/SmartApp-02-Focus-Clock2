import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'clock_screen.dart';
import 'settings_screen.dart';

void main() {
  runApp(const FocusClockApp());
}

class FocusClockApp extends StatelessWidget {
  const FocusClockApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Focus Clock',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue,
          brightness: Brightness.light,
        ),
        useMaterial3: true,
        textTheme: GoogleFonts.interTextTheme(),
      ),
      darkTheme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue,
          brightness: Brightness.dark,
        ),
        useMaterial3: true,
        textTheme: GoogleFonts.interTextTheme(
          ThemeData.dark().textTheme,
        ),
      ),
      themeMode: ThemeMode.system,
      initialRoute: '/',
      routes: {
        '/': (context) => const ClockScreen(),
        '/settings': (context) => const SettingsScreen(),
      },
    );
  }
}
