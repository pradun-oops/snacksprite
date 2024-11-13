import 'package:flutter/material.dart';
import 'package:snacksprite/common/color_extension.dart';
import 'package:snacksprite/common_widget/round_btn.dart';
import 'package:snacksprite/common_widget/round_icon_button.dart';
import 'package:snacksprite/common_widget/round_textfield.dart';
import 'package:snacksprite/views/login/reset_password.dart';
import 'package:snacksprite/views/login/sign_up_view.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
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
                  "Login",
                  style: TextStyle(
                      color: TColor.primaryText,
                      fontSize: 30,
                      fontWeight: FontWeight.w800),
                ),
                Text(
                  "Add your details to login",
                  style: TextStyle(
                      color: TColor.secondaryText,
                      fontSize: 14,
                      fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  height: 25,
                ),
                RoundTextfield(
                  hintText: 'Your Email',
                  controller: txtEmail,
                  keyboardType: TextInputType.emailAddress,
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
                RoundBtn(title: 'Login', onPressed: () {}),
                const SizedBox(
                  height: 4,
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ResetPassword(),
                      ),
                    );
                  },
                  child: Text(
                    "Forgot your password?",
                    style: TextStyle(
                        color: TColor.secondaryText,
                        fontSize: 14,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Text(
                  "or Login With",
                  style: TextStyle(
                      color: TColor.secondaryText,
                      fontSize: 14,
                      fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  height: 30,
                ),
                RoundIconButton(
                    onPressed: () {},
                    title: 'Login with Facebook',
                    icon: 'assets/img/facebook_logo.png',
                    color: Colors.blueAccent),
                const SizedBox(
                  height: 30,
                ),
                RoundIconButton(
                  onPressed: () {},
                  title: 'Login with Google',
                  icon: 'assets/img/google_logo.png',
                  color: Colors.redAccent,
                ),
                const SizedBox(
                  height: 50,
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SignUpView(),
                      ),
                    );
                  },
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "Don't have an account?",
                        style: TextStyle(
                            color: TColor.secondaryText,
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        "Sign Up",
                        style: TextStyle(
                            color: TColor.primary,
                            fontSize: 16,
                            fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
