import 'package:flutter/material.dart';
import 'package:fyp/Details/detail_3.dart';
import 'package:fyp/Details/details.dart';


class detail_screen_2 extends StatefulWidget {
  const detail_screen_2({super.key});

  @override
  State<detail_screen_2> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<detail_screen_2> {
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
                    MaterialPageRoute(builder: (context) => const detail_screen()),
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
                              MaterialPageRoute(builder: (context) => const detail_screen_3()),
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
                                "Next Step",
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

const List<String> activities = [
  "Pitch a tent",
  "Play a sport",
  "Work on cars",
  "Solve mechanical problems",
  "Read a blueprint",
  "Analyze data",
  "Fix electrical things",
  "Scientific",
  "Solve math problems",
  "Think abstractly",
  "Understand physical theories",
  "Plan and supervise an activity",
  "Mediate disputes",
  "Lead a group",
  "Sketch, draw, paint",
  "Cooperate well with others",
  "Lead a group discussion",
  "Express yourself clearly",
  "Play a musical instrument",
  "Design fashions or interiors",
  "Write stories, poetry, music, sing, act, dance",
  "Teach/train others",
  "Initiate projects",
  "Give talks or speeches",
  "Organize activities and events",
  "Work well within a system",
  "Keep accurate records",
  "Use a computer terminal",
  "Write effective business letters",
  "Do a lot of paper work in a short time",
  "Convince people to do things your way",
];
