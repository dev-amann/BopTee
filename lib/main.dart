import 'package:flutter/material.dart';

import 'views/dashboard.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: const Color(0xFF040F4F),
        fontFamily: 'Poppins'
      ),
      debugShowCheckedModeBanner: false,
      home: const Dashboard(),
    );
  }
}
