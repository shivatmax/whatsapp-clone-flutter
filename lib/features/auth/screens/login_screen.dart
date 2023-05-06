import 'package:flutter/material.dart';

import '../../../common/utils/colors.dart';

class LoginScreen extends StatefulWidget {
  static const routeName = "/login-Screen";
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Enter your phone number'),
          elevation: 0,
          backgroundColor: backgroundColor,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Center(
                child: Text('WhatsApp will need to verify your phone number')),
            const SizedBox(height: 10),
            TextButton(
              onPressed: () {},
              child: const Text('Pick Country'),
            )
          ],
        ));
  }
}
