import 'package:ceosi_app/screens/ceosi_flutter_catalog/code_list_screen.dart';
import 'package:ceosi_app/screens/ceosi_freedomwall/add_freedom_post_screen.dart';
import 'package:ceosi_app/screens/ceosi_freedomwall/freedomposts_screen.dart';
import 'package:ceosi_app/screens/ceosi_company_app/screens/announcement_screen.dart';
<<<<<<< HEAD
import 'package:ceosi_app/screens/ceosi_freedomwall/user_search_screen.dart';
import 'package:ceosi_app/screens/home_screen.dart';
=======
import 'package:ceosi_app/screens/ceosi_company_app/screens/add_announcement_screen.dart';
import 'package:ceosi_app/screens/ceosi_company_app/screens/add_team_screen.dart';
import 'package:ceosi_app/screens/ceosi_company_app/screens/team_screen.dart';
>>>>>>> 61a6dbf279cddbd93d26fd3f5c4ddbbe8745726a
import 'package:ceosi_app/screens/login_screen.dart';
import 'package:ceosi_app/screens/home_screen.dart';
import 'package:ceosi_app/screens/register_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'constants/labels.dart';
import 'screens/ceosi_flutter_catalog/code_list_screen.dart';
import 'screens/ceosi_freedomwall/freedomposts_screen.dart';
import 'screens/ceosi_company_app/screens/about_screen.dart';

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
      initialRoute: '/usersearchscreen',
      routes: {
        '/': (context) => LoginScreen(),
        '/homescreen': (context) => const HomeScreen(),
        '/registerscreen': (context) => RegisterScreen(),
        '/codelistscreen': (context) => const CodeListScreen(),
        '/freedompostsscreen': (context) => const FreedomPostsScreen(),
        '/announcementscreen': (context) => const AnnouncementScreen(),
        '/addannouncementscreen': (context) => const AddAnnouncementscreen(),
        '/teamscreen': (context) => const TeamScreen(),
        '/addteamscreen': (context) => const AddTeamScreen(),
        '/aboutscreen': (context) => const AboutScreen(),
        '/addfreedompostscreen': (context) => const AddFreedomPostScreen(),
        '/usersearchscreen': (context) => const UserSearchScreen(),
      },
      title: Labels.ceosiApp,
    );
  }
}
