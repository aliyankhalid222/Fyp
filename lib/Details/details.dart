import 'package:flutter/material.dart';
import 'package:fyp/Details/detail_2.dart';
import 'package:fyp/Forms/general_form_2.dart';

class detail_screen extends StatefulWidget {
  const detail_screen({super.key});

  @override
  State<detail_screen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<detail_screen> {
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
                    MaterialPageRoute(builder: (context) => const general_info_2()),
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
                        children: traits
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
                              MaterialPageRoute(builder: (context) => const detail_screen_2()),
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

// Traits List
const List<String> traits = [
  "Practical",
  "Athletic",
  "Inquisitive",
  "Analytical",
  "Scientific",
  "Observant",
  "Precise",
  "Creative",
  "Intuitive",
  "Imaginative",
  "Innovative",
  "Friendly",
  "Helpful",
  "Idealistic",
  "Insightful",
  "Outgoing",
  "Understanding",
  "Self-confident",
  "Assertive",
  "Sociable",
  "Persuasive",
  "Enthusiastic",
  "Energetic",
  "Well groomed",
  "Accurate",
  "Methodical",
  "Conscientious",
  "Efficient",
  "Numerically inclined",
  "Mechanically inclined",
  "A nature lover",
  "Straight forward",
  "An individualist",
  "Good with tools and machinery",
];