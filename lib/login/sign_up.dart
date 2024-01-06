import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:quickease_car/Colors/app_colors.dart';
import 'package:quickease_car/login/login_page.dart';

import 'package:quickease_car/main.dart';
import 'package:quickease_car/utils/utilities.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool passwordsMatch = false;

  bool _passwordVisible = false;
  bool _confirmPasswordVisible = false;
  bool loading=false;
  final _formKey=GlobalKey<FormState>();
  final emailController=TextEditingController();
  final nameController=TextEditingController();
  final phoneController=TextEditingController();
  final passwordController=TextEditingController();
  final _auth=FirebaseAuth.instance;
  final databaseRef=FirebaseDatabase.instance.ref('User Details');
  final UserController=TextEditingController();
  final ref = FirebaseDatabase.instance.ref('Post');
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    passwordController.dispose();
    emailController.dispose();
    phoneController.dispose();
  }
  void login(){
    setState(() {
      loading:true;
    });
    _auth.createUserWithEmailAndPassword(email: emailController.text.toString(),
        password: passwordController.text.toString()).then((value){
      setState(() {
        Utils().toastMeassage('Successfully User Created');
      });

    }).onError((error, stackTrace) {
      Utils().toastMeassage(error.toString());
      setState(() {
        loading:false;
      });
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
                    child: Icon(Icons.arrow_back,size: 32,color:MyAppColor.buttonColor,),
                  ),
                ),
              ),
              Container(height: 20),
              const Text(
                "Sign Up",
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 24.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Container(height: 10),
              Container(
                child: Column(
                  children: [
                    Form(
                      key:_formKey,
                      child: Column(
                        children: [
                          TextFormField(
                            controller:UserController,
                            decoration: const InputDecoration(
                              labelText: 'Name',
                            ),
                          ),
                          const SizedBox(height: 20.0),
                          TextFormField(
                              keyboardType: TextInputType.text,
                              controller: emailController,
                              decoration: const InputDecoration(
                                labelText: 'Email',
                              ),
                              validator: (value){
                                if(value!.isEmpty){
                                  return 'Enter email';
                                }
                                return null;
                              }
                          ),
                          const SizedBox(height: 20.0),
                          TextFormField(
                            decoration: const InputDecoration(
                              labelText: 'Phone',
                            ),
                          ),
                          const SizedBox(height: 20.0),
                          TextFormField(
                              controller: passwordController,
                              obscureText: !_passwordVisible,
                              decoration: InputDecoration(
                                labelText: 'Password',
                                suffixIcon: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      loading=true;
                                      _passwordVisible = !_passwordVisible;
                                    });
                                  },
                                  child: Icon(
                                    _passwordVisible ? Icons.visibility : Icons.visibility_off,
                                  ),
                                ),
                              ),
                              validator: (value){
                                if(value!.isEmpty){
                                  return 'Enter Password';
                                }
                                return null;
                              }
                          ),
                          const SizedBox(height: 20.0),
                          TextFormField(
                            obscureText: !_confirmPasswordVisible,
                            decoration: InputDecoration(
                              labelText: 'Confirm Password',
                              suffixIcon: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    _confirmPasswordVisible = !_confirmPasswordVisible;
                                  });
                                },
                                child: Icon(
                                  _confirmPasswordVisible ? Icons.visibility : Icons.visibility_off,
                                ),
                              ),
                            ),
                            validator: (value) {
                              if (value != passwordController.text) {
                                return 'Passwords do not match';
                              }
                              return null;
                            },
                          ),
                        ],
                      ),
                    )
                  ],
                ),
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
                      color: Colors.blue,
                    ),
                    child: TextButton(
                      onPressed: () {
                        databaseRef.child('1').set({'name':UserController.text.toString(),
                          'phone':UserController.text.toString(),
                        }).then((value) {

                        });
                        if (_formKey.currentState!.validate()) {
                          login();
                        };
                        // Add signup logic here
                      },
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Text(
                            'Create',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                            ),
                          ),

                        ],
                      ),
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 30.0), // Add spacing between TextButton and the row
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Already have an account? ',
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Poppins',
                      fontSize: 16.0,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      // Perform the action when the text is clicked
                      // For example, show a password recovery dialog or navigate to a password recovery screen
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginPage()),
                      );
                    },
                    child: Text(
                      'Login',
                      style: TextStyle(
                        color: Colors.blue,
                        decoration: TextDecoration.none,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
