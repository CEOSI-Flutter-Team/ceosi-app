import 'package:ceosi_app/screens/code_list_screen.dart';
import 'package:flutter/material.dart';
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
      theme: ThemeData(errorColor: Colors.white),
      title: Label.ceosiApp,
      initialRoute: '/',
      routes: {
        '/': (context) => const CodeListScreen(),
      },
    );
  }
}
