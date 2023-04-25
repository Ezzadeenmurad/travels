// import 'package:country_code_picker/country_code_picker.dart';
// ignore_for_file: prefer_const_constructors

import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';

import '../custom_Container.dart';
import '../custom_text.dart';
import '../custom_button.dart';

class PasswordRecovery extends StatelessWidget {
  const PasswordRecovery({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: const Color(0xffededed),
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0))),
      content: Builder(
        builder: (context) {
          var height = MediaQuery.of(context).size.height;
          var width = MediaQuery.of(context).size.width;

          return SizedBox(
              // margin: const EdgeInsets.only(top: 8),
              height: height - 420,
              width: width - 180,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    customTextSize20(text: 'استعادة كلمة المرور'),
                    customContainer(
                      containerColor: Colors.white,
                      height: 40,
                      child: Row(
                        children: [
                          const SizedBox(
                            width: 120,
                            child: CountryCodePicker(
                              showDropDownButton: true,
                              padding: EdgeInsets.only(
                                  top: 0, bottom: 0, right: 0, left: 0),
                              initialSelection: 'YE',
                              showOnlyCountryWhenClosed: false,
                              showFlagMain: false,
                              textStyle: TextStyle(
                                color: Colors.red,
                                fontSize: 20,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 110,
                            child: TextFormField(
                              textAlign: TextAlign.start,
                              decoration: const InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "7xxxxxxxx",
                                  hintStyle: TextStyle(
                                      fontSize: 20, color: Colors.grey)),
                              style: const TextStyle(
                                  fontSize: 20, color: Colors.grey),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TypeButton.elevatedButton(
                      minimumSize: Size(double.infinity, 40),
                      onPressed: () {},
                      child: customTextSize20(text: 'ارسل رمز التفعيل'),
                      buttonColor: Colors.red,
                    ),
                  ]));
        },
      ),
    );
  }
}
