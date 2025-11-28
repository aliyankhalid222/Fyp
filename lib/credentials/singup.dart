import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:fyp/api_connection/model/user.dart';
// import 'package:fyp/Screens/login.dart';
import 'package:http/http.dart'as http;

import '../api_connection/api_connection.dart';
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
  var  email = TextEditingController();
  var  password = TextEditingController();
  var name = TextEditingController();
  validateUserEmail() async {
    try{
      var res = await http.post(Uri.parse(API.validateEmail),
        body: {
          "user_email":email.text.trim(),
        }
      );
      if(res.statusCode==200){
        var resbody = jsonDecode(res.body);
        if(resbody['found']==true){
          Fluttertoast.showToast(msg: "Email already in someone use..");

        }else{
          registered();

        }
      }

    }
    catch(e){
      print(e.toString());
      Fluttertoast.showToast(msg: e.toString());
    }
  }
  registered()async{
    User userModel = User(
      1,
      name.text.trim(),
      email.text.trim(),
      password.text.trim(),

    );
    try{
      var res = await http.post(Uri.parse(API.signup),
        body:userModel.toJson(),
      );
      if(res.statusCode==200){
        var resBody = jsonDecode(res.body);
        if(resBody['sucess']==true){
          Fluttertoast.showToast(msg: "SignUp sucessfully");
        }else{
          Fluttertoast.showToast(msg: "Eroor occurs try again");

        }
      }



    }
    catch(e){
      print(e.toString());
      Fluttertoast.showToast(msg: e.toString());
      
    }
  }
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
                          controller: name,
                          decoration: const InputDecoration(
                            hintText: 'name',
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 16.0 * 1.5, vertical: 16.0),
                            border: OutlineInputBorder(
                                borderSide: BorderSide(color: Color(0xff125AC2)),
                                borderRadius: BorderRadius.all(Radius.circular(16))
                            ),
                          ),
                          keyboardType: TextInputType.text,
                          onSaved: (phone) {
                            // Save it
                          },
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 16.0),
                          child: TextFormField(
                            controller: email,
                            // obscureText: true,
                            decoration: const InputDecoration(
                              hintText: 'email',
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
                        // Padding(
                        //   padding: const EdgeInsets.symmetric(vertical: 16.0),
                        //   child: TextFormField(
                        //     controller: password,
                        //     obscureText: true,
                        //     decoration: const InputDecoration(
                        //       hintText: 'Confirm Password',
                        //       contentPadding:EdgeInsets.symmetric(
                        //           horizontal: 16.0 * 1.5, vertical: 16.0),
                        //       border: OutlineInputBorder(
                        //           borderSide: BorderSide(color: Color(0xff125AC2)),
                        //           borderRadius: BorderRadius.all(Radius.circular(16))
                        //       ),
                        //     ),
                        //     onSaved: (passaword) {
                        //       // Save it
                        //     },
                        //   ),
                        // ),
                        ElevatedButton(
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              validateUserEmail();
                              // _formKey.currentState!.save();
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