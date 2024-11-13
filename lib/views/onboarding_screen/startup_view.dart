import 'package:flutter/material.dart';
import 'package:snacksprite/views/login/welcome_view.dart';

class StartupView extends StatefulWidget {
  const StartupView({super.key});

  @override
  State<StartupView> createState() => _StartupViewState();
}

class _StartupViewState extends State<StartupView> {
  @override
  void initState() {
    super.initState();
    goToWelcomePage();
  }

  void goToWelcomePage() async {
    await Future.delayed(
      const Duration(
        seconds: 3,
      ),
    );
    welcomePage();
  }

  void welcomePage() {
    Navigator.push(
      // ignore: use_build_context_synchronously
      context,
      MaterialPageRoute(
        builder: (context) => const WelcomeView(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Image.asset(
            'assets/img/splash_bg.png',
            width: media.width,
            height: media.height,
            fit: BoxFit.cover,
          ),
          CircleAvatar(
            radius: 125,
            child: ClipOval(
              child: Image.asset(
                'assets/img/app_logo.png',
                width: media.width * 0.7,
                height: media.height * 0.7,
                fit: BoxFit.contain,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 300.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Snack',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.deepOrange,
                      fontFamily: 'Metropolis',
                      fontStyle: FontStyle.italic),
                ),
                Text(
                  'Sprite',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontFamily: 'Metropolis',
                      fontStyle: FontStyle.italic),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
