import 'package:flutter/material.dart';
import 'package:image_search_app2/router.dart';
import 'package:provider/provider.dart';

import 'di/di_setup.dart';
import 'ui/main/main_screen.dart';
import 'ui/main/main_view_model.dart';

void main() {
  diSetup();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    );
  }
}
