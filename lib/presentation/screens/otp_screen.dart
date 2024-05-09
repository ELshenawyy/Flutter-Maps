import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_maps/utils/app_color.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OtpScreen extends StatelessWidget {
  // ignore: prefer_const_constructors_in_immutables
  OtpScreen({super.key});

   final phoneNumber = "";

  Widget _buildIntroText() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Verify your Phone Number",
          style: TextStyle(
            fontSize: 23,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Container(
          child: RichText(
            text: TextSpan(
              text: "Enter your 6 digit code numbers send to",
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                height: 1.4,
              ),
              children: <TextSpan>[
                TextSpan(
                  text: "$phoneNumber",
                  style: TextStyle(color: AppColor.blue),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildPinCodeFields(BuildContext context) {
    return Container(
      child: PinCodeTextField(
        cursorColor: Colors.black,
        length: 6,
        obscureText: false,
        animationType: AnimationType.fade,
        pinTheme: PinTheme(
          shape: PinCodeFieldShape.box,
          borderRadius: BorderRadius.circular(5),
          fieldHeight: 50,
          fieldWidth: 40,
          borderWidth: 1,
          activeColor: AppColor.blue,
          inactiveColor: AppColor.blue,
          inactiveFillColor: Colors.white,
          activeFillColor: AppColor.lightBlue,
          selectedColor: AppColor.blue,
          selectedFillColor: Colors.white,
        ),
        animationDuration: Duration(milliseconds: 300),
        backgroundColor: Colors.white,
        enableActiveFill: true,
        onCompleted: (v) {
          print("Completed");
        },
        onChanged: (value) {
          print(value);
        },
        appContext: context,
        autoFocus: true,
        keyboardType: TextInputType.number,
      ),
    );
  }

  Widget _buildNextButton() {
    return Align(
      alignment: Alignment.centerRight,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          minimumSize: const Size(110, 50),
          backgroundColor: Colors.black,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6),
          ),
        ),
        child: const Text(
          'Verify',
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          margin: EdgeInsets.symmetric(horizontal: 32, vertical: 88),
          child: Column(
            children: [
              _buildIntroText(),
              SizedBox(
                height: 88,
              ),
              _buildPinCodeFields(context),
              SizedBox(
                height: 60,
              ),
              _buildNextButton(),
            ],
          ),
        ),
      ),
    );
  }
}
