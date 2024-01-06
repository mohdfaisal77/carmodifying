



import 'package:flutter/material.dart';
import 'package:quickease_car/Colors/app_colors.dart';
import 'package:quickease_car/vehicle/add_vehicle_page.dart';
import 'package:quickease_car/garage/wash_my_car.dart';



class Garage extends StatelessWidget {
  const Garage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(30.0, 100.0, 20.0, 20.0),
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => WashMyCar()),
                    );
                  },
                  child: const Icon(
                    Icons.arrow_back,
                    color: Colors.blue,
                    size: 35,
                  ),
                ),
                const SizedBox(width: 70.0),
                const Text(
                  'My Garage',
                  style: TextStyle(
                    color:MyAppColor.headingColor,
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/mygarage.png',
                  width: 300,
                  height: 300,
                ),
                const SizedBox(height: 40.0),
                const Text(
                  'There is no car in your garage',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16.0,
                  ),
                ),
                const SizedBox(height: 05.0),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(
                          builder: (context) => AddVehiclePage(),
                        ));
                    // Handle add car button press
                  },
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.add_circle_outline,
                        color: Colors.blue,
                        size: 24,
                      ),
                      SizedBox(height: 05.0),
                      Text(
                        '  Add Your Car',
                        style: TextStyle(
                          color:MyAppColor.blueColor,
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}




