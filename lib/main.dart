import 'package:movieapp/pages/addpage.dart';
import 'package:flutter/material.dart';
import 'package:movieapp/services/constants.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:movieapp/pages/my_Home_Page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Movies APP',
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.white, primaryColor: kPrimaryColor),
      home: const MyHomePage(),
    );
  }
}
