import 'package:flutter/material.dart';
import 'package:otp_pin_field/otp_pin_field.dart';
import 'package:snacksprite/common/color_extension.dart';
import 'package:snacksprite/common_widget/round_btn.dart';

class OtpView extends StatefulWidget {
  const OtpView({super.key});

  @override
  State<OtpView> createState() => _OtpViewState();
}

class _OtpViewState extends State<OtpView> {
  final _otpPinFieldController = GlobalKey<OtpPinFieldState>();
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
                  "We have sent an OTP\n to your mobile number",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: TColor.primaryText,
                      fontSize: 30,
                      fontWeight: FontWeight.w800),
                ),
                const SizedBox(
                  height: 30,
                ),
                OtpPinField(
                  key: _otpPinFieldController,

                  autoFillEnable: false,

                  textInputAction: TextInputAction.done,

                  onSubmit: (text) {
                    debugPrint('Entered pin is $text');
                  },
                  onChange: (text) {
                    debugPrint('Enter on change pin is $text');
                  },
                  onCodeChanged: (code) {
                    debugPrint('onCodeChanged  is $code');
                  },

                  otpPinFieldStyle: const OtpPinFieldStyle(
                    showHintText: false,
                    activeFieldBorderColor: Colors.black,
                    defaultFieldBackgroundColor: Colors.white,
                    activeFieldBackgroundColor: Colors.white,
                    fieldBorderWidth: 3,
                  ),
                  maxLength: 4,

                  showCursor: true,

                  cursorColor: Colors.black,

                  upperChild: const Column(
                    children: [
                      SizedBox(height: 30),
                      Icon(Icons.flutter_dash_outlined, size: 150),
                      SizedBox(height: 20),
                    ],
                  ),
                  // 123456

                  cursorWidth: 3,

                  mainAxisAlignment: MainAxisAlignment.center,

                  otpPinFieldDecoration:
                      OtpPinFieldDecoration.defaultPinBoxDecoration,
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  "Please enter the OTP to confirm",
                  style: TextStyle(
                      color: TColor.secondaryText,
                      fontSize: 16,
                      fontWeight: FontWeight.w700),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 30,
                ),
                RoundBtn(title: 'Next', onPressed: () {}),
                const SizedBox(
                  height: 20,
                ),
                TextButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "Didn't Received?",
                        style: TextStyle(
                            color: TColor.secondaryText,
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        "Click here",
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
