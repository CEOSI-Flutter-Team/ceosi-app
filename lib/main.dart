import 'package:ceosi_app/screens/ceosi_flutter_catalog/catalog_entries_screen.dart';
import 'package:ceosi_app/screens/ceosi_freedomwall/add_freedom_post_screen.dart';
import 'package:ceosi_app/screens/ceosi_flutter_catalog/source_code_screen.dart';
import 'package:ceosi_app/screens/ceosi_company_app/add_announcement_screen.dart';
import 'package:ceosi_app/screens/ceosi_company_app/add_team_screen.dart';
import 'package:ceosi_app/screens/ceosi_company_app/event_calendar_screen.dart';
import 'package:ceosi_app/screens/ceosi_company_app/team_screen.dart';
import 'package:ceosi_app/screens/ceosi_freedomwall/freedomposts_screen.dart';
import 'package:ceosi_app/screens/ceosi_freedomwall/admin_posts_data_screen.dart';
import 'package:ceosi_app/screens/ceosi_freedomwall/pie_chart_report_screen.dart';
import 'package:ceosi_app/screens/ceosi_freedomwall/piechart_search_screen.dart';
import 'package:ceosi_app/screens/ceosi_freedomwall/user_search_screen.dart';
import 'package:ceosi_app/screens/ceosi_freedomwall/user_single_freedom_post_screen.dart';
import 'package:ceosi_app/screens/login_screen.dart';
import 'package:ceosi_app/screens/home_screen.dart';
import 'package:ceosi_app/screens/register_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'screens/ceosi_company_app/about_screen.dart';
import 'screens/ceosi_company_app/announcement_screen.dart';
import 'constants/labels.dart';
import 'screens/ceosi_rewards/admin_panel_screen.dart';
import 'screens/ceosi_rewards/profile_screen.dart';
import 'screens/ceosi_rewards/reward_home_screen.dart';
import 'screens/ceosi_rewards/view_item_screen.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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
      initialRoute: '/',
      routes: {
        '/': (context) => const LoginScreen(),
        '/homescreen': (context) => const HomeScreen(),
        '/registerscreen': (context) => const RegisterScreen(),
        '/announcementscreen': (context) => const AnnouncementScreen(),
        '/addannouncementscreen': (context) => const AddAnnouncementScreen(),
        '/teamscreen': (context) => const TeamScreen(),
        '/addteamscreen': (context) => const AddTeamScreen(),
        '/aboutscreen': (context) => const AboutScreen(),
        '/freedompostsscreen': (context) => const FreedomPostsScreen(),
        '/addfreedompostscreen': (context) => const AddFreedomPostScreen(),
        '/catalogentriesscreen': (context) => const CatalogEntriesScreen(),
        '/sourcecodescreen': (context) => const SourceCodeScreen(),
        '/eventcalendarscreen': (context) => const EventCalendarScreen(),
        '/usersearchscreen': (context) => const UserSearchScreen(),
        '/piechartreportscreen': (context) => const PieChartReportScreen(),
        '/piechartsearchscreen': (context) => const PieChartSearchScreen(),
        '/rewardhomescreen': (context) => const RewardHomeScreen(),
        '/rewardviewitemscreen': (context) => const RewardViewItemScreen(),
        '/profilescreenreward': (context) => const ProfileScreenReward(),
        '/adminpanelscreenreward': (context) => const AdminPanelScreen(),
        '/adminpostsdatascreen': (context) => const AdminPostsDataScreen(),
        '/usersinglefreedompostscreen': (context) =>
            const UserSingleFreedomPostScreen(),
      },
      title: Labels.ceosiApp,
    );
  }
}
