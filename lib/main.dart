import 'package:ceosi_app/screens/ceosi_company_app/screens/announcement_screen.dart';
import 'package:ceosi_app/screens/ceosi_company_app/screens/team_screen.dart';
import 'package:ceosi_app/screens/login_screen.dart';
import 'package:ceosi_app/screens/home_screen.dart';
import 'package:ceosi_app/screens/register_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'constants/labels.dart';
import 'screens/ceosi_flutter_catalog/code_list_screen.dart';
import 'screens/ceosi_freedomwall/freedomposts_screen.dart';

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
      initialRoute: '/teamscreen',
      routes: {
        '/': (context) => LoginScreen(),
        '/homescreen': (context) => const HomeScreen(),
        '/registerscreen': (context) => RegisterScreen(),
        '/codelistscreen': (context) => const CodeListScreen(),
        '/freedompostsscreen': (context) => const FreedomPostsScreen(),
        '/announcementscreen': (context) => const AnnouncementScreen(),
        '/teamscreen': (context) => const TeamScreen(),
      },
      title: Labels.ceosiApp,
    );
  }
}
