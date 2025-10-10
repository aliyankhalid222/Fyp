import 'package:flutter/material.dart';
import 'package:fyp/Forms/general.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

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
    return Scaffold(
        backgroundColor: Color(0xffF8F8FA),
        appBar: null,
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.only(bottom: 0.1),
          child: Padding(
            padding: const EdgeInsets.only(bottom:5),
            child: GNav(
                activeColor: Colors.white,
                tabBackgroundColor: Color(0xff125AC2),
                gap: 5,
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
                tabs: const [
                  GButton(
                    icon: Icons.home,
                    text: "Home",
                  ),
                  GButton(
                    icon: Icons.settings,
                    text: "Settings",
                  ),
                  GButton(
                    icon: Icons.message_rounded,
                    text: "Chat",
                  ),
                  GButton(
                    icon: Icons.person,
                    text: "Profile",
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
        elevation: 0,
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
                          radius: 25, // you can adjust size based on constraints
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
                                      )
                                  )),
                              RichText(
                                  text: TextSpan(
                                      text: "Anees Ahmed",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400,
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
                              padding: const EdgeInsets.only(left: 20,top: 10),
                              child: Text(
                                "Start your\nCareer Journey",
                                style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20,top: 80),
                              child: Text(
                                "Browse jobs that fit your skills and \ngoals, making it easier to find the \nright path.",
                                style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white70
                                ),
                              ),
                            ),
                            // Image.asset("images/box.png"),
                            Align(
                              alignment: Alignment.centerRight,
                              child: Padding(
                                padding: const EdgeInsets.only(right: 20,top: 20), // padding on right side
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
                      child: Positioned(
                        child: CircleAvatar(
                          radius: 50,
                          backgroundColor: Color(0xffFED40A),
                          child: const Text(
                            "Realistic",
                            style: TextStyle(color: Colors.black,
                                fontWeight: FontWeight.w600,
                              fontSize: 18
                            ),
                          ),
                        ),
                      ),
                    ),

                    // Green Circle
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 200
                      ),
                      child: Positioned(
                        child: CircleAvatar(
                          radius: 55,
                          backgroundColor: Color(0xff33C759),
                          child: const Text(
                            "Investigative",
                            style: TextStyle(color: Colors.white,
                                fontWeight: FontWeight.w600,
                              fontSize: 16,

                            ),
                          ),
                        ),
                      ),
                    ),

                    // Grey Circle
                    Padding(
                      padding: const EdgeInsets.only(
                        right: 200
                      ),
                      child: Positioned(
                        child: CircleAvatar(
                          radius: 43,
                          backgroundColor: Color(0xffD9D9D9),
                          child: const Text(
                            "Artistics",
                            style: TextStyle(color: Colors.black,
                                fontWeight: FontWeight.w600,
                              fontSize: 18
                            ),
                          ),
                        ),
                      ),
                    ),

                    // Red Circle (center)
                    Padding(
                      padding: const EdgeInsets.only(),
                      child: Positioned(
                        child: CircleAvatar(
                          radius: 55,
                          backgroundColor: Color(0xffFD8982),
                          child: const Text(
                            "Conventional",
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.white,
                                fontWeight: FontWeight.w600,
                              fontSize: 16
                            ),
                          ),
                        ),
                      ),
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Positioned(
                          child: CircleAvatar(
                            radius: 55,
                            backgroundColor: Color(0xff125AC2),
                            child: const Text(
                              "Enterprising",
                              style: TextStyle(color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16
                              ),
                            ),
                          ),
                        ),

                        // Dark Circle
                        Positioned(
                          child: CircleAvatar(
                            radius: 38,
                            backgroundColor: Color(0xff505A5F),
                            child: const Text(
                              "Social",
                              style: TextStyle(color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16
                              ),
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
  }
}