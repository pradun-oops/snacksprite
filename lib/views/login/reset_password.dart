import 'package:flutter/material.dart';
import 'package:snacksprite/common/color_extension.dart';
import 'package:snacksprite/common_widget/round_btn.dart';
import 'package:snacksprite/common_widget/round_textfield.dart';
import 'package:snacksprite/views/login/new_password_view.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({super.key});

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  TextEditingController txtEmail = TextEditingController();

  TextEditingController txtPassword = TextEditingController();

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
                  "Reset Password",
                  style: TextStyle(
                      color: TColor.primaryText,
                      fontSize: 30,
                      fontWeight: FontWeight.w800),
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  "Please enter your email to recieve a link\n to create a new password via email",
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
                  hintText: 'Email',
                  controller: txtEmail,
                  keyboardType: TextInputType.emailAddress,
                ),
                const SizedBox(
                  height: 30,
                ),
                RoundBtn(
                    title: 'Send',
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const NewPasswordView(),
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
