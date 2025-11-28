import 'package:flutter/material.dart';
import 'package:fyp/Details/detail_2.dart';
import 'package:fyp/main_screens/results.dart';

class detail_screen_3 extends StatefulWidget {
  const detail_screen_3({super.key});

  @override
  State<detail_screen_3> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<detail_screen_3> {
  final TextEditingController email = TextEditingController();

  @override
  void dispose() {
    email.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffEDEDF8),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Back Button
            Padding(
              padding: const EdgeInsets.only(
                  left: 5
              ),
              child: IconButton(
                icon: Container(
                  height: 50,
                  width: 50,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: LinearGradient(
                      colors: [Color(0xff125AC2), Color(0xff160826)],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 4,
                        offset: Offset(0, 2),
                      ),
                    ],
                  ),
                  child: const Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                    size: 28,
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const detail_screen_2()),
                  );
                },
              ),
            ),

            const SizedBox(height: 15),

            //  Title
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                "Which of the following describes \nyou best?",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                  fontFamily: "Poppins",
                ),
              ),
            ),

            const SizedBox(height: 15),

            // Scrollable Chips Section
            Expanded(
              child: SingleChildScrollView(
                padding: EdgeInsets.zero,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Chips
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Wrap(
                        spacing: 5,
                        runSpacing: 10,
                        children: activities
                            .map((text) => InkWell(
                          onTap: () => print("Tapped: $text"),
                          child: buildChip(text),
                        ))
                            .toList(),
                      ),
                    ),
                    // 🎯 Button aligned left
                    const SizedBox(height: 30),

                    // Step Circles
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        for (int i = 0; i < 5; i++)
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 4),
                            child: Container(
                              height: 15 + (5 - i).toDouble(),
                              width: 15 + (5 - i).toDouble(),
                              decoration: const BoxDecoration(
                                color: Color(0xffC4CFCF),
                                shape: BoxShape.circle,
                              ),
                            ),
                          ),
                      ],
                    ),

                    const SizedBox(height: 20),

                    // Button aligned left
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 0),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const result_show()),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.zero,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40),
                            ),
                            elevation: 5,
                          ),
                          child: Ink(
                            decoration: BoxDecoration(
                              gradient: const LinearGradient(
                                colors: [Color(0xff125AC2), Color(0xff160826)],
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                              ),
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: Container(
                              height: 50,
                              width: 180,
                              alignment: Alignment.center,
                              child: const Text(
                                "See Result",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "Poppins",
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Reusable Chip Widget
  Widget buildChip(String text) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        border: Border.all(color: Colors.black.withOpacity(0.25)),
        color: Colors.white,
      ),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 16,
          color: Colors.black,
          fontWeight: FontWeight.w400,
          fontFamily: "Poppins",
        ),
      ),
    );
  }
}

// Activities List
const List<String> activities = [
  "Build things",
  "Use your hands",
  "Work outdoors",
  "Be physically active",
  "Explore ideas",
  "Use computers",
  "Work independently",
  "Tinker with mechanics",
  "Perform lab experiments",
  "Read scientific or technical magazines",
  "Work on crafts",
  "Read fiction, plays, poetry",
  "Express yourself creatively",
  "Attend concerts, theaters, art exhibits",
  "Do volunteer service",
  "Work in groups",
  "Help people with problems",
  "Participate in meetings",
  "Play team sports",
  "Work with young people",
  "Write stories, poetry, music, sing, act, dance",
  "Make decisions affecting others",
  "Be selected to office",
  "Win a leadership or sales award",
  "Initiate projects",
  "Meet important people",
  "Start your own political campaign",
  "Follow clearly defined procedures",
  "Use data processing equipment",
  "Use a computer terminal",
  "Work with numbers",
  "Type or take shorthand",
  "Be responsible for details",
];
