import 'package:flutter/material.dart';
import 'package:quickease_car/colors/app_images.dart';
import 'package:quickease_car/garage/wash_my_car.dart';
import 'package:quickease_car/widgets/app_buttons.dart';

void main() {
  runApp(const HomePage());
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

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
              Container(
                width: double.infinity,
                padding: const EdgeInsets.fromLTRB(20.0, 100.0, 20.0, 20.0),
                child: Image.asset(
                  AppImages.logo,

                  width: 162.77,
                  height: 39.75,
                ),
              ),
              ColorFiltered(
                colorFilter: const ColorFilter.mode(
                  Colors.white, // Set the desired color here
                  BlendMode.modulate,
                ),
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(5.0),
                  child: Image.asset(
                   AppImages.car,
                    //width: 390,
                    //height: 390,
                  ),
                ),
              ),
              const SizedBox(height: 50.0),
              ElevatedButton(
                style: ButtonStyle(
                  padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                    const EdgeInsets.symmetric(vertical: 18.0, horizontal: 120.0),
                  ),
                  textStyle: MaterialStateProperty.all<TextStyle>(
                    Theme.of(context).textTheme.labelLarge!.copyWith(fontSize: 16.0),
                  ),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                  ),
                ),
                child: const Text(
                  'Wash My Car',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => WashMyCar()),
                  );
                },
              ),
              const SizedBox(height: 100.0),



              BottomNavigationBar(
                items: [

                  BottomNavigationBarItem(
                    icon: Image.asset(
                      AppImages.home,
                      color: Colors.blueAccent,
                      width: 20,
                      height: 20,
                    ),
                    label: 'Home',

                  ),
                  BottomNavigationBarItem(
                    icon: Image.asset(

                      AppImages.bookinicon,
                      color: Colors.grey,
                      width: 30,
                      height: 30,
                    ),
                    label: 'My Bookings',
                  ),
                  BottomNavigationBarItem(
                    icon: Image.asset(
                      AppImages.usericon,
                      color: Colors.grey,
                      width: 20,
                      height: 20,
                    ),
                    label: 'Profile',
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
