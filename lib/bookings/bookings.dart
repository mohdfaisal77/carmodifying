import 'package:flutter/material.dart';
import 'package:quickease_car/login/profile.dart';
import 'package:quickease_car/garage/wash_my_car.dart';

void main() {
  runApp(const BookingPage());
}

class BookingPage extends StatelessWidget {
  const BookingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white, // Set the background color here
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 80.0),
              Text(
                'Wash My Car',
                style: TextStyle(
                  fontFamily: 'Poppins',
                ),
              ),

              const SizedBox(height: 610.0),





              const SizedBox(height: 80.0),
              BottomNavigationBar(
                items: [

                  BottomNavigationBarItem(
                    icon: Image.asset(
                      'assets/images/home.png',
                      width: 30,
                      height: 30,
                    ),
                    label: '',
                  ),
                  BottomNavigationBarItem(
                    icon: Image.asset(
                      'assets/images/booking.png',
                      width: 50,
                      height: 50,
                    ),
                    label: '',
                  ),
                  BottomNavigationBarItem(
                    icon: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => ProfilePage()),
                        );
                      },
                      child: Image.asset(
                        'assets/images/profile.png',
                        width: 30,
                        height: 30,
                      ),
                    ),
                    label: '',
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
