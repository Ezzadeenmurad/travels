import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/check_box_controller.dart';
import '../core/utils/assets_manger.dart';
import '../widgets/custom_dialog/custom_password_recovery.dart';
import '../widgets/custom_text.dart';

import '../widgets/custom_text_form.dart';
import '../widgets/custom_button.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final CheckBoxController checkBoxController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 30, left: 30),
            child: Column(
              children: [
                Container(
                    decoration: const BoxDecoration(
                        border: Border(
                            bottom:
                                BorderSide(color: Colors.grey, width: 0.5))),
                    child: Image.asset(ImgAssets.loginBus, height: 165)),
                const SizedBox(
                  height: 25,
                ),
                Column(
                  children: [
                    const Text(
                      'تسجيل الدخول',
                      style: TextStyle(fontSize: 25, color: Colors.red),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    customTextFieldShadow(hint: "ادخل رقم الجوال"),
                    const SizedBox(
                      height: 15,
                    ),
                    customTextFieldShadow(hint: "كلمة المرور"),
                    const SizedBox(
                      height: 13,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                            onTap: (() {
                              Get.dialog<String>(const PasswordRecovery(),
                                  barrierDismissible: false);
                            }),
                            child: customText18(text: "نسيت كلمة المرور")),
                        Row(
                          children: [
                            customText18(text: "تذكرني"),
                            Obx(
                              () => Checkbox(
                                checkColor: Colors.white,
                                activeColor: Colors.red,
                                value: checkBoxController.isRemember.value,
                                onChanged: (value) {
                                  checkBoxController.isRememberCheck(value);
                                },
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 7,
                    ),
                    Row(
                      children: [
                        InkWell(
                          onTap: (() {}),
                          child: const Expanded(
                            child: Text(
                              "انشاء حساب جديد",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.red,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        const Expanded(
                          child: Text(
                            'ليس لديك حساب ؟',
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    TypeButton.elevatedButton(
                      onPressed: () {},
                      child: customText18(text: "دخول"),
                      buttonColor: const Color(0xffff474f),
                      minimumSize: const Size(double.infinity, 45),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TypeButton.outlinedButton(
                      onPressed: () {},
                      child: customText18(text: "تخطي"),
                      textColor: Colors.blue,
                      minimumSize: const Size(double.infinity, 45),
                      side: const BorderSide(width: 1.5, color: Colors.blue),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
