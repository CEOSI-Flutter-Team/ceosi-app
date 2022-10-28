import 'package:ceosi_app/lib/ceosi_rewards/screens/reward_home_screen.dart';
import 'package:ceosi_app/lib/constants/app_names.dart';
import 'package:ceosi_app/lib/screens/ceosi_freedomwall/freedomposts_screen.dart';
import 'package:ceosi_app/lib/screens/home_screen.dart';
import 'package:ceosi_app/lib/screens/login_screen.dart';
import 'package:ceosi_app/lib/screens/register_screen.dart';
import 'package:flutter/material.dart';

import 'ceosi_rewards/screens/view_item_screen.dart';

void main() {
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
      initialRoute: '/rewardviewitemscreen',
      routes: {
        '/': (context) => LoginScreen(),
        '/homescreen': (context) => const HomeScreen(),
        '/registerscreen': (context) => RegisterScreen(),
        '/freedompostsscreen': (context) => const FreedomPostsScreen(),
        '/rewardhomescreen': (context) => const RewardHomeScreen(),
        '/rewardviewitemscreen': (context) => const RewardViewItemScreen(),
      },
      title: carlApp,
    );
  }
}
