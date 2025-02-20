import 'package:cash_mobile_v1/core/utils/responsive.dart';
import 'package:cash_mobile_v1/features/presentation/screens/home_screen.dart';
import 'package:cash_mobile_v1/features/presentation/screens/login_screen.dart';
import 'package:cash_mobile_v1/features/presentation/widgets/main_elevated_button.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class VerificationScreen extends StatelessWidget {
  const VerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SizedBox(
        height: MediaQueryValues.fullHeight(context),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: SpacingHeight.spacingByHeight15(context))),
              Image.asset("assets/MTN_Logo.svg.png",
                  height: MediaQueryValues.fullHeight(context) / 10),
              Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: SpacingHeight.spacingByHeight15(context))),
              Text(
                "Verification Code",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
              ),
              Text(
                "An SMS with the code was sent to:\n+9639999999",
                textAlign: TextAlign.center,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: 15, color: Colors.grey[500]),
              ),
              Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: SpacingHeight.spacingByHeight15(context))),
              SizedBox(
                  width: MediaQueryValues.fullWidth(context),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: SpacingWidth.spacingByWidth15(context)),
                    child: PinCodeTextField(
                      obscuringWidget: CircleAvatar(backgroundColor: Colors.yellow.shade800,),
                      obscureText: true,
                      autoDismissKeyboard: false,
                      showCursor: true,
                      pinTheme: PinTheme(
                          fieldWidth: MediaQueryValues.fullWidth(context) / 10,

                          selectedColor: Colors.yellow.shade800,
                          inactiveColor: Colors.blue.shade800,
                          activeColor: Colors.yellow.shade800,
                          shape: PinCodeFieldShape.circle),
                      autoFocus: true,
                      appContext: context,
                      length: 6,
                      keyboardType: TextInputType.number,
                      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                    ),
                  )),
              RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(children: <TextSpan>[
                    TextSpan(
                        text: "Didn't receive a verification code?",
                        style: TextStyle(color: Colors.grey[500])),
                    TextSpan(
                        text: "\nRequest a new code",
                        recognizer: TapGestureRecognizer()..onTap = () {},
                        style: TextStyle(
                            color: Colors.grey[500],
                            decoration: TextDecoration.underline))
                  ])),
              Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: SpacingHeight.spacingByHeight15(context))),
              MainElevatedButton(text: "Continue",onpressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomeScreen(),));

              },)
            ],
          ),
        ),
      )),
    );
  }
}
