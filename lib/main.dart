import 'package:ceosi_app/screens/ceosi_freedomwall/add_freedom_post_screen.dart';
import 'package:ceosi_app/screens/ceosi_flutter_catalog/source_code_screen.dart';
import 'package:ceosi_app/screens/ceosi_company_app/add_team_screen.dart';
import 'package:ceosi_app/screens/ceosi_company_app/event_calendar_screen.dart';
import 'package:ceosi_app/screens/ceosi_company_app/team_screen.dart';
import 'package:ceosi_app/screens/login_screen.dart';
import 'package:ceosi_app/screens/home_screen.dart';
import 'package:ceosi_app/screens/register_screen.dart';
import 'package:flutter/material.dart';
import 'screens/ceosi_company_app/about_screen.dart';
import 'screens/ceosi_company_app/announcement_screen.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'constants/labels.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        errorColor: Colors.white,
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/eventcalendarscreen',
      routes: {
        '/': (context) => const LoginScreen(),
        '/homescreen': (context) => const HomeScreen(),
        '/registerscreen': (context) => RegisterScreen(),
        '/announcementscreen': (context) => const AnnouncementScreen(),
        '/teamscreen': (context) => const TeamScreen(),
        '/addteamscreen': (context) => const AddTeamScreen(),
        '/aboutscreen': (context) => const AboutScreen(),
        '/addfreedompostscreen': (context) => const AddFreedomPostScreen(),
        '/sourcecodescreen': (context) => const SourceCodeScreen(),
        '/eventcalendarscreen': (context) => const EventCalendarScreen(),
      },
      title: Labels.ceosiApp,
    );
  }
}
