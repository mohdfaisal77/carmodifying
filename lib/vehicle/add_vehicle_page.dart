import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quickease_car/garage/garage1.dart';
import 'package:quickease_car/garage/practice.dart';
import 'package:quickease_car/utils/utilities.dart';

class AddVehiclePage extends StatefulWidget {
  @override
  _AddVehiclePageState createState() => _AddVehiclePageState();
}

class _AddVehiclePageState extends State<AddVehiclePage> {
  final vehicleController = TextEditingController();
  final colorController = TextEditingController();
  final imgController = TextEditingController();
  bool loading = false;

  final databaseRef = FirebaseDatabase.instance.ref('Add Vehicle');
  String vehicleName = '';
  String vehicleColor = '';
  List<Vehicle> vehicleList = [];
  int indexVehicle = 0;
  bool isTouched = false;

  bool isSaveButtonEnabled() {
    return vehicleName.isNotEmpty && vehicleColor.isNotEmpty;
  }

  bool isSaveButtonFilled() {
    return isSaveButtonEnabled();
  }

  @override
  void initState() {
    vehicleList.add(Vehicle(name: "Sedan", image: "assets/images/car1.png"));
    vehicleList.add(Vehicle(name: "Sedan1", image: "assets/images/car2.png"));
    vehicleList.add(Vehicle(name: "Sedan2", image: "assets/images/car1.png"));
    vehicleList.add(Vehicle(name: "Sedan3", image: "assets/images/car2.png"));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Scrollable Row of Boxes',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: const EdgeInsets.only(top: 70, left: 10),
                alignment: Alignment.centerLeft,
                child: IconButton(
                  icon: const Icon(
                    Icons.arrow_back,
                    color: Colors.blue,
                    size: 35,
                  ),
                  onPressed: () {
                    // Add your onPressed logic here
                  },
                ),
              ),
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.only(left: 10, right: 10),
                alignment: Alignment.centerLeft,
                child: const Text(
                  'Add vehicle ',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.only(left: 10, right: 10),
                alignment: Alignment.centerLeft,
                child: const Text(
                  'Select your vehicle type',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                  width: double.infinity,
                  height: 150,
                  // Using ListView.builder
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: vehicleList.length,
                    // list item builder
                    itemBuilder: (BuildContext ctx, index) {
                      return Container(
                          key: ValueKey(vehicleList[index]),
                          margin: const EdgeInsets.all(15),
                          width: 150,
                          alignment: Alignment.center,
                          child: /*BoxItem(
                          image:  vehicleList[index].image??"",
                          text:  vehicleList[index].name??"",
                        ),*/
                          GestureDetector(
                            onTap: () {
                              indexVehicle = index;
                              isTouched = !isTouched;
                              vehicleList[index].isSelected =
                              !vehicleList[index].isSelected!;

                              setState(() {});
                              // },
                              //
                              // onTapDown: (details) {
                              //   setState(() {
                              //     isTouched = true;
                              //   });
                              // },
                              // onTapUp: (details) {
                              //   setState(() {
                              //     isTouched = false;
                              //   });
                            },
                            child: Opacity(
                              opacity: indexVehicle == index ? 0.5 : 1.0,
                              child: Container(
                                width: 150,
                                height: 150,
                                margin: const EdgeInsets.only(right: 10),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Image.asset(
                                      vehicleList[index].image ?? "",
                                      width: 80,
                                      height: 80,
                                    ),
                                    const SizedBox(height: 10),
                                    Text(
                                      vehicleList[index].name ?? "",
                                      style: const TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ));
                    },
                  )),
              /*   SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      BoxItem(

                        image: 'assets/images/car1.png',
                        text: 'Sedan',
                      ),
                      SizedBox(width: 10),
                      BoxItem(
                        image: 'assets/images/car2.png',
                        text: 'SUV',
                      ),
                      SizedBox(width: 10),
                      BoxItem(
                        image: 'assets/images/car1.png',
                        text: 'Hatchback',
                      ),
                      SizedBox(width: 10),
                      BoxItem(
                        image: 'assets/images/car2.png',
                        text: 'Pickup',
                      ),
                    ],
                  ),
                ),
              ),*/
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextFormField(
                  controller: vehicleController,
                  decoration: const InputDecoration(
                    labelText: 'Vehicle Name',
                    labelStyle: TextStyle(
                      color: Color(0xFF999999),
                    ),
                    contentPadding:
                    EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
                  ),
                  onChanged: (value) {
                    setState(() {
                      vehicleName = value;
                    });
                  },
                ),
              ),
              const SizedBox(height: 10),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextFormField(
                  controller: colorController,
                  decoration: const InputDecoration(
                    labelText: 'Color',
                    labelStyle: TextStyle(
                      color: Color(0xFF999999),
                    ),
                    contentPadding:
                    EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
                  ),
                  onChanged: (value) {
                    setState(() {
                      vehicleColor = value;
                    });
                  },
                ),
              ),
              const SizedBox(height: 200),
              Container(
                height: 1,
                color: Colors.grey,
              ),
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:
                        MaterialStateProperty.resolveWith<Color>(
                              (Set<MaterialState> states) {
                            if (isSaveButtonFilled()) {
                              return Colors.blue; // Filled button color
                            }
                            return Colors
                                .transparent; // Transparent button color
                          },
                        ),
                        foregroundColor:
                        MaterialStateProperty.resolveWith<Color>(
                              (Set<MaterialState> states) {
                            if (isSaveButtonFilled()) {
                              return Colors.white; // Filled button text color
                            }
                            return Colors.blue; // Outline button text color
                          },
                        ),
                        shape:
                        MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12.0),
                            side: const BorderSide(
                              color: Colors.blue, // Outline button border color
                              width: 2.0, // Outline button border width
                            ),
                          ),
                        ),
                        padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                          const EdgeInsets.symmetric(
                              vertical: 16.0, horizontal: 40.0),
                        ),
                      ),
                      onPressed: isSaveButtonEnabled()
                          ? () {
                        loading:
                        loading;
                        setState(() {
                          loading = true;
                        });
                        databaseRef
                            .child(DateTime.now()
                            .microsecondsSinceEpoch
                            .toString())
                            .set({
                          'id': DateTime.now()
                              .microsecondsSinceEpoch
                              .toString(),
                          'color': colorController.text.toString(),
                          'vehicle name':
                          vehicleController.text.toString(),
                        }).then((value) {
                          Utils().toastMeassage('Vehicle added');
                          setState(() {
                            loading = false;
                          });
                        }).onError((error, stackTrace) {
                          Utils().toastMeassage(error.toString());
                          setState(() {
                            loading = false;
                          });
                        });
                        print("Save");

                        Navigator.push(
                            context,
                            CupertinoPageRoute(
                                builder: (context) => PostScreen(
                                    vehicleList[indexVehicle].name!,
                                    vehicleList[indexVehicle].image!,
                                    vehicleController.text.toString(),
                                    colorController.text.toString())));

                        // Form is valid, perform save operation
                      }
                          : null, // Disable the button if text fields are empty
                      child: const Text('Save'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class BoxItem extends StatefulWidget {
  final String image;
  final String text;

  const BoxItem({
    required this.image,
    required this.text,
  });

  @override
  _BoxItemState createState() => _BoxItemState();
}

class _BoxItemState extends State<BoxItem> {
  bool isTouched = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (details) {
        setState(() {
          isTouched = true;
        });
      },
      onTapUp: (details) {
        setState(() {
          isTouched = false;
        });
      },
      child: Opacity(
        opacity: isTouched ? 0.5 : 1.0,
        child: Container(
          width: 150,
          height: 150,
          margin: const EdgeInsets.only(right: 10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                widget.image,
                width: 80,
                height: 80,
              ),
              const SizedBox(height: 10),
              Text(
                widget.text,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Vehicle {
  String? name;
  String? image;
  bool? isSelected = false;

  Vehicle({this.name, this.image, this.isSelected = false});

  Vehicle.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    image = json['image'];
    isSelected = json['isSelected'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['image'] = this.image;
    data['isSelected'] = this.isSelected;
    return data;
  }
}
