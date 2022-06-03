import 'package:elibrary/presentations/widget/text.dart';
import 'package:flutter/material.dart';

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
        // Button Sign up
        SizedBox(
            width: 300,
            height: 35,
            child: elevatedButton(
                "Sign up", 20, FontWeight.w800, colorTheme, () {}))
      ],
    );
  }
}
