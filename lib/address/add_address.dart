import 'package:flutter/material.dart';
import 'package:quickease_car/Colors/app_colors.dart';
import 'package:quickease_car/appointment/appointment_page.dart';
import 'package:quickease_car/garage/wash_my_car.dart';

class AddAddress extends StatefulWidget {
  @override
  _AddAddressState createState() => _AddAddressState();
}

class _AddAddressState extends State<AddAddress> {
  bool isCheckboxSelected = false;

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
                  padding: EdgeInsets.only(top: 45, left: 10),
                  child: Row(
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
                Positioned(
                  top: 50,
                  child: Text(
                    'My Address',
                    style: TextStyle(
                      color: MyAppColor.headingColor,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: EdgeInsets.only(top: 50, right: 10),
                    child: Icon(
                      isCheckboxSelected ? Icons.delete : Icons.add_circle_outline,
                      color: Color(0xff277FC1),
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
              height: 25,
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 16, right: 16),
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
                        color: Color(0xff277FC1), // Replace "Colors.blue" with your desired border color
                        width: 2.0, // Set desired border width
                      ),
                    ),
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => AppointmentPage()),
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

  const ScrollableRowOfBoxes({required this.onCheckboxSelected});

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
          image: 'assets/images/mask_group.png',
          text: '\n Home S \n\n 1120 Jerde Camp Apt. 443 \n',
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
        SizedBox(height: 10),
        BoxItem(
          image: 'assets/images/mask_group.png',
          text: '\n Office \n\n 1120 Jerde Camp Apt. 443 \n',
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

  const BoxItem({
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
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Color(0xffFFFFFF),
          border: Border.all(
            color: Color(0xffFFFFFF),
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
              padding: EdgeInsets.all(10.0),
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

      if (word.contains('Home S') || word.contains('Office')) {
        textColor = Color(0xff2B2F32);
      } else if (word.contains('1120') || word.contains('Jerde')) {
        textColor = Colors.grey;
      } else if (word.contains('Camp') || word.contains('443')) {
        textColor = Colors.grey;
      }
      else if (word.contains('Apt.')) {
        textColor = Colors.grey;
      }

      coloredTextSpans.add(
        Text(
          word + ' ',
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
