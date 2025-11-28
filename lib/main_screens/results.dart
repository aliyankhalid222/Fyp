import 'package:flutter/material.dart';
class result_show extends StatefulWidget {
  const result_show({super.key});

  @override
  State<result_show> createState() => _result_showState();
}

class _result_showState extends State<result_show> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF8F8FA),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
            "Result",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold
          ),
        ),
        centerTitle: true,
        actions: null,
      ),
      body: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  right: 280,
                  top: 10
                ),
                child: Text(
                    "Found(05)",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700
                  ),
                ),
              ),
              SizedBox(height: 20,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Stack(
                      children: [
                        Container(
                          height: 230,
                          width: 190,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                              color: Colors.black26.withOpacity(0.3),
                            )
                          ),
                          child: Center(
                            child: Column(
                              children: [
                                SizedBox(height:40,),
                                Image(image: AssetImage(
                                    "images/gifs.png",
                                ),
                                  height: 70,
                                  width: 70,
                                  fit: BoxFit.cover,
                                ),
                                SizedBox(height: 15,),
                                Text(
                                    "Data Analyst",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600
                                  ),
                                ),
                                SizedBox(height: 31,),
                                Stack(
                                  children: [
                                    Container(
                                      height: 46,
                                      width: 190,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                          bottomRight: Radius.circular(15),
                                          bottomLeft: Radius.circular(15)
                                        ),
                                        gradient: LinearGradient(
                                            colors: [Color(0xff125AC2),Color(0xff092B5C)]
                                        )
                                      ),
                                      child: Center(
                                          child: Text(
                                              "Good Fit",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18
                                            ),
                                          )
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 15,),
                    Stack(
                      children: [
                        Container(
                          height: 230,
                          width: 190,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                color: Colors.black26.withOpacity(0.3),
                              )
                          ),
                          child: Center(
                            child: Column(
                              children: [
                                SizedBox(height:40,),
                                Image(image: AssetImage(
                                  "images/gifs.png",
                                ),
                                  height: 70,
                                  width: 70,
                                  fit: BoxFit.cover,
                                ),
                                SizedBox(height: 15,),
                                Text(
                                  "Data Analyst",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600
                                  ),
                                ),
                                SizedBox(height: 31,),
                                Stack(
                                  children: [
                                    Container(
                                      height: 46,
                                      width: 190,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.only(
                                              bottomRight: Radius.circular(15),
                                              bottomLeft: Radius.circular(15)
                                          ),
                                          gradient: LinearGradient(
                                              colors: [Color(0xff125AC2),Color(0xff092B5C)]
                                          )
                                      ),
                                      child: Center(
                                          child: Text(
                                            "Recommended",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 18
                                            ),
                                          )
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 15,),
                    Stack(
                      children: [
                        Container(
                          height: 230,
                          width: 190,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                color: Colors.black26.withOpacity(0.3),
                              )
                          ),
                          child: Center(
                            child: Column(
                              children: [
                                SizedBox(height:40,),
                                Image(image: AssetImage(
                                  "images/gifs.png",
                                ),
                                  height: 70,
                                  width: 70,
                                  fit: BoxFit.cover,
                                ),
                                SizedBox(height: 15,),
                                Text(
                                  "Data Analyst",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600
                                  ),
                                ),
                                SizedBox(height: 31,),
                                Stack(
                                  children: [
                                    Container(
                                      height: 46,
                                      width: 190,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.only(
                                              bottomRight: Radius.circular(15),
                                              bottomLeft: Radius.circular(15)
                                          ),
                                          gradient: LinearGradient(
                                              colors: [Color(0xff125AC2),Color(0xff092B5C)]
                                          )
                                      ),
                                      child: Center(
                                          child: Text(
                                            "Consider",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 18
                                            ),
                                          )
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 25,),
              Stack(
                children: [
                  // Background container
                  Center(
                    child: Container(
                      width: 370,
                      height: 120,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Color(0xff125AC2),Color(0xff092B5C)],
                        ),
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.3),
                            spreadRadius: 2,
                            blurRadius: 6,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                    ),
                  ),
                  // Text content inside the container
                  Container(
                    width: 340, // slightly smaller for padding inside
                    height: 130,
                    padding: const EdgeInsets.all(16),
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left:22
                      ),
                      child: Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 0
                            ),
                            child: Align(
                                child: Image(
                                    image: AssetImage(
                                        "images/box.png"
                                    )
                                )
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start, // center vertically
                            children: [
                              Text(
                                "Bio Medical",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(height: 0),
                              Text(
                                "Applies engineering principles to healthcare & equipment. "
                                    "Your strengths in Investigative.",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  height: 1.4,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10,),
              Stack(
                children: [
                  // Background container
                  Center(
                    child: Container(
                      width: 370,
                      height: 120,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.3),
                            spreadRadius: 2,
                            blurRadius: 6,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                    ),
                  ),
                  // Text content inside the container
                  Container(
                    width: 340, // slightly smaller for padding inside
                    height: 130,
                    padding: const EdgeInsets.all(16),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left:22
                      ),
                      child: Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 0
                            ),
                            child: Align(
                                child: Image(
                                    image: AssetImage(
                                        "images/box.png"
                                    )
                                )
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start, // center vertically
                            children: [
                              Text(
                                "Bio Medical",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(height: 0),
                              Text(
                                "Applies engineering principles to healthcare & equipment. "
                                    "Your strengths in Investigative.",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black87,
                                  height: 1.4,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10,),
              Stack(
                children: [
                  // Background container
                  Center(
                    child: Container(
                      width: 370,
                      height: 120,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.3),
                            spreadRadius: 2,
                            blurRadius: 6,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                    ),
                  ),
                  // Text content inside the container
                  Container(
                    width: 340, // slightly smaller for padding inside
                    height: 130,
                    padding: const EdgeInsets.all(16),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left:22
                      ),
                      child: Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 0
                            ),
                            child: Align(
                                child: Image(
                                    image: AssetImage(
                                        "images/box.png"
                                    )
                                )
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start, // center vertically
                            children: [
                              Text(
                                "Bio Medical",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(height: 0),
                              Text(
                                "Applies engineering principles to healthcare & equipment. "
                                    "Your strengths in Investigative.",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black87,
                                  height: 1.4,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              )
            ],
          )
      ),
    );
  }
}
