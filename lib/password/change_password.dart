import 'package:flutter/material.dart';
import 'package:quickease_car/login/login_page.dart';
import 'package:quickease_car/main.dart';
import 'package:quickease_car/login/profile.dart';

class ChangePassword extends StatefulWidget {
  @override
  _ChangePasswordState createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  bool passwordVisible = false;
  bool confirmPasswordVisible = false;

  TextEditingController newPasswordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  bool isPasswordMatch = false;

  @override
  void initState() {
    super.initState();
    newPasswordController.addListener(_checkPasswordMatch);
    confirmPasswordController.addListener(_checkPasswordMatch);
  }

  @override
  void dispose() {
    newPasswordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }

  void _checkPasswordMatch() {
    setState(() {
      isPasswordMatch = newPasswordController.text == confirmPasswordController.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(3, 54, 16, 0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginPage()),
                    ); // Handle arrow button tap
                  },
                  child: Container(
                    margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                    child: Icon(Icons.arrow_back,size:33,color: Colors.blue,),
                  ),
                ),
              ),
              Container(height: 20),
              const Text(
                "Change Password",
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 24.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Container(height: 10),
              const SizedBox(height: 20.0),
              const SizedBox(height: 20.0),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Old Password',
                ),
              ),
              const SizedBox(height: 20.0),
              TextFormField(
                obscureText: !passwordVisible,
                decoration: InputDecoration(
                  labelText: 'New Password',
                  suffixIcon: GestureDetector(
                    onTap: () {
                      setState(() {
                        passwordVisible = !passwordVisible;
                      });
                    },
                    child: Icon(
                      passwordVisible ? Icons.visibility : Icons.visibility_off,
                    ),
                  ),
                ),
                controller: newPasswordController,
              ),
              const SizedBox(height: 20.0),
              TextFormField(
                obscureText: !confirmPasswordVisible,
                decoration: InputDecoration(
                  labelText: 'Confirm Password',
                  suffixIcon: GestureDetector(
                    onTap: () {
                      setState(() {
                        confirmPasswordVisible = !confirmPasswordVisible;
                      });
                    },
                    child: Icon(
                      confirmPasswordVisible ? Icons.visibility : Icons.visibility_off,
                    ),
                  ),
                ),
                controller: confirmPasswordController,
              ),
              const SizedBox(height: 40.0),
              Align(
                alignment: Alignment.center,
                child: SizedBox(
                  width: 200.0, // Set desired width for the button
                  height: 60.0, // Set desired height for the button
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(15.0),
                      color: isPasswordMatch ? Colors.blue : Colors.grey,
                    ),
                    child: TextButton(
                      onPressed: isPasswordMatch ? () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => ProfilePage()),
                        );
                        // Add update logic here
                      } : null,
                      child: const Text(
                        'Update',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 30.0), // Add spacing between TextButton and the row
            ],
          ),
        ),
      ),
    );
  }
}
