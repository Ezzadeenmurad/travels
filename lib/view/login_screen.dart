import 'package:flutter/material.dart';

import '../widgets/custom_text_form_shadw.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.only(right: 40, left: 40),
        child: Column(
          children: [
            Image.asset('assets/images/mrt7al.jpg'),
            const Text(
              'تسجيل الدخول',
              style: TextStyle(
                fontSize: 25,
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Column(
              children: [
                customTextFieldShadow(hint: "ادخل رقم الجوال"),
                const SizedBox(
                  height: 15,
                ),
                customTextFieldShadow(hint: "كلمة المرور"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
