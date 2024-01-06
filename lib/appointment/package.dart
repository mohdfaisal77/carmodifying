import 'package:flutter/material.dart';
import 'package:quickease_car/Colors/app_colors.dart';
import 'package:quickease_car/bookings/bookings.dart';
import 'package:quickease_car/bookings/my_bookings.dart';
import 'package:quickease_car/login/sign_up.dart';
import 'package:quickease_car/address/my_address.dart';
import 'package:quickease_car/widgets/app_buttons.dart';

class PackagePage extends StatefulWidget {
  @override
  _PackagePageState createState() => _PackagePageState();
}

class _PackagePageState extends State<PackagePage> {
  bool isIconTapped = false;
  bool isIconTap = false;
  bool isIconTap3 = false;
  bool isIconTap4 = false;
  bool isIconTap5 = false;
  bool isIconTap6 = false;
  bool isIconTap7 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30),
            Padding(
              padding: EdgeInsets.only(left: 5.0, top: 3.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: IconButton(
                  icon: Icon(
                    Icons.arrow_back,
                    color: Color(0xff277FC1),
                    size: 35,
                  ),
                  onPressed: () {
                    // Handle back button press
                  },
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: const Text(
                "Package & Add One",
                style: TextStyle(
                  fontFamily: 'Poppins',
                  color: MyAppColor.headingColor,
                  fontSize: 24.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(height: 14),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 0, 20, 0),
                  child: Text(
                    "Choose Package",
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 16.0,
                      color: MyAppColor.lightColor,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),

              ],
            ),
            SizedBox(height: 20),
            Container(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [

                      Container(
                        margin: EdgeInsets.only(left: 13),
                        width: 262,
                        height: 407, // Updated height
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.blue,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(13.0),
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                              left: 16,
                              top: 15,
                              child: Text('Exterior wash',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  color:MyAppColor.headingColor,
                                  fontSize: 24.0,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            Positioned(
                              left: 16,
                              top: 45,
                              child: Text('Includes',

                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.w400,
                                color:  MyAppColor.lightColor,
                                ),),
                            ),
                            SizedBox(height: 90,),
                            Positioned(
                              left: 16,
                              top: 75,
                                child:Row(
                                  children: [
                                    Icon(Icons.circle_rounded,
                                      size: 8,),
                                    Text('  Optimum Wash & Shine',

                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        color:MyAppColor.headingColor,
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                )
                            ),
                            Positioned(
                              left: 16,
                              top: 95,
                                child:Row(
                                  children: [
                                    Icon(Icons.circle_rounded,
                                      size: 8,),
                                    Text('  Bug Removal',

                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        color:MyAppColor.headingColor,
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                )
                            ),
                            Positioned(
                              left: 16,
                              top: 115,
                                child:Row(
                                  children: [
                                    Icon(Icons.circle_rounded,
                                      size: 8,),
                                    Text('  Tar Removal',

                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        color:MyAppColor.headingColor,
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                )
                            ),
                            Positioned(
                              left: 16,
                              top: 135,
                                child:Row(
                                  children: [
                                    Icon(Icons.circle_rounded,
                                      size: 8,),
                                    Text('  Windows',

                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        color:MyAppColor.headingColor,
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                )
                            ),
                            Positioned(
                              left: 16,
                              top: 155,
                              child:Row(
                                children: [
                                  Icon(Icons.circle_rounded,
                                  size: 8,),
                                 Text('  Wheels',

                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      color:MyAppColor.headingColor,
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              )

                            ),
                            Positioned(
                              left: 33,
                              top: 165,
                              child: Container(
                                height: 10,
                              ),
                            ),
                            Positioned(
                              left: 110,
                              top: 195,
                              child: Container(
                                child: Row( children:[
                                  Icon(
                                    Icons.attach_money_rounded,
                                    color: Colors.grey,
                                    size: 14.0,
                                  ),
                                  Text('18',
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 32.0,
                                      color: Color(0xff000000),
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                                ),

                              ),
                            ),
Positioned(child:
                            AppButtons(textColor: Colors.blueAccent, backgroundColor: Colors.white, borderColor: Colors.blueAccent, text: 'Select', width: 140, height:60, onTap: (){


                            }),
  top:250,left:65
),
                            SizedBox(height: 8),

                            Positioned(child:
                            Text('5 for Trucks, Vans, SUV'),
                                top:320,left:75
                            ),
                          ],
                        )

                      ),
                    Container(
                      margin: EdgeInsets.only(left: 13),
                      width: 262,
                      height: 407, // Updated height
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.blue,
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(13.0),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Exterior wash'),
                          Text('Optimum Wash & Shine'),
                          Text('Bug Removal'),
                          Text('Tar Removal'),
                          Text('Windows'),
                          Text('Wheels'),
                          Container(height: 3,),
                          Text('18'),

                          SizedBox(height: 8),

                        ],
                      ),
                    ),

                  ],
                ),
              ),
            ),

SizedBox(height: 28,),
            Container(
              margin: EdgeInsets.only(left: 13),
              child: const Text(
                "Select Add One",
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 16.0,
                  color:Color(0xff2B2F32),
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            SizedBox(height: 20,),


            GestureDetector(
              onTap: () {
                setState(() {
                  isIconTapped = !isIconTapped;
                });
              },
              child: Padding(
                padding: const EdgeInsets.fromLTRB(16, 0, 20, 0),
                child: Row(
                  children: [
                    Icon(
                      isIconTapped ? Icons.check_box : Icons.check_box_outline_blank,
                      color: Colors.blue,
                    ),
                    SizedBox(width: 8),
                    Text(
                      "3 Months Wax + 10 min",
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 16.0,
                        color:MyAppColor.lightBlackColor,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(width: 83),
                    Icon(
                      Icons.attach_money,

                      color: Color(0xff000000),
                      size: 16.0,
                    ),
                    Text(
                      "25.00",
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 16.0,
                        color: Color(0xff000000),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 15,),
            Padding(padding:  const EdgeInsets.fromLTRB(16, 0, 20, 0),
            child:Container(

              height: 1,
              color:Colors.grey,
            ),
        ),
            SizedBox(height: 15,),
            GestureDetector(
              onTap: () {
                setState(() {
                  isIconTap = !isIconTap;
                });
              },
              child: Padding(
                padding: const EdgeInsets.fromLTRB(16, 0, 20, 0),
                child: Row(
                  children: [
                    Icon(
                      isIconTap ? Icons.check_box : Icons.check_box_outline_blank,
                      color: Colors.blue,
                    ),
                    SizedBox(width: 8),
                    Text(
                      "6 Months Wax + 30 min",
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 16.0,
                        color:MyAppColor.lightBlackColor,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(width: 83),
                    Icon(
                      Icons.attach_money,
                      color: Color(0xff000000),
                      size: 16.0,
                    ),
                    Text(
                      "25.00",
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 16.0,
                        color: Color(0xff000000),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 15,),
            Padding(padding:  const EdgeInsets.fromLTRB(16, 0, 20, 0),
              child:Container(

                height: 1,
                color:Colors.grey,
              ),
            ),
            SizedBox(height: 15,),
            GestureDetector(
              onTap: () {
                setState(() {
                  isIconTap3 = !isIconTap3;
                });
              },
              child: Padding(
                padding: const EdgeInsets.fromLTRB(16, 0, 20, 0),
                child: Row(
                  children: [
                    Icon(
                      isIconTap3 ? Icons.check_box : Icons.check_box_outline_blank,
                      color: Colors.blue,
                    ),
                    SizedBox(width: 8),
                    Text(
                      "Engine Bay Detail + 15 min",
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 16.0,
                        color:Color(0xff2B2F32),
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(width: 63),
                    Icon(
                      Icons.attach_money,
                      color: Color(0xff000000),

                      size: 16.0,
                    ),
                    Text(
                      "25.00",
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 16.0,
                        color: Color(0xff000000),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 15,),
            Padding(padding:  const EdgeInsets.fromLTRB(16, 0, 20, 0),
              child:Container(

                height: 1,
                color:Colors.grey,
              ),
            ),
            SizedBox(height: 15,),
            GestureDetector(
              onTap: () {
                setState(() {
                  isIconTap4 = !isIconTap4;
                });
              },
              child: Padding(
                padding: const EdgeInsets.fromLTRB(16, 0, 20, 0),
                child: Row(
                  children: [
                    Icon(
                      isIconTap4 ? Icons.check_box : Icons.check_box_outline_blank,
                      color: Colors.blue,
                    ),
                    SizedBox(width: 8),
                    Text(
                      "Interior Spot Cleaning + 10 min",
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 16.0,
                        color:Color(0xff2B2F32),
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(width: 36),
                    Icon(
                      Icons.attach_money,
                      color: Color(0xff000000),
                      size: 16.0,
                    ),
                    Text(
                      "25.00",
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 16.0,
                        color: Color(0xff000000),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 15,),
            Padding(padding:  const EdgeInsets.fromLTRB(16, 0, 20, 0),
              child:Container(

                height: 1,
                color:Color(0xff2B2F32),
              ),
            ),
            SizedBox(height: 15,),
            GestureDetector(
              onTap: () {
                setState(() {
                  isIconTap5 = !isIconTap5;
                });
              },
              child: Padding(
                padding: const EdgeInsets.fromLTRB(16, 0, 20, 0),
                child: Row(
                  children: [
                    Icon(
                      isIconTap5 ? Icons.check_box : Icons.check_box_outline_blank,
                      color: Colors.blue,
                    ),
                   // SizedBox(width: 0),
                    Text(
                      "Premium Exterior Foam + 10 min",
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 16.0,
                        color:Color(0xff2B2F32),
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(width: 33),
                    Icon(
                      Icons.attach_money,
                      color: Color(0xff000000),
                      size: 16.0,
                    ),
                    Text(
                      "25.00",
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 16.0,
                        color: Color(0xff000000),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 15,),
            Padding(padding:  const EdgeInsets.fromLTRB(16, 0, 20, 0),
              child:Container(

                height: 1,
                color:Colors.grey,
              ),
            ),
            SizedBox(height: 15,),
            GestureDetector(
              onTap: () {
                setState(() {
                  isIconTap6 = !isIconTap6;
                });
              },
              child: Padding(
                padding: const EdgeInsets.fromLTRB(16, 0, 20, 0),
                child: Row(
                  children: [
                    Icon(
                      isIconTap6 ? Icons.check_box : Icons.check_box_outline_blank,
                      color: Colors.blue,
                    ),
                    SizedBox(width: 8),
                    Text(
                      "Tire Shine",
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 16.0,
                        color:Color(0xff2B2F32),
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(width: 170),
                    Icon(
                      Icons.attach_money,
                      color: Color(0xff000000),
                      size: 16.0,
                    ),
                    Text(
                      "25.00",
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 16.0,
                        color: Color(0xff000000),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ),


            SizedBox(height: 15,),
            Padding(padding:  const EdgeInsets.fromLTRB(16, 0, 20, 0),
              child:Container(

                height: 1,
                color:Colors.grey,
              ),
            ),
            SizedBox(height: 15,),
            GestureDetector(
              onTap: () {
                setState(() {
                  isIconTap7 = !isIconTap7;
                });
              },
              child: Padding(
                padding: const EdgeInsets.fromLTRB(16, 0, 20, 0),
                child: Row(
                  children: [
                    Icon(
                      isIconTap7 ? Icons.check_box : Icons.check_box_outline_blank,
                      color: Colors.blue,
                    ),
                    SizedBox(width: 8),
                    Text(
                      "Window Rain-X + 5 min",
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 16.0,
                        color:Color(0xff2B2F32),
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(width: 85),
                    Icon(
                      Icons.attach_money,
                      color: Color(0xff000000),
                      size: 16.0,
                    ),
                    Text(
                      "25.00",
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 16.0,
                        color: Color(0xff000000),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 15,),
            Padding(padding:  const EdgeInsets.fromLTRB(16, 0, 20, 0),
              child:Container(

                height: 1,
                color:Colors.grey,
              ),
            ),

            SizedBox(height: 36,),
Container(height: 1,
color:Colors.grey),
            SizedBox(height: 15,),
Container(
  child: Row(
    children: [

      Padding(padding: const EdgeInsets.fromLTRB(8, 3, 17, 0),),
Container(
  child: Column(
    children: [
      Text('Subtotal',
        style: TextStyle(
          fontFamily: 'Poppins',
          fontSize: 16.0,
          color: MyAppColor.buttonColor,
          fontWeight: FontWeight.w500,
        ),
      ),
     Container(
       child: Row( children:[
         Icon(
         Icons.attach_money,
           color: Color(0xff000000),
         size: 20.0,
       ),
         Text('70',
           style: TextStyle(
             fontFamily: 'Poppins',
             fontSize: 32.0,
             color: Color(0xff000000),
             fontWeight: FontWeight.w500,
           ),
         ),
       ],
       ),
     ),

    ],
  ),
),
Container(height: 10,),
      SizedBox(width: 110,height: 3,),
      Container(

        margin: EdgeInsets.only(left:3,right: 8,bottom:0,top:10),

        child: AppButtons(textColor: Colors.white, backgroundColor: MyAppColor.buttonColor, borderColor: Colors.black12, text: "Next", width: 145,height:55 , onTap: () {

          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Mybookings()),
          );      // Handle button tap event here

        },),

      ),
    ],
  )

),

            SizedBox(height: 36,),







          ],
        ),
        ),
      ),
    );
  }
}


