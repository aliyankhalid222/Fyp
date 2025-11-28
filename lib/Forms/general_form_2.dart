import 'package:flutter/material.dart';
import 'package:fyp/Details/details.dart';
import 'package:fyp/Forms/general.dart';
import 'package:fyp/main_screens/home.dart';

class general_info_2 extends StatefulWidget {
  const general_info_2({super.key});

  @override
  State<general_info_2> createState() => _general_info_2State();
}

class _general_info_2State extends State<general_info_2> {

  // Controllers
  final TextEditingController email = TextEditingController();
  @override
  void dispose() {
    // ✅ Dispose controllers to prevent memory leaks
    email.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffEDEDF8),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 40
        ),
        child: Column(
          children: [
            // Back Button
            Padding(
              padding: const EdgeInsets.only(
                right: 320
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
                    MaterialPageRoute(builder: (context) => const general_info()),
                  );
                },
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(
                right: 250,
                top: 20,
              ),
              child: Text(
                "Education",
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                    fontFamily: "Poppins"
                ),
              ),
            ),
            SizedBox(height: 20,),
            Column(
              children: [
                Center(
                  child: Container(
                    width: 370,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(
                        color: Color(0xff505A5F).withOpacity(0.5), // your custom blue
                        width: 1.5,
                      ),
                    ),
                    child: TextFormField(
                      controller: email,
                      style: TextStyle(
                        fontSize: 18,
                      ),
                      decoration: const InputDecoration(
                        hintText: 'Department (eg : Software Engineer)',
                        hintStyle: TextStyle(color: Colors.black26,fontFamily: "Poppins"),
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 16,
                        ),
                        border: InputBorder.none, // remove default outline
                      ),
                      keyboardType: TextInputType.text,
                      onSaved: (value) {
                        // Save it
                      },
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Center(
                  child: Container(
                    width: 370,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(
                        color: Color(0xff505A5F).withOpacity(0.5), // your custom blue
                        width: 1.5,
                      ),
                    ),
                    child: TextFormField(
                      controller: email,
                      style: TextStyle(
                        fontSize: 18,
                      ),
                      decoration: const InputDecoration(
                        hintText: 'Degree (eg : BSCS)',
                        hintStyle: TextStyle(color: Colors.black26,fontFamily: "Poppins"),
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 16,
                        ),
                        border: InputBorder.none, // remove default outline
                      ),
                      keyboardType: TextInputType.text,
                      onSaved: (value) {
                        // Save it
                      },
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Center(
                  child: Container(
                    width: 370,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(
                        color: Color(0xff505A5F).withOpacity(0.5), // your custom blue
                        width: 1.5,
                      ),
                    ),
                    child: TextFormField(
                      controller: email,
                      style: TextStyle(
                        fontSize: 18,
                      ),
                      decoration: const InputDecoration(
                        hintText: 'Major',
                        hintStyle: TextStyle(color: Colors.black26,fontFamily: "Poppins"),
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 16,
                        ),
                        border: InputBorder.none, // remove default outline
                      ),
                      keyboardType: TextInputType.text,
                      onSaved: (value) {
                        // Save it
                      },
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Center(
                  child: Container(
                    width: 370,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(
                        color: Color(0xff505A5F).withOpacity(0.5), // your custom blue
                        width: 1.5,
                      ),
                    ),
                    child: TextFormField(
                      controller: email,
                      style: TextStyle(
                        fontSize: 18,
                      ),
                      decoration: const InputDecoration(
                        hintText: 'Marks (eg : CGPA)',
                        hintStyle: TextStyle(color: Colors.black26,fontFamily: "Poppins"),
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 16,
                        ),
                        border: InputBorder.none, // remove default outline
                      ),
                      keyboardType: TextInputType.text,
                      onSaved: (value) {
                        // Save it
                      },
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Center(
                  child: Container(
                    width: 370,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(
                        color: Color(0xff505A5F).withOpacity(0.5), // your custom blue
                        width: 1.5,
                      ),
                    ),
                    child: TextFormField(
                      controller: email,
                      style: TextStyle(
                        fontSize: 18,
                      ),
                      decoration: const InputDecoration(
                        hintText: 'Specialization',
                        hintStyle: TextStyle(color: Colors.black26,fontFamily: "Poppins"),
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 16,
                        ),
                        border: InputBorder.none, // remove default outline
                      ),
                      keyboardType: TextInputType.text,
                      onSaved: (value) {
                        // Save it
                      },
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30,),
            Center(
              child: Text("Step 2 of 5",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                    fontFamily: "Poppins"
                ),
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 20,
                  width: 20,
                  decoration: BoxDecoration(
                    // shape: CircleBorder(50)
                  ),
                )
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 25,
                  width: 25,
                  decoration: BoxDecoration(
                      color: Color(0xffC4CFCF),
                      shape: BoxShape.circle
                  ),
                ),
                SizedBox(width: 5,),
                Container(
                  height: 23,
                  width: 23,
                  decoration: BoxDecoration(
                      color: Color(0xffC4CFCF),
                      shape: BoxShape.circle
                  ),
                ),
                SizedBox(width: 5,),
                Container(
                  height: 20,
                  width: 20,
                  decoration: BoxDecoration(
                      color: Color(0xffC4CFCF),
                      shape: BoxShape.circle
                  ),
                ),
                SizedBox(width: 5,),
                Container(
                  height: 18,
                  width: 18,
                  decoration: BoxDecoration(
                      color: Color(0xffC4CFCF),
                      shape: BoxShape.circle
                  ),
                ),
                SizedBox(width: 5,),
                Container(
                  height: 15,
                  width: 15,
                  decoration: BoxDecoration(
                      color: Color(0xffC4CFCF),
                      shape: BoxShape.circle
                  ),
                ),
              ],
            ),
            SizedBox(height: 30,),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>detail_screen()));
              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.zero, // removes default padding
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40), // rounded corners
                ),
              ),
              child: Ink(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color(0xff125AC2), Color(0xff160826)], // your gradient colors
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Container(
                  height: 50, //  height
                  width: 180, //  width
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Next Step",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Poppins"
                        ),
                      ),
                      SizedBox(width: 10,),
                      Row(
                        children: [
                          Icon(Icons.arrow_forward_ios,color: Colors.white,),
                          Icon(Icons.arrow_forward_ios,color: Colors.white),
                          Icon(Icons.arrow_forward_ios,color: Colors.white),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
