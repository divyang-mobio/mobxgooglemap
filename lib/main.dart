import 'package:flutter/material.dart';
import 'controller/mobx_controller.dart';
import 'package:provider/provider.dart';
import 'screens/main_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Provider<LocationController>(
      create: (context) => LocationController()..getData(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const MyHomePage(title: 'Mobx Google map Demo'),
      ),
    );
  }
}
