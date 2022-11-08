import 'package:ceosi_app/screens/ceosi_freedomwall/freedomposts_screen.dart';
import 'package:ceosi_app/screens/ceosi_rewards/admin_panel_screen.dart';
import 'package:ceosi_app/screens/ceosi_rewards/profile_screen.dart';
import 'package:ceosi_app/screens/ceosi_rewards/reward_home_screen.dart';
import 'package:ceosi_app/screens/home_screen.dart';
import 'package:ceosi_app/screens/login_screen.dart';
import 'package:ceosi_app/screens/register_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'constants/app_names.dart';
import 'screens/ceosi_rewards/view_item_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
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
      initialRoute: '/rewardhomescreen',
      routes: {
        '/': (context) => LoginScreen(),
        '/homescreen': (context) => const HomeScreen(),
        '/registerscreen': (context) => RegisterScreen(),
        '/freedompostsscreen': (context) => const FreedomPostsScreen(),
        '/rewardhomescreen': (context) => const RewardHomeScreen(),
        '/rewardviewitemscreen': (context) => const RewardViewItemScreen(),
        '/profilescreenreward': (context) => const ProfileScreenReward(),
        '/adminpanelscreenreward': (context) => const AdminPanelScreen(),
      },
      title: Labels().lanceApp,
    );
  }
}
