import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_Container.dart';
import '../widgets/custombutton.dart';

void passwordRecovery({required BuildContext context}) => showDialog(
    context: context,
    builder: (_) => AlertDialog(
          backgroundColor: const Color(0xffededed),
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10.0))),
          content: Builder(
            builder: (context) {
              var height = MediaQuery.of(context).size.height;
              var width = MediaQuery.of(context).size.width;

              return Container(
                  margin: const EdgeInsets.only(top: 8),
                  height: height - 500,
                  width: width - 110,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'استعادة كلمة المرور',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        customContainer(
                          containerColor: Colors.white,
                          height: 65,
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
                          height: 10,
                        ),
                        customContainer(
                          child: TypeButton.elevatedButton(
                            onPressed: () {},
                            text: 'ارسل رمز التفعيل',
                            buttonColor: Colors.red,
                          ),
                          containerColor: Colors.red,
                          width: 300,
                          height: 52,
                        ),
                      ]));
            },
          ),
        ));
