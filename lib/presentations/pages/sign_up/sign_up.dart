import 'dart:convert';

import 'package:elibrary/presentations/provider/login.dart';
import 'package:elibrary/presentations/widget/snack_bar.dart';
import 'package:elibrary/presentations/widget/text.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:provider/provider.dart';

import '../../../source/api_constants.dart';
import '../../../source/color_constants.dart';
import '../../widget/button.dart';

class SignUpComponent extends StatelessWidget {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController genderController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        // Textform account
        textFormField(
            emailController, null, "example@gmail.com", "Email", (value) {}),
        // Textform password
        textFormField(
            passwordController, null, "sujdks123", "Password", (value) {}),
        Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            // Textform Name
            Expanded(
                child: textFormField(
                    nameController, null, "Suzan", "Name", (value) {})),
            const SizedBox(
              width: 20,
            ),
            // Textform Phone number
            Expanded(
              child: textFormField(phoneNumberController, null, "01696655872",
                  "Phone Number", (value) {}),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            // Textform Name
            Expanded(
              child: textFormField(
                  genderController, null, "Male", "Gender", (value) {}),
            ),
            const SizedBox(
              width: 20,
            ),
            // Textform Phone number
            const Spacer(
              flex: 1,
            )
          ],
        ),
        // Textform Address
        textFormField(
            addressController, null, "25 Califonia", "Address", (value) {}),
        const SizedBox(
          width: 20,
        ),
        // Button
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisSize: MainAxisSize.min,
          children: [
            // Textform Name
            Expanded(
                child: SizedBox(
                    width: 300,
                    height: 35,
                    child: elevatedButton(
                        "Sign up", 20, FontWeight.w800, colorTheme, () {
                      if (checkingNullInformation()) {
                        showSnackBar('Empty information', context);
                      } else {
                        // function sign up
                        signUpAction(
                            emailController.text,
                            passwordController.text,
                            nameController.text,
                            phoneNumberController.text,
                            genderController.text,
                            addressController.text);
                      }
                    }))),
            const SizedBox(
              width: 10,
            ),
            Expanded(
                child: SizedBox(
                    width: 300,
                    height: 35,
                    child: elevatedButton(
                        "Sign in", 20, FontWeight.w800, colorTheme, () {
                      Provider.of<LoginState>(context, listen: false)
                          .setPage(LoginEnum.login);
                    })))
          ],
        ),
      ],
    );
  }

  bool checkingNullInformation() =>
      emailController.text == "" ||
      passwordController == "" ||
      nameController == "" ||
      phoneNumberController == "" ||
      genderController == "" ||
      addressController == "";
}

signUpAction(account, password, name, phone, gender, address) async {
  Map<String, String> headers = {"Content-type": "application/json"};
  Map<String, dynamic> body = {
    'account': account,
    'password': password,
    'userType': "1",
    'name': name,
    'phone_number': phone,
    'gender': gender,
    'address': address,
  };
  Response response = await post(Uri.parse(api_regis),
      headers: headers, body: json.encode(body));
  String bodyRespone = response.body;
  print(bodyRespone);
}
