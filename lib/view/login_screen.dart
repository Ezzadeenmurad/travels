import 'package:flutter/material.dart';

import '../widgets/custom_Container.dart';
import '../widgets/custom_text_form_shadw.dart';
import '../widgets/custombutton.dart';
import 'password_recovery.dart';

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
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: (() {
                        passwordRecovery(context: context);
                      }),
                      child: const Text(
                        "نسيت كلمة المرور",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        const Text(
                          "تذكرني",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Checkbox(
                          value: false,
                          onChanged: (value) {},
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: (() {}),
                      child: const Text(
                        "انشاء حساب جديد",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.red,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    const Text(
                      'ليس لديك حساب ؟',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                customContainer(
                  child: TypeButton.elevatedButton(
                    onPressed: () {},
                    text: "دخول",
                    buttonColor: Color(0xffff474f),
                  ),
                  containerColor: Colors.white,
                  width: double.infinity,
                  height: 60,
                ),
                SizedBox(
                  height: 15,
                ),
                customContainer(
                  child: TypeButton.outlinedButton(
                    onPressed: () {},
                    text: "تخطي",
                  ),
                  height: 60,
                  width: double.infinity,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
