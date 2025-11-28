// import 'package:flutter/material.dart';
// import 'package:google_nav_bar/google_nav_bar.dart';
// import 'package:fyp/main_screens/home.dart';
//
// class profile extends StatefulWidget {
//   const profile({super.key});
//
//   @override
//   State<profile> createState() => _profileState();
// }
//
// class _profileState extends State<profile> {
//   int _selectedIndex = 3;
//   String imagePath = "images/person.png"; // Replace with your image
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color(0xffF8F8FA),
//       appBar: AppBar(
//         title: const Text("Profile",style: TextStyle(color: Colors.black),),
//         centerTitle: true,
//         leading: IconButton(
//           icon: const Icon(Icons.arrow_back, color: Colors.white),
//           style: IconButton.styleFrom(
//             backgroundColor: const Color(0xff125AC2),
//           ),
//           onPressed: () {
//             Navigator.push(
//               context,
//               MaterialPageRoute(builder: (context) => const home_screen()),
//             );
//           },
//         ),
//         foregroundColor: Colors.black,
//       ),
//
//       // Bottom Navigation Bar
//       bottomNavigationBar: Padding(
//         padding: const EdgeInsets.only(bottom: 0.1),
//         child: Padding(
//           padding: const EdgeInsets.only(bottom:10),
//           child: GNav(
//               activeColor: Colors.white,
//               tabBackgroundColor: Color(0xff125AC2),
//               gap: 5,
//               padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 14),
//               tabs:  [
//                 GButton(
//                   icon: Icons.home,
//                   iconSize: 28,
//                   text: "Home",
//                 ),
//                 GButton(
//                   icon: Icons.settings,
//                   iconSize: 28,
//                   text: "Settings",
//                 ),
//                 GButton(
//                   icon: Icons.message_rounded,
//                   iconSize: 28,
//                   text: "Chat",
//                 ),
//                 GButton(
//                   icon: Icons.person,
//                   iconSize: 28,
//                   text: "Profile",
//                   onPressed: (){
//                     Navigator.push(context, MaterialPageRoute(builder: (context)=>profile()));
//                   },
//                 )
//               ]
//           ),
//         ),
//       ),
//
//       // Body
//       body: SingleChildScrollView(
//         padding: const EdgeInsets.all(16),
//         child: Column(
//           children: [
//             // Profile Picture with Outer Blue Border
//             Center(
//               child: Stack(
//                 alignment: Alignment.bottomRight,
//                 children: [
//                   Container(
//                     padding: const EdgeInsets.all(10), // Space between border and image
//                     decoration: BoxDecoration(
//                       shape: BoxShape.circle,
//                       border: Border.all(
//                         color: Colors.black12.withOpacity(0.03),
//                         width: 3, // Outer border width
//                       ),
//                     ),
//                     child: CircleAvatar(
//                       radius: 60,
//                       backgroundImage: AssetImage(imagePath),
//                     ),
//                   ),
//                   InkWell(
//                     onTap: () {
//                       print("Edit Profile Image Clicked");
//                     },
//                     child: CircleAvatar(
//                       radius: 18,
//                       backgroundColor: const Color(0xff125AC2),
//                       child: const Icon(
//                         Icons.edit,
//                         color: Colors.white,
//                         size: 18,
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//
//             const SizedBox(height: 10),
//             const Text(
//               "Aliyan Khalid",
//               style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
//             ),
//             const SizedBox(height: 30),
//
//             // Info Section
//             buildInfoCard("Change Password"),
//             buildInfoCard("Delete Account"),
//             buildInfoCard("Application Updates"),
//             buildInfoCard("Theme"),
//           ],
//         ),
//       ),
//     );
//   }
//
//   // Info Card Widget
//   Widget buildInfoCard(String title) {
//     return Container(
//       margin: const EdgeInsets.symmetric(vertical: 6),
//       padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(12),
//         boxShadow: const [
//           BoxShadow(color: Colors.black12, blurRadius: 4, offset: Offset(0, 2)),
//         ],
//       ),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Text(
//             title,
//             style: const TextStyle(fontSize: 15, color: Colors.black87),
//           ),
//           const Icon(
//             Icons.arrow_forward_ios,
//             color: Colors.grey,
//             size: 18,
//           ),
//         ],
//       ),
//     );
//   }
// }
// import 'package:flutter/material.dart';
// import 'package:fyp/credentials/user_prefrence/current_user.dart';
// import 'package:google_nav_bar/google_nav_bar.dart';
// import 'package:fyp/main_screens/home.dart';
// import 'package:get/get.dart';
// class profile extends StatefulWidget {
//   const profile({super.key});
//
//   @override
//   State<profile> createState() => _profileState();
// }
//
// class _profileState extends State<profile> {
//   final CurrentUser _currentUser = Get.put(CurrentUser());
//   int _selectedIndex = 3;
//   String imagePath = "images/person.png"; // Replace with your image
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color(0xffF8F8FA),
//       appBar: AppBar(
//         title: const Text(
//           "Profile",
//           style: TextStyle(color: Colors.black),
//         ),
//         centerTitle: true,
//         leading: IconButton(
//           icon: const Icon(Icons.arrow_back, color: Colors.white),
//           style: IconButton.styleFrom(
//             backgroundColor: const Color(0xff125AC2),
//           ),
//           onPressed: () {
//             Navigator.push(
//               context,
//               MaterialPageRoute(builder: (context) => const home_screen()),
//             );
//           },
//         ),
//         foregroundColor: Colors.black,
//         backgroundColor: Colors.transparent,
//         elevation: 0,
//       ),
//
//       // ✅ Bottom Navigation Bar
//       bottomNavigationBar: Padding(
//         padding: const EdgeInsets.only(bottom: 10),
//         child: GNav(
//           activeColor: Colors.white,
//           tabBackgroundColor: const Color(0xff125AC2),
//           gap: 5,
//           padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 14),
//           tabs: [
//             GButton(icon: Icons.home, iconSize: 28, text: "Home"),
//             GButton(icon: Icons.settings, iconSize: 28, text: "Settings"),
//             GButton(icon: Icons.message_rounded, iconSize: 28, text: "Chat"),
//             GButton(
//               icon: Icons.person,
//               iconSize: 28,
//               text: "Profile",
//               onPressed: () {
//                 Navigator.push(context,
//                     MaterialPageRoute(builder: (context) => const profile()));
//               },
//             ),
//           ],
//         ),
//       ),
//
//       // ✅ Body
//       body: SingleChildScrollView(
//         padding: const EdgeInsets.all(20),
//         child: Column(
//           children: [
//             // Profile Picture
//             Center(
//               child: Stack(
//                 children: [
//                   Container(
//                     decoration: BoxDecoration(
//                       shape: BoxShape.circle,
//                       boxShadow: [
//                         BoxShadow(
//                           color: Colors.black12.withOpacity(0.1),
//                           blurRadius: 8,
//                         )
//                       ],
//                     ),
//                     child: CircleAvatar(
//                       radius: 60,
//                       backgroundImage: AssetImage(imagePath),
//                     ),
//                   ),
//                   Positioned(
//                     bottom: 0,
//                     right: 6,
//                     child: Container(
//                       decoration: BoxDecoration(
//                         color: const Color(0xff125AC2),
//                         shape: BoxShape.circle,
//                       ),
//                       child: const Padding(
//                         padding: EdgeInsets.all(6),
//                         child: Icon(Icons.edit, color: Colors.white, size: 18),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//
//             const SizedBox(height: 15),
//             Obx(() => Text(
//               _currentUser.user.value.name ?? "No Name",
//               style: const TextStyle(
//                 fontSize: 22,
//                 fontWeight: FontWeight.bold,
//               ),
//             )),
//
//
//             const SizedBox(height: 30),
//
//             // ✅ Two info fields (username + email)
//             _buildInfoTile(Icons.person, "Username", "user name"),
//             const SizedBox(height: 15),
//             _buildInfoTile(Icons.email, "Email", "useremail@gmail.com"),
//
//             const SizedBox(height: 40),
//
//             // ✅ Sign Out Button
//             GestureDetector(
//               onTap: () {
//                 print("Sign Out Clicked");
//               },
//               child: Container(
//                 width: double.infinity,
//                 padding: const EdgeInsets.symmetric(vertical: 14),
//                 decoration: BoxDecoration(
//                   color: Colors.redAccent,
//                   borderRadius: BorderRadius.circular(12),
//                 ),
//                 child: const Center(
//                   child: Text(
//                     "Sign Out",
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontSize: 16,
//                       fontWeight: FontWeight.w600,
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//
//   // ✅ Modern Info Tile (like second screenshot)
//   Widget _buildInfoTile(IconData icon, String label, String value) {
//     return Container(
//       padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 14),
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(14),
//         boxShadow: [
//           BoxShadow(
//             color: Colors.black12.withOpacity(0.08),
//             blurRadius: 6,
//             offset: const Offset(0, 3),
//           ),
//         ],
//       ),
//       child: Row(
//         children: [
//           Icon(icon, color: const Color(0xff125AC2), size: 24),
//           const SizedBox(width: 14),
//           Expanded(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(label,
//                     style: const TextStyle(
//                         color: Colors.grey, fontSize: 13, height: 1.3)),
//                 Text(value,
//                     style: const TextStyle(
//                         color: Colors.black,
//                         fontSize: 15,
//                         fontWeight: FontWeight.w500)),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
// import 'package:flutter/material.dart';
//
// class ProfileFragmentScreen extends StatelessWidget {
//   Widget userInfoItemProfile(IconData iconData, String userData) {
//     return Container(
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(12),
//         color: Colors.grey,
//       ), // BoxDecoration
//       padding: const EdgeInsets.symmetric(
//         horizontal: 12,
//         vertical: 8
//       ), // EdgeInsets.symmetric
//       child: Row(
//         children: [
//           Icon(
//             iconData,
//             size: 30,
//             color: Colors.black,
//           ), // Icon
//           const SizedBox(width: 16,),
//           Text(
//             userData,
//             style: const TextStyle(
//               fontSize: 15,
//             ), // TextStyle
//           ), // Text
//         ],
//       ), // Row
//     ); // Container
//   }
//   @override
//   Widget build(BuildContext context) {
//     return ListView(
//       children: [
//         Center(
//           child: Image.asset(
//             "images/person.png",
//             width: 240,
//           ), // Image.asset
//         ), // Center
//         SizedBox(height: 20,),
//         userInfoItemProfile(Icons.person, "user name"),
//         SizedBox(height: 20,),
//         userInfoItemProfile(Icons.email, "user email"),
//
//       ],
//     );
//   }
// }
// import 'package:flutter/material.dart';
//
// class ProfileFragmentScreen extends StatelessWidget {
//   Widget userInfoItemProfile(IconData iconData, String userData) {
//     return Container(
//       decoration: BoxDecoration(
//
//         borderRadius: BorderRadius.circular(12),
//         color: Colors.grey,
//       ), // BoxDecoration
//       padding: const EdgeInsets.symmetric(
//         horizontal: 16,
//         vertical: 13
//       ), // EdgeInsets.symmetric
//       child: Row(
//         children: [
//           Icon(
//             iconData,
//             size: 30,
//             color: Colors.black,
//           ), // Icon
//           const SizedBox(width: 16,),
//           Text(
//             userData,
//             style: const TextStyle(
//               fontSize: 15,
//             ), // TextStyle
//           ), // Text
//         ], // Row
//       ),
//     );
//   }
//   @override
//   Widget build(BuildContext context) {
//     return ListView(
//       children: [
//         Center(
//           child: Image.asset(
//             'images/person.png',
//             width: 240,
//           ), // Image.asset
//         ), // Center
//         SizedBox(height: 18,),
//         userInfoItemProfile(Icons.person, "user name"),
//         SizedBox(height: 26,),
//         userInfoItemProfile(Icons.email, "useremail@123"),
//         SizedBox(height: 20,),
//         Center(
//           child: Material(
//             color: Colors.redAccent,
//             borderRadius:BorderRadius.circular(8),
//             child: InkWell(
//               onTap: (){},
//               borderRadius: BorderRadius.circular(32),
//               child: Padding(padding: EdgeInsets.symmetric(
//                 horizontal: 30,
//                 vertical: 12
//
//
//               ),
//                 child: Text("Sign Out",style: TextStyle(color: Colors.white,fontSize: 16),),
//               )
//
//
//
//             ),
//           ),
//         )
//       ], // ListView
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'package:fyp/credentials/login.dart';
import 'package:fyp/credentials/user_prefrence/current_user.dart';
import 'package:fyp/credentials/user_prefrence/userpre.dart';
import 'package:get/get.dart';

class ProfileFragmentScreen extends StatelessWidget {
  final CurrentUser _currentUser = Get.put(CurrentUser());
  SignOut()async{
   var rezRes= await Get.dialog(
      AlertDialog(
        backgroundColor: Colors.white,
        title: const Text("Logout",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
        content: Text("Are youe sure \n want to logout"),
        actions: [
          TextButton(onPressed: (){
            Get.back();
          }, child: Text("No",style: TextStyle(color: Colors.black87),)),
          TextButton(onPressed: (){
            Get.back(result: "Logout");
          }, child: Text("Yes",style: TextStyle(color: Colors.black87),))
        ],

      )
    );
   if (rezRes == "Logout") {
     RemUSer.readUSerInfo().then((value) {
       Get.off(login_screen());
     });
   }


  }
  Widget userInfoItemProfile(IconData iconData, String userData) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.grey[200],
      ),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 13),
      child: Row(
        children: [
          Icon(iconData, size: 30, color: Colors.black),
          const SizedBox(width: 16),
          Text(
            userData,
            style: const TextStyle(fontSize: 17, color: Colors.black,),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(

      color: Colors.white, // Screen background white
      child: ListView(
        padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 16),
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Circular blue background with image
              Container(
                width: 120,
                height: 120,
                decoration: const BoxDecoration(
                  color: Colors.blueAccent, // small blue circle
                  shape: BoxShape.circle,
                ),

                child: Center(

                  child: Image.asset(
                    'images/person.png',
                    width: 80,
                  ),
                ),
              ),
              const SizedBox(height: 12),
              const Text(
                "Profile",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 24),
              // User info items
              userInfoItemProfile(Icons.person, _currentUser.user.user_name),
              const SizedBox(height: 26),
              userInfoItemProfile(Icons.email, _currentUser.user.user_email),
              const SizedBox(height: 40),
              // Sign Out button
              Material(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.circular(8),
                child: InkWell(
                  onTap: () {
                    SignOut();
                  },
                  borderRadius: BorderRadius.circular(32),
                  child: const Padding(
                    padding:
                    EdgeInsets.symmetric(horizontal: 30, vertical: 12),
                    child: Text(
                      "Sign Out",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
