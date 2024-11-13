import 'package:flutter/material.dart';
import 'package:snacksprite/common/color_extension.dart';
import 'package:snacksprite/common_widget/app_name.dart';
import 'package:snacksprite/common_widget/round_btn.dart';
import 'package:snacksprite/views/login/login_view.dart';
import 'package:snacksprite/views/login/sign_up_view.dart';

class WelcomeView extends StatefulWidget {
  const WelcomeView({super.key});

  @override
  State<WelcomeView> createState() => _WelcomeViewState();
}

class _WelcomeViewState extends State<WelcomeView> {
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
        child: Column(
          children: [
            Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Image.asset(
                  'assets/img/welcome_top_shape.png',
                  width: media.width,
                ),
                CircleAvatar(
                  radius: 80,
                  child: ClipOval(
                    child: Image.asset(
                      'assets/img/app_logo.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
            const AppName(),
            SizedBox(
              height: media.width * 0.1,
            ),
            Text(
              'Discover the best food over 1000+\n restaurants and fast delivery...',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: TColor.secondaryText,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: media.width * 0.1,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: RoundBtn(
                  title: 'Login',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LoginView(),
                      ),
                    );
                  }),
            ),
            SizedBox(
              height: media.width * 0.1,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: RoundBtn(
                  title: 'Create an Account',
                  type: RoundButtonType.textPrimary,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SignUpView(),
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
