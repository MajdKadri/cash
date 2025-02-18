import 'package:cash_mobile_v1/core/utils/responsive.dart';
import 'package:cash_mobile_v1/features/presentation/screens/verification_screen.dart';
import 'package:cash_mobile_v1/features/presentation/widgets/global_textfield.dart';
import 'package:cash_mobile_v1/features/presentation/widgets/main_elevated_button.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  TextEditingController _numberController = TextEditingController();
  TextEditingController _nationalIdController = TextEditingController();

  LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    print(screenHeight);

    return Scaffold(
      body: SafeArea(
          child: SizedBox(
        height: screenHeight,
        width: screenWidth,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              // Padding(padding: EdgeInsets.only(top: Responsive1.spacingByHeight1(context))),
              Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: SpacingHeight.spacingByHeight15(context))),

              Image.asset("assets/MTN_Logo.svg.png", height: MediaQueryValues.fullHeight(context) / 10),

              Text(
                'Cash Mobile',
                style: TextStyle(
                    fontSize: MediaQueryValues.fullHeight(context) / 50,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w500),
              ),
              Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: SpacingHeight.spacingByHeight15(context))),

              Text(
                "Mobile Number",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
              ),

              Text(
                "Enter your mobile number\nwe will send sms with the code",
                textAlign: TextAlign.center,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: 15, color: Colors.grey[500]),
              ),
              Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: SpacingHeight.spacingByHeight1(context))),
              SizedBox(
                width: screenWidth / 1.2,
                child: TextField(
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.yellow.shade800)),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),

                    ),
                  ),
                ),
              ),

              Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: SpacingHeight.spacingByHeight15(context))),

              Text(
                "Document ID",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
              ),
              Text(
                "National ID / Passport",
                style: TextStyle(fontSize: 15, color: Colors.grey[500]),
              ),
              Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: SpacingHeight.spacingByHeight1(context))),
              SizedBox(
                width: screenWidth / 1.2,
                child:GlobalTextfield(controller: _nationalIdController)
              ),

              Padding(
                padding: EdgeInsets.symmetric(
                    vertical: SpacingHeight.spacingByHeight15(context),
                    horizontal: SpacingWidth.spacingByWidth8(context)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'قم بالتبديل إلى اللغة العربية',
                      style: TextStyle(decoration: TextDecoration.underline),
                    ),
                  ],
                ),
              ),

              MainElevatedButton(text: 'Continue', onpressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => VerificationScreen(),));
              }, )
            ],
          ),
        ),
      )),
    );
  }
}
