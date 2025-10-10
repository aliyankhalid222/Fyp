import  'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const authOutlineInputBorder = OutlineInputBorder(
      borderSide: BorderSide(color: Color(0xFF757575)),
      borderRadius: BorderRadius.all(Radius.circular(12)),
    );

    Widget otpBox() {
      return SizedBox(
        height: 64,
        width: 64,
        child: TextFormField(
          onChanged: (pin) {
            if (pin.isNotEmpty) {
              FocusScope.of(context).nextFocus();
            }
          },
          keyboardType: TextInputType.number,
          textInputAction: TextInputAction.next,
          inputFormatters: [
            LengthLimitingTextInputFormatter(1),
            FilteringTextInputFormatter.digitsOnly,
          ],
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.titleLarge,
          decoration: InputDecoration(
            hintText: "0",
            hintStyle: const TextStyle(color: Color(0xFF757575)),
            border: authOutlineInputBorder,
            enabledBorder: authOutlineInputBorder,
            focusedBorder: authOutlineInputBorder.copyWith(
              borderSide: const BorderSide(color: Color(0xff125AC2)),
            ),
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              /// Top Image
              Image.asset(
                "images/Rectangle 1.png",
                width: double.infinity,
                fit: BoxFit.cover,
              ),

              SizedBox(height: MediaQuery.of(context).size.height * 0.05),

              /// Title
              const Text(
                "OTP Verification",
                style: TextStyle(
                  color: Color(0xff125AC2),
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 8),

              /// Subtitle
              const Text(
                "We sent your code to +1 898 860 * \nThis code will expire in 00:30",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  color: Colors.black54,
                  fontSize: 15,
                ),
              ),

              SizedBox(height: MediaQuery.of(context).size.height * 0.05),

              /// OTP Row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  otpBox(),
                  otpBox(),
                  otpBox(),
                  otpBox(),
                ],
              ),

              const SizedBox(height: 24),

              /// Continue Button
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  backgroundColor: const Color(0xff125AC2),
                  foregroundColor: Colors.white,
                  minimumSize: const Size(double.infinity, 48),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(16)),
                  ),
                ),
                child: const Text("Continue",
                  style:TextStyle(
                    fontSize: 20
                  ),),
              ),

              SizedBox(height: MediaQuery.of(context).size.height * 0.03),

              /// Resend Button
              TextButton(
                onPressed: () {},
                child: const Text(
                  "Resend OTP Code",
                  style: TextStyle(color: Color(0xFF757575),fontSize: 20,
                  fontWeight: FontWeight.w500
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}