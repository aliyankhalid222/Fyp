import 'package:flutter/material.dart';

class general_info extends StatefulWidget {
  const general_info({super.key});

  @override
  State<general_info> createState() => _general_infoState();
}

class _general_infoState extends State<general_info> {

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
      appBar: null,
      body: Column(
        children: [
          CircleAvatar(
            radius: 40,
            child: IconButton(onPressed: (){},
                icon: Icon(Icons.arrow_back)
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
                "General Information",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Column(
            children: [
              Center(
                child: Container(
                  width: 370,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(
                      color: Color(0xff125AC2), // your custom blue
                      width: 1.5,
                    ),
                  ),
                  child: TextFormField(
                    controller: email,
                    style: TextStyle(
                      fontSize: 18,
                    ),
                    decoration: const InputDecoration(
                      hintText: 'Name',
                      hintStyle: TextStyle(color: Colors.black26),
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
                      color: Color(0xff125AC2), // your custom blue
                      width: 1.5,
                    ),
                  ),
                  child: TextFormField(
                    controller: email,
                    style: TextStyle(
                      fontSize: 18,
                    ),
                    decoration: const InputDecoration(
                      hintText: 'Age',
                      hintStyle: TextStyle(color: Colors.black26),
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
                      color: Color(0xff125AC2), // your custom blue
                      width: 1.5,
                    ),
                  ),
                  child: TextFormField(
                    controller: email,
                    style: TextStyle(
                      fontSize: 18,
                    ),
                    decoration: const InputDecoration(
                      hintText: 'Gender',
                      hintStyle: TextStyle(color: Colors.black26),
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
                      color: Color(0xff125AC2), // your custom blue
                      width: 1.5,
                    ),
                  ),
                  child: TextFormField(
                    controller: email,
                    style: TextStyle(
                      fontSize: 18,
                    ),
                    decoration: const InputDecoration(
                      hintText: 'Email',
                      hintStyle: TextStyle(color: Colors.black26),
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
                      color: Color(0xff125AC2), // your custom blue
                      width: 1.5,
                    ),
                  ),
                  child: TextFormField(
                    controller: email,
                    style: TextStyle(
                      fontSize: 18,
                    ),
                    decoration: const InputDecoration(
                      hintText: 'Address',
                      hintStyle: TextStyle(color: Colors.black26),
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
          SizedBox(height: 20,),
          Text("Step 1 of 5",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600
            ),
          ),
          Row(
            children: [
              Container(
                height: 20,
                width: 20,
                color: Color(0xffC4CFCF),
                decoration: BoxDecoration(
                  shape: CircleBorder(50)
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
