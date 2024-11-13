import 'package:flutter/material.dart';
import 'package:snacksprite/common/color_extension.dart';
import 'package:snacksprite/common_widget/round_btn.dart';
import 'package:snacksprite/common_widget/round_textfield.dart';
import 'package:snacksprite/views/login/login_view.dart';
import 'package:snacksprite/views/login/otp_view.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _LoginViewState();
}

class _LoginViewState extends State<SignUpView> {
  TextEditingController txtName = TextEditingController();
  TextEditingController txtEmail = TextEditingController();
  TextEditingController txtMobile = TextEditingController();
  TextEditingController txtAddress = TextEditingController();
  TextEditingController txtPassword = TextEditingController();
  TextEditingController txtConfirmPassword = TextEditingController();
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
                  "Sign Up",
                  style: TextStyle(
                      color: TColor.primaryText,
                      fontSize: 30,
                      fontWeight: FontWeight.w800),
                ),
                Text(
                  "Add your details to Sign Up",
                  style: TextStyle(
                      color: TColor.secondaryText,
                      fontSize: 14,
                      fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  height: 25,
                ),
                RoundTextfield(
                  hintText: 'Name',
                  controller: txtName,
                  keyboardType: TextInputType.name,
                ),
                const SizedBox(
                  height: 25,
                ),
                RoundTextfield(
                  hintText: 'Email',
                  controller: txtEmail,
                  keyboardType: TextInputType.emailAddress,
                ),
                const SizedBox(
                  height: 25,
                ),
                RoundTextfield(
                  hintText: 'Mobile No.',
                  controller: txtMobile,
                  keyboardType: TextInputType.phone,
                ),
                const SizedBox(
                  height: 25,
                ),
                RoundTextfield(
                  hintText: 'Address',
                  controller: txtAddress,
                  keyboardType: TextInputType.streetAddress,
                ),
                const SizedBox(
                  height: 25,
                ),
                RoundTextfield(
                  hintText: 'Password',
                  controller: txtPassword,
                  keyboardType: TextInputType.visiblePassword,
                  obsecured: true,
                ),
                const SizedBox(
                  height: 25,
                ),
                RoundTextfield(
                  hintText: 'Confirm password',
                  controller: txtConfirmPassword,
                  keyboardType: TextInputType.visiblePassword,
                  obsecured: true,
                ),
                const SizedBox(
                  height: 25,
                ),
                RoundBtn(
                    title: 'Sign Up',
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const OtpView(),
                        ),
                      );
                    }),
                const SizedBox(
                  height: 4,
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LoginView(),
                      ),
                    );
                  },
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "Already have an account?",
                        style: TextStyle(
                            color: TColor.secondaryText,
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        "Login",
                        style: TextStyle(
                            color: TColor.primary,
                            fontSize: 16,
                            fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
