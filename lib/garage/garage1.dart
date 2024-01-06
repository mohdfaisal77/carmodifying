import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:quickease_car/appointment/package.dart';

class Garage1 extends StatefulWidget {
  @override
  _Garage1State createState() => _Garage1State();
}

class _Garage1State extends State<Garage1> {
  bool isCheckboxSelected = false;
  final ref=FirebaseDatabase.instance.ref('Add Vehicle');

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Scrollable Row of Boxes',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: Column(
          children: <Widget>[
            Stack(
              alignment: Alignment.center,
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.only(top: 45, left: 10),
                  child: const Row(
                    children: <Widget>[
                      Positioned(
                        top: 60,
                        left: 10,
                        child: Icon(
                          Icons.arrow_back,
                          size: 32,
                          color: Colors.blue,
                        ),
                      ),
                      SizedBox(width: 10),
                    ],
                  ),
                ),
                const Positioned(
                  top: 50,
                  child: Text(
                    'My Garage',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 50, right: 10),
                    child: Icon(
                      isCheckboxSelected ? Icons.delete : Icons.add_circle_outline,
                      color: const Color(0xff277FC1),
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: ScrollableRowOfBoxes(
                onCheckboxSelected: (selected) {
                  setState(() {
                    isCheckboxSelected = selected;
                  });
                },
              ),
            ),
            Expanded(
              child: Container(),
            ), // Added expanded container to push the save button to the bottom
            Container(
              height: 1,
              color: Colors.grey.withOpacity(0.4), // Gray color line
            ),
            Container(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 16, right: 16),
              child: Align(
                alignment: Alignment.bottomRight,
                child: SizedBox(
                  width: 160.0, // Set desired width for the button
                  height: 55.0, // Set desired height for the button
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(15.0),
                      color: isCheckboxSelected ? Colors.blue : Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.white.withOpacity(0.3),
                          spreadRadius: 2.0,
                          blurRadius: 5.0,
                          offset: const Offset(0, 3),
                        ),
                      ],
                      border: Border.all(
                        color: const Color(0xff277FC1), // Replace "Colors.blue" with your desired border color
                        width: 2.0, // Set desired border width
                      ),
                    ),
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => PackagePage()),
                        );
                        // Add signup logic here
                      },
                      child:  Text(
                        'Next',
                        style: TextStyle(
                          color: isCheckboxSelected ? Colors.white : Colors.blue,
                          fontFamily: 'Poppins',
                          fontSize: 16.0,
                        ),
                      ),
                    ),
                  ),
                ),

              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ScrollableRowOfBoxes extends StatefulWidget {
  final Function(bool) onCheckboxSelected;

  const ScrollableRowOfBoxes({super.key, required this.onCheckboxSelected});

  @override
  _ScrollableRowOfBoxesState createState() => _ScrollableRowOfBoxesState();
}

class _ScrollableRowOfBoxesState extends State<ScrollableRowOfBoxes> {
  List<bool> isCheckedList = [false, false];

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        BoxItem(
          image: 'assets/images/car1.png',
          text: '\n Tesla Model S \n\n Sedan, Red \n',
          width: 350,
          height: 80,
          isChecked: isCheckedList[0],
          onCheckboxChanged: (value) {
            setState(() {
              isCheckedList[0] = value;
              widget.onCheckboxSelected(isCheckedList.contains(true));
            });
          },
        ),
        const SizedBox(height: 10),
        BoxItem(
          image: 'assets/images/car2.png',
          text: '\n Lamborghini Urus \n\n SUV, Yellow \n',
          width: 350,
          height: 80,
          isChecked: isCheckedList[1],
          onCheckboxChanged: (value) {
            setState(() {
              isCheckedList[1] = value;
              widget.onCheckboxSelected(isCheckedList.contains(true));
            });
          },
        ),
      ],
    );
  }
}

class BoxItem extends StatelessWidget {
  final String image;
  final String text;
  final double width;
  final double height;
  final bool isChecked;
  final Function(bool) onCheckboxChanged;

  const BoxItem({super.key,
    required this.image,
    required this.text,
    required this.width,
    required this.height,
    required this.isChecked,
    required this.onCheckboxChanged,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onCheckboxChanged(!isChecked);
      },
      child: Container(
        width: width,
        height: height,
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: const Color(0xffFFFFFF),
          border: Border.all(
            color: const Color(0xffFFFFFF),
            width: 1,
          ),
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 2.0,
              blurRadius: 5.0,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Icon(
                isChecked ? Icons.check_box : Icons.check_box_outline_blank,
                color: Colors.blue,
                size: 24,
              ),
            ),
            Expanded(
              child: Align(
                alignment: Alignment.centerLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: text
                      .split('\n')
                      .map((line) => getColoredText(line))
                      .toList(),
                ),
              ),
            ),
            Image.asset(
              image,
              width: 80,
              height: 80,
            ),
          ],
        ),
      ),
    );
  }

  Widget getColoredText(String text) {
    List<Widget> coloredTextSpans = [];
    List<String> words = text.split(' ');

    for (String word in words) {
      Color textColor = Colors.black;

      if (word.contains('Tesla Model S') || word.contains('Lamborghini Urus')) {
        textColor = const Color(0xff2B2F32);
      } else if (word.contains('Sedan') || word.contains('SUV,')) {
        textColor = Colors.grey;
      } else if (word.contains('Red') || word.contains('Yellow')) {
        textColor = Colors.grey;
      }

      coloredTextSpans.add(
        Text(
          '$word ',
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: textColor,
            wordSpacing: 4,
          ),
        ),
      );
    }

    return Wrap(
      children: coloredTextSpans,
    );
  }
}
