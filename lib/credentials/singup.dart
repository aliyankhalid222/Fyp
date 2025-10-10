import 'package:flutter/material.dart';
// import 'package:fyp/Screens/login.dart';

import 'login.dart';

// ignore: camel_case_types
class Sign_up extends StatefulWidget {
  const Sign_up({super.key});

  @override
  State<Sign_up> createState() => _Sign_upState();
}

// ignore: camel_case_types
class _Sign_upState extends State<Sign_up> {


  final _formKey = GlobalKey<FormState>();

  // Controllers
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
  @override
  void dispose() {
    // ✅ Dispose controllers to prevent memory leaks
    email.dispose();
    password.dispose();
    super.dispose();
  }
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
                    "Sign Up",
                    style: Theme.of(context)
                        .textTheme
                        .headlineSmall!
                        .copyWith(fontWeight: FontWeight.w900,color: Color(0xff125AC2),fontSize: 30),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top:4.0),
                    child: Text(
                        "Create an Account",
                        style: Theme.of(context)
                            .textTheme
                            .headlineSmall!
                        // ignore: deprecated_member_use
                            .copyWith(fontWeight: FontWeight.w400,color: Colors.black.withOpacity(0.5),fontSize: 20)
                    ),
                  ),
                  SizedBox(height: constraints.maxHeight * 0.05),
                  Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        TextFormField(
                          controller: email,
                          decoration: const InputDecoration(
                            hintText: 'first Name',
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 16.0 * 1.5, vertical: 16.0),
                            border: OutlineInputBorder(
                                borderSide: BorderSide(color: Color(0xff125AC2)),
                                borderRadius: BorderRadius.all(Radius.circular(16))
                            ),
                          ),
                          keyboardType: TextInputType.phone,
                          onSaved: (phone) {
                            // Save it
                          },
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 16.0),
                          child: TextFormField(
                            controller: password,
                            obscureText: true,
                            decoration: const InputDecoration(
                              hintText: 'Last Name',
                              contentPadding:EdgeInsets.symmetric(
                                  horizontal: 16.0 * 1.5, vertical: 16.0),
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(color: Color(0xff125AC2)),
                                  borderRadius: BorderRadius.all(Radius.circular(16))
                              ),
                            ),
                            onSaved: (passaword) {
                              // Save it
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 0.0),
                          child: TextFormField(
                            controller: password,
                            obscureText: true,
                            decoration: const InputDecoration(
                              hintText: 'Password',
                              contentPadding:EdgeInsets.symmetric(
                                  horizontal: 16.0 * 1.5, vertical: 16.0),
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(color: Color(0xff125AC2)),
                                  borderRadius: BorderRadius.all(Radius.circular(16))
                              ),
                            ),
                            onSaved: (passaword) {
                              // Save it
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 16.0),
                          child: TextFormField(
                            controller: password,
                            obscureText: true,
                            decoration: const InputDecoration(
                              hintText: 'Confirm Password',
                              contentPadding:EdgeInsets.symmetric(
                                  horizontal: 16.0 * 1.5, vertical: 16.0),
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(color: Color(0xff125AC2)),
                                  borderRadius: BorderRadius.all(Radius.circular(16))
                              ),
                            ),
                            onSaved: (passaword) {
                              // Save it
                            },
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              _formKey.currentState!.save();
                              // Navigate to the main screen
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>login_screen()));
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
                          child: const Text("Sign Up"),
                        ),
                        SizedBox(height: constraints.maxHeight * 0.2),
                        TextButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>login_screen()));
                          },
                          child: Text.rich(
                            const TextSpan(
                              text: "Don’t have an account? ",
                              style: TextStyle(
                                fontSize: 18
                              ),
                              children: [
                                TextSpan(
                                  text: "Sign In",
                                  style: TextStyle(fontWeight: FontWeight.w900, color : Color(0xff125AC2),fontSize: 18),
                                ),
                              ],
                            ),
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