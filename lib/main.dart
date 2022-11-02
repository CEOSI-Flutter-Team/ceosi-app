import 'package:ceosi_app/screens/ceosi_company_app/screens/announcement_screen.dart';
import 'package:ceosi_app/screens/ceosi_company_app/screens/team_screen.dart';
import 'package:ceosi_app/screens/home_screen.dart';
import 'package:ceosi_app/screens/login_screen.dart';
import 'package:ceosi_app/screens/register_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'constants/labels.dart';
import 'screens/ceosi_company_app/screens/add_team_screen.dart';

void main() {
  runApp(const ProviderScope(child: ProviderScope(child: MyApp())));
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
      initialRoute: '/announcementscreen',
      routes: {
        '/': (context) => const HomeScreen(),
        '/homescreen': (context) => const HomeScreen(),
        '/registerscreen': (context) => RegisterScreen(),
        '/announcementscreen': (context) => const AnnouncementScreen(),
        '/teamscreen': (context) => const TeamScreen(),
        '/addteamscreen': (context) => const AddTeamScreen(),
      },
      title: 'CEOSI App',
    );
  }
}
