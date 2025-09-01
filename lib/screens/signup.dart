import 'package:flutter/material.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/splash_background.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Center(
            child: Container(
              width: 500,
              height: 500,
              color: Colors.white.withOpacity(0.5),
            ),
          ),
          Center(
            child: Column(
              children: [
                Icon(Icons.app_registration, size: 100, color: Colors.white),
                Row(
                  children: [
                    Center(
                      child: Row(
                        children: [
                          TextField(
                            decoration: InputDecoration(
                              labelText: "First Name",
                              labelStyle: TextStyle(color: Colors.white),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(color: Colors.white),
                              ),
                            ),
                            keyboardType: TextInputType.text,
                          ),
                          SizedBox(width: 20),
                          TextField(
                            decoration: InputDecoration(
                              labelText: "Last Name",
                              labelStyle: TextStyle(color: Colors.white),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(color: Colors.white),
                              ),
                            ),
                            keyboardType: TextInputType.text,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                TextField(
                  decoration: InputDecoration(
                    labelText: "User Name",
                    labelStyle: TextStyle(color: Colors.white),
                    hintText: "4-Number",
                    hintStyle: TextStyle(color: Colors.white70),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.white),
                    ),
                  ),
                  keyboardType: TextInputType.number,
                ),
                SizedBox(height: 20),
                TextField(
                  decoration: InputDecoration(
                    labelText: "Password",
                    labelStyle: TextStyle(color: Colors.white),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.white),
                    ),
                  ),
                  keyboardType: TextInputType.text,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
