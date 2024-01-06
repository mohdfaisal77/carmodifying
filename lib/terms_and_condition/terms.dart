import 'package:flutter/material.dart';
import 'package:quickease_car/login/sign_up.dart';
import 'package:quickease_car/address/add_address.dart';
import 'package:quickease_car/login/profile.dart';

class Terms extends StatelessWidget {
  const Terms({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(30.0, 70.0, 20.0, 20.0),
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ProfilePage()),
                    );
                    // Handle icon button press
                  },
                  child: const Icon(
                    Icons.arrow_back,
                    color: Colors.blue,
                    size: 35,
                  ),
                ),
                const SizedBox(width: 30.0),
                const Text(
                  'Terms & Conditions',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 20.0),

            child: Column(

              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [

                Text('Lorem ipsum dolor sit amet, consectetur',style:
                  TextStyle(
                    color: Color(0xff999999),
                    fontSize: 16.0,
                    wordSpacing: 6,
                  ),),
                SizedBox(height: 10,),
                Text('adipiscing elit. Quam blandit tristique',style:
    TextStyle(
    color: Color(0xff999999),
    fontSize: 16.0,
      wordSpacing: 6,
    ),),
                SizedBox(height: 10,),
                Text('elementum duis. Sem faucibus mattis',style:
    TextStyle(
    color: Color(0xff999999),
    fontSize: 16.0,
      wordSpacing: 6,
    ),), SizedBox(height: 10,),
                Text('suspendisse quam ultrices tortor pharetra ',style:
    TextStyle(
    color: Color(0xff999999),
    fontSize: 16.0,
      wordSpacing: 6,
    ),), SizedBox(height: 10,), Text('gravida. Tellus faucibus sit volutpat ',style:
    TextStyle(
    color: Color(0xff999999),
    fontSize: 16.0,
      wordSpacing: 6,
    ),), SizedBox(height: 10,),Text('venenatis accumsan ipsum, eros. Libero ',style:
    TextStyle(
    color: Color(0xff999999),
    fontSize: 16.0,
      wordSpacing: 6,
    ),), SizedBox(height: 10,),Text('interdum vitae laoreet in nunc non amet',style:
    TextStyle(
    color: Color(0xff999999),
    fontSize: 16.0,
      wordSpacing: 6,
    ),), SizedBox(height: 10,),Text('gravida aenean',style:
    TextStyle(
    color: Color(0xff999999),
    fontSize: 16.0,
      wordSpacing: 6,
    ),), SizedBox(height: 10,),
            Text('Urna, mi augue neque elit nisl scelerisque',style:
    TextStyle(
    color: Color(0xff999999),
    fontSize: 16.0,
      wordSpacing: 6,
    ),), SizedBox(height: 10,),Text('dolor nulla ultrices. Pellentesque purus,',style:
    TextStyle(
    color: Color(0xff999999),
    fontSize: 16.0,
      wordSpacing: 6,
    ),), SizedBox(height: 10,),Text('tortor ultricies integer pharetra scelerisque ',style:
    TextStyle(
    color: Color(0xff999999),
    fontSize: 16.0,
      wordSpacing: 6,
    ),), SizedBox(height: 10,),Text('cursus. Volutpat maecenas non sit sit.',style:
    TextStyle(
    color: Color(0xff999999),
    fontSize: 16.0,
      wordSpacing: 6,
    ),), SizedBox(height: 10,),Text('Suspendisse egestas ac vel dignissim ',style:
    TextStyle(
    color: Color(0xff999999),
    fontSize: 16.0,
      wordSpacing: 6,
    ),), SizedBox(height: 10,),Text('enim porttitor mi vel viverra. Morbi arcu ',style:
    TextStyle(
    color: Color(0xff999999),
    fontSize: 16.0,
      wordSpacing: 6,
    ),), SizedBox(height: 10,),Text('arcu ut in id. At arcu, mauris, in gravida ',style:
    TextStyle(
    color: Color(0xff999999),
    fontSize: 16.0,
      wordSpacing: 6,
    ),), SizedBox(height: 10,),Text('auctor malesuada tellus proin odio.A',style:
    TextStyle(
    color: Color(0xff999999),
    fontSize: 16.0,
      wordSpacing: 6,
    ),), SizedBox(height: 10,),
                Text('auctor malesuada tellus proin odio. A ',style:
    TextStyle(
    color: Color(0xff999999),
    fontSize: 16.0,
      wordSpacing: 6,
    ),), SizedBox(height: 10,),
                Text('pulvinar mauris posuere sit adipiscing',style:
                TextStyle(
    color: Color(0xff999999),
    fontSize: 16.0,
                  wordSpacing: 6,
    ),), SizedBox(height: 10,),
                Text('tellus. Quam senectus adipiscing',style:
    TextStyle(
    color: Color(0xff999999),
    fontSize: 16.0,
      wordSpacing: 6,
    ),), SizedBox(height: 10,),
                Text('pelientesque est ornare nec volutpat.',style:
                TextStyle(
    color: Color(0xff999999),
    fontSize: 16.0,
                  wordSpacing: 6,
    ),), SizedBox(height: 10,),

              ],
            ),
          ),
        ],
      ),
    );
  }
}
