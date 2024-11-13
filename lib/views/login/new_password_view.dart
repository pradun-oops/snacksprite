import 'package:flutter/material.dart';
import 'package:snacksprite/common/color_extension.dart';
import 'package:snacksprite/common_widget/round_btn.dart';
import 'package:snacksprite/common_widget/round_textfield.dart';
import 'package:snacksprite/views/login/otp_view.dart';

class NewPasswordView extends StatefulWidget {
  const NewPasswordView({super.key});

  @override
  State<NewPasswordView> createState() => _NewPasswordViewState();
}

TextEditingController txtPassword = TextEditingController();

TextEditingController confirmPassword = TextEditingController();

class _NewPasswordViewState extends State<NewPasswordView> {
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: media.height,
        width: media.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/img/splash_bg.png'), fit: BoxFit.cover),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 20,
              horizontal: 25,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 64,
                ),
                Text(
                  "New Password",
                  style: TextStyle(
                      color: TColor.primaryText,
                      fontSize: 30,
                      fontWeight: FontWeight.w800),
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  "Enter a new password to create a \nnew password for your account",
                  style: TextStyle(
                      color: TColor.secondaryText,
                      fontSize: 14,
                      fontWeight: FontWeight.w700),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 30,
                ),
                RoundTextfield(
                  hintText: 'New Password',
                  controller: txtPassword,
                  keyboardType: TextInputType.visiblePassword,
                  obsecured: true,
                ),
                const SizedBox(
                  height: 30,
                ),
                RoundTextfield(
                  hintText: 'Confirm Password',
                  controller: confirmPassword,
                  keyboardType: TextInputType.visiblePassword,
                  obsecured: true,
                ),
                const SizedBox(
                  height: 30,
                ),
                RoundBtn(
                    title: 'Next',
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const OtpView(),
                        ),
                      );
                    }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
