import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';
import 'package:quickease_car/Colors/app_colors.dart';
import 'package:quickease_car/colors/app_images.dart';
import 'package:quickease_car/garage/wash_my_car.dart';
import 'package:quickease_car/utils/utilities.dart';

import 'package:quickease_car/widgets/app_buttons.dart';
import 'package:quickease_car/widgets/imag.dart';

class PostScreen extends StatefulWidget {
  String? carName;
  String? carImage;

  String? vName;
  String? vColor;

  PostScreen(this.carName,this.carImage, this.vName, this.vColor);

  @override
  State<PostScreen> createState() => _PostScreenState();
}

class _PostScreenState extends State<PostScreen> {
  final auth = FirebaseAuth.instance;
  final ref = FirebaseDatabase.instance.ref('Add Vehicle');

  @override
  void initState() {
    print("vName ${widget.vName} ${widget.vColor}  ${widget.carName} ${widget.carImage}");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Container(
              height: 40,
            ),
            Row(
              children: [
                Icon(
                  Icons.arrow_back_rounded,
                  size: 32,
                  color: Color(0xff277FC1),
                ),
                SizedBox(width: 80),
                Text(
                  'My Garage',
                  style: TextStyle(
                    fontSize: 24,
                    fontFamily: 'poppins',
                    color: Color(0xff2A2D37),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            Container(
              height: 25,
            ),
            Expanded(
              child: FirebaseAnimatedList(
                query: ref,
                itemBuilder: (context, snapshot, animation, index) {
                  String vehicleName = snapshot.child('vehicle name').value.toString();
                  String color = snapshot.child('color').value.toString();
                  String imageUrl = snapshot.child('vehicleList').value.toString();
                 // imageUrls.add(imageUrl);
                  return Container(
                    margin: EdgeInsets.symmetric(vertical: 8, horizontal: 0.3),
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: const Color(0xffFFFFFF),
                      border: Border.all(
                        color: const Color(0xffFFFFFF),
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(14),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.1),
                          spreadRadius: 0.0,
                          blurRadius: 0.0,
                          offset: const Offset(0, 4),
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        InkWell(
                          onTap: () {
                            // Add your logic here
                          },
                          child: Image.network(
                           imageUrl,
                            width: 100,
                           height: 100,
                            fit: BoxFit.cover,
                         ),
                       ),
                        SizedBox(height: 8),
                        Text(
                          ' $vehicleName',
                          style: TextStyle(
                            color: Color(0xff2B2F32),
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          ' $color',
                          style: TextStyle(
                            color: Color(0xffABAFB1),
                            fontSize: 16,
                          ),
                        ),


                      ],
                    ),
                  );
                },
              ),
            ),
            Container(
              height: 1,
              color: MyAppColor.lightColor,
            ),
            Container(
              padding: const EdgeInsets.only(top: 15, left: 170, right: 10, bottom: 5),
              child: AppButtons(
                textColor: Colors.white,
                borderColor: MyAppColor.buttonColor,
                height: 56,
                text: 'Next',
                onTap: () {
                  // Handle button tap
                },
                width: 200,
                backgroundColor: Color(0xff277FC1),
              ),
            ),
          ],
        ),
      ),
    );
  }

}
