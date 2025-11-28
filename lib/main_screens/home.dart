import 'package:flutter/material.dart';
import 'package:fyp/Forms/general.dart';
import 'package:fyp/credentials/login.dart';
import 'package:fyp/main_screens/profile.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:fyp/credentials/user_prefrence/current_user.dart';
import 'package:get/get.dart';

// ignore: camel_case_types
class home_screen extends StatefulWidget {

  const home_screen({super.key});

  @override
  State<home_screen> createState() => _home_screenState();
}

// ignore: camel_case_types
class _home_screenState extends State<home_screen> {
  @override
  Widget build(BuildContext context) {
    CurrentUser _rememberCurrentUser= Get.put(CurrentUser());
    return GetBuilder(init: CurrentUser(),
      initState: (currentState){
      _rememberCurrentUser.getUserInfo();
    },
    builder: (controller) {
      return Scaffold(
          backgroundColor: Color(0xffF8F8FA),
          appBar: null,
          bottomNavigationBar: Padding(
            padding: const EdgeInsets.only(bottom: 0.1),
            child: Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: GNav(
                  activeColor: Colors.white,
                  tabBackgroundColor: Color(0xff125AC2),
                  gap: 5,
                  padding: const EdgeInsets.symmetric(
                      horizontal: 25, vertical: 14),
                  tabs: [
                    GButton(
                      icon: Icons.home,
                      iconSize: 28,
                      text: "Home",
                    ),
                    GButton(
                      icon: Icons.settings,
                      iconSize: 28,
                      text: "Settings",
                    ),
                    GButton(
                      icon: Icons.message_rounded,
                      iconSize: 28,
                      text: "Chat",
                    ),
                    GButton(
                      icon: Icons.person,
                      iconSize: 28,
                      text: "Profile",
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (
                            context) => ProfileFragmentScreen()));
                      },
                    )
                  ]
              ),
            ),
          ),
          floatingActionButton: Container(
            width: 150,
            height: 55,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              gradient: const LinearGradient(
                colors: [
                  Color(0xff125AC2), // first color
                  Color(0xff092B5C), // second color
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: FloatingActionButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => general_info()),
                );
              },
              backgroundColor: Colors.transparent, // show gradient
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("images/Vector.png", height: 24),
                  const SizedBox(width: 8),
                  const Text(
                    "Ask By Ai",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          ),
          body: SafeArea(
            child: LayoutBuilder(
              builder: (context, constraints) {
                return SingleChildScrollView(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          const CircleAvatar(
                            radius: 25,
                            // you can adjust size based on constraints
                            backgroundImage: AssetImage("images/profile.png"),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 18.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                RichText(
                                    text: TextSpan(
                                        text: "Hello!",
                                        style: TextStyle(
                                            color: Color(0xff125AC2),
                                            fontSize: 22,
                                            fontWeight: FontWeight.w800,
                                            fontFamily: "Poppins"
                                        )
                                    )),
                                RichText(
                                    text: TextSpan(
                                        text: _rememberCurrentUser.userName,
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 15,
                                            fontWeight: FontWeight.w400,
                                            fontFamily: "Poppins"
                                        )
                                    )),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: constraints.maxHeight * 0.03),
                      Center(
                        child: Container(
                          height: 150,
                          width: 360,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            gradient: const LinearGradient(colors: [
                              Color(0xff125AC2),
                              Color(0xff092B5C)
                            ]),
                          ),

                          child: Stack(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 20, top: 10),
                                child: Text(
                                  "Start your\nCareer Journey",
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontFamily: "Poppins"
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 20, top: 80),
                                child: Text(
                                  "Browse jobs that fit your skills and \n goals, making it easier to find the \nright path.",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white70,
                                      fontFamily: "Poppins"
                                  ),
                                ),
                              ),
                              // Image.asset("images/box.png"),
                              Align(
                                alignment: Alignment.centerRight,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      right: 20, top: 20),
                                  // padding on right side
                                  child: Image.asset(
                                    "images/profile.png",
                                    height: 600,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      // Yellow Circle
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 15,
                            right: 230
                        ),
                        child: CircleAvatar(
                          radius: 50,
                          backgroundColor: Color(0xffFED40A),
                          child: const Text(
                            "Realistic",
                            style: TextStyle(color: Colors.black,
                                fontWeight: FontWeight.w600,
                                fontSize: 18,
                                fontFamily: "Poppins"
                            ),
                          ),
                        ),
                      ),
                      // Green Circle
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 200
                        ),
                        child: CircleAvatar(
                          radius: 55,
                          backgroundColor: Color(0xff33C759),
                          child: const Text(
                            "Investigative",
                            style: TextStyle(color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                                fontFamily: "Poppins"
                            ),
                          ),
                        ),
                      ),

                      // Grey Circle
                      Padding(
                        padding: const EdgeInsets.only(
                            right: 200
                        ),
                        child: CircleAvatar(
                          radius: 43,
                          backgroundColor: Color(0xffD9D9D9),
                          child: const Text(
                            "Artistics",
                            style: TextStyle(color: Colors.black,
                                fontWeight: FontWeight.w600,
                                fontSize: 18,
                                fontFamily: "Poppins"
                            ),
                          ),
                        ),
                      ),
                      // Red Circle (center)
                      Padding(
                        padding: const EdgeInsets.only(),
                        child: CircleAvatar(
                          radius: 55,
                          backgroundColor: Color(0xffFD8982),
                          child: const Text(
                            "Conventional",
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                                fontFamily: "Poppins"
                            ),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          CircleAvatar(
                            radius: 55,
                            backgroundColor: Color(0xff125AC2),
                            child: const Text(
                              "Enterprising",
                              style: TextStyle(color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                  fontFamily: "Poppins"
                              ),
                            ),
                          ),

                          // Dark Circle
                          CircleAvatar(
                            radius: 38,
                            backgroundColor: Color(0xff505A5F),
                            child: const Text(
                              "Social",
                              style: TextStyle(color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                  fontFamily: "Poppins"
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                );
              },
            ),
          )
      );
    },
    );
  }
}
