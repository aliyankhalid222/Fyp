import 'package:flutter/material.dart';
// import 'package:fyp/Screens/forgot/otp.dart';
import 'package:fyp/forgot/otp.dart';

// ignore: camel_case_types
class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

// ignore: camel_case_types
class _ForgotPasswordState extends State<ForgotPassword> {
  final _formKey = GlobalKey<FormState>();

  // controller for text field
  final TextEditingController forgotPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            return SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                children: [
                  Image.asset(
                    "images/Rectangle 1.png",
                    width: double.infinity,
                    fit: BoxFit.contain,),
                  SizedBox(height: constraints.maxHeight * 0.1),
                  Text(
                      "Forgot Password",
                      style: Theme.of(context)
                          .textTheme
                          .headlineSmall!
                          .copyWith(
                        fontSize: 30,
                        fontWeight: FontWeight.w900,
                        color: Color(0xff125AC2),
                      )),
                  Padding(
                    padding: const EdgeInsets.only(top : 8.0),
                    child: Center(
                      child: Text(
                        "Recover your password if you have forgot the password!",
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                            fontWeight: FontWeight.w400,
                            // ignore: deprecated_member_use
                            color: Colors.black54,
                            fontSize: 15
                        ),
                      ),
                    ),
                  ),

                  SizedBox(height: constraints.maxHeight * 0.05),
                  Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        TextFormField(
                          // controller: email,
                          decoration: const InputDecoration(
                            hintText: 'Email Address',
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 16.0 * 1.5, vertical: 16.0),
                            border: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xff125AC2)),
                              borderRadius:
                              BorderRadius.all(Radius.circular(16)),
                            ),
                          ),
                          keyboardType: TextInputType.phone,
                          onSaved: (phone) {
                            // Save it
                          },
                        ),
                        SizedBox(height: constraints.maxHeight * 0.04),
                        ElevatedButton(
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              _formKey.currentState!.save();
                              // Navigate to the main screen
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>OtpScreen()));
                            }
                          },
                          style: ElevatedButton.styleFrom(
                            elevation: 0,
                            backgroundColor: const Color(0xff125AC2),
                            foregroundColor: Colors.white,
                            minimumSize: const Size(double.infinity, 48),
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(16)),
                            ),
                          ),
                          child: const Text("Submit"),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}