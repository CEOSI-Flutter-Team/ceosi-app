import 'package:ceosi_app/constants/app_names.dart';
import 'package:ceosi_app/screens/ceosi_freedomwall/freedomposts_screen.dart';
import 'package:ceosi_app/screens/home_screen.dart';
import 'package:ceosi_app/screens/login_screen.dart';
import 'package:ceosi_app/screens/register_screen.dart';
import 'package:flutter/material.dart';

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
      initialRoute: '/freedompostsscreen',
      routes: {
        '/': (context) => LoginScreen(),
        '/homescreen': (context) => const HomeScreen(),
        '/registerscreen': (context) => RegisterScreen(),
        '/freedompostsscreen': (context) => const FreedomPostsScreen(),
      },
      title: carlApp,
    );
  }
}
