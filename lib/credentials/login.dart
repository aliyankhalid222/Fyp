import 'package:flutter/material.dart';
// import 'package:fyp/Screens/forgot/forgot.dart' show ForgotPassword;
// import 'package:fyp/Screens/home/home.dart';
// import 'package:fyp/Screens/signup.dart' show Sign_up;
import 'package:fyp/credentials/singup.dart';
import 'package:fyp/forgot/forgot.dart';
import 'package:fyp/main_screens/home.dart';

// ignore: camel_case_types
class login_screen extends StatefulWidget {
  const login_screen({super.key});

  @override
  State<login_screen> createState() => _login_screenState();
}

// ignore: camel_case_types
class _login_screenState extends State<login_screen> {
  final _formKey = GlobalKey<FormState>();

  // Controllers
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    const borderRadius = BorderRadius.all(Radius.circular(30)); // ✅ common radius

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
                    fit: BoxFit.contain,
                  ),
                  SizedBox(height: constraints.maxHeight * 0.1),

                  /// Welcome Back
                  Text(
                    "Welcome Back",
                    style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                      fontWeight: FontWeight.w900,
                      color: const Color(0xff125AC2),
                      fontSize: 35,
                    ),
                  ),

                  Text(
                    "login Here",
                    style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                      fontWeight: FontWeight.w400,
                      // ignore: deprecated_member_use
                      color: Colors.black.withOpacity(0.5),
                      fontSize: 25,
                    ),
                  ),

                  SizedBox(height: constraints.maxHeight * 0.05),

                  Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        /// Phone
                        TextFormField(
                          controller: email,
                          decoration: const InputDecoration(
                            hintText: 'Phone',
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 24.0, vertical: 16.0),
                            border: OutlineInputBorder(
                                borderSide: BorderSide(color: Color(0xff125AC2)),
                                borderRadius: BorderRadius.all(Radius.circular(16))
                            ),
                          ),
                          keyboardType: TextInputType.phone,
                        ),

                        /// Password
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 16.0),
                          child: TextFormField(
                            controller: password,
                            obscureText: true,
                            decoration: const InputDecoration(
                              hintText: 'Password',
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 24.0, vertical: 16.0),
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(color: Color(0xff125AC2)),
                                  borderRadius: BorderRadius.all(Radius.circular(16))
                              ),
                            ),
                          ),
                        ),

                        /// Sign In Button
                        ElevatedButton(
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              _formKey.currentState!.save();
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => home_screen()));
                            }
                          },
                          style: ElevatedButton.styleFrom(
                            elevation: 0,
                            backgroundColor: const Color(0xff125AC2),
                            foregroundColor: Colors.white,
                            minimumSize: const Size(double.infinity, 48),
                            shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(16))
                            ),
                          ),
                          child: const Text("Sign in",style: TextStyle(
                            fontSize: 20
                          ),),
                        ),

                        /// Forgot Password
                        Padding(
                          padding: const EdgeInsets.only(left: 200),
                          child: TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          ForgotPassword()));
                            },
                            child: Text(
                              'Forgot Password?',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                color: Theme.of(context)
                                    .textTheme
                                    .bodyLarge!
                                    .color!
                                // ignore: deprecated_member_use
                                    .withOpacity(0.64),
                                fontSize: 18,
                                fontWeight: FontWeight.w500
                              ),
                            ),
                          ),
                        ),

                        SizedBox(height: constraints.maxHeight * 0.3),

                        /// Sign Up
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Sign_up()));
                          },
                          child: Text.rich(
                            const TextSpan(
                              text: "Don’t have an account? ",
                              style: TextStyle(
                                fontSize: 18
                              ),
                              children: [
                                TextSpan(
                                  text: "Sign Up",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w900,
                                    color: Color(0xff125AC2),
                                    fontSize: 18
                                  ),
                                ),
                              ],
                            ),
                            style:
                            Theme.of(context).textTheme.bodyMedium!.copyWith(
                              color: Theme.of(context)
                                  .textTheme
                                  .bodyLarge!
                                  .color!
                              // ignore: deprecated_member_use
                                  .withOpacity(0.64),
                            ),
                          ),
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