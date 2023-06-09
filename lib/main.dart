import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:whatsap/common/utils/colors.dart';
import 'package:whatsap/features/landing/screens/landing_screen.dart';
import 'package:whatsap/firebase_options.dart';
import 'package:whatsap/router.dart';
import 'package:whatsap/screens/mobile_layout_screen.dart';
import 'package:whatsap/screens/web_layout_screen.dart';
import 'package:whatsap/common/utils/responsive_layout.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Whatsapp UI',
      theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: backgroundColor,
          appBarTheme: const AppBarTheme(
            color: appBarColor,
          )),
      onGenerateRoute: (settings) => generateRoute(settings),
      home: const LandingScreen(),
      // const ResponsiveLayout(
      //   mobileScreenLayout: MobileLayoutScreen(),
      //   webScreenLayout: WebLayoutScreen(),
      // ),
    );
  }
}
