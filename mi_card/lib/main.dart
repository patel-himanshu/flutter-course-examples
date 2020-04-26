import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: Text('Mi Card'),
        ),
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  radius: 50.0,
                  backgroundImage: AssetImage('images/tony.jpeg'),
                ),
                Text(
                  'Tony Stark',
                  style: TextStyle(
                    fontFamily: 'IndieFlower-Regular',
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Text(
                  'Genius \n Billionaire \n Playboy \n Philanthropist',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.yellow,
                  ),
                ),
                SizedBox(
                  height: 15.0,
                  width: 200.0,
                  child: Divider(color: Colors.white, thickness: 1.0),
                ),
                // Method 1
                Card(
                  margin: EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
                  child: Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Row(
                      children: <Widget>[
                        Icon(
                          Icons.phone,
                          color: Colors.teal,
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                        Text(
                          '+1 123 456 789',
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.teal,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                // Method 2
                Card(
                  margin: EdgeInsets.symmetric(horizontal: 10.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.email,
                      color: Colors.teal,
                    ),
                    title: Text(
                      'tonystark@avengers.com',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.teal,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         backgroundColor: Colors.teal,
//         appBar: AppBar(
//           title: Center(child: Text('Flutter Layout Challenge')),
//           backgroundColor: Colors.orange,
//         ),
//         body: SafeArea(
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: <Widget>[
//               Container(
//                 height: double.infinity,
//                 width: 100.0,
//                 color: Colors.red,
//               ),
//               SizedBox(
//                 height: double.infinity,
//               ),
//               Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: <Widget>[
//                 Container(
//                   height: 100.0,
//                   width: 100.0,
//                   color: Colors.yellow,
//                 ),
//                 Container(
//                   height: 100.0,
//                   width: 100.0,
//                   color: Colors.green,
//                 ),
//               ],),
//               SizedBox(
//                 height: double.infinity,
//               ),
//               Container(
//                 height: double.infinity,
//                 width: 100.0,
//                 color: Colors.blue,
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         backgroundColor: Colors.blue,
//         body: SafeArea(
//           child: Column(
// //            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             crossAxisAlignment: CrossAxisAlignment.stretch,
// //            verticalDirection: VerticalDirection.up,
// //            mainAxisSize: MainAxisSize.min,
//             children: <Widget>[
//               Container(
//                 color: Colors.yellow,
//                 height: 100.0,
// //                width: 100.0,
//                 padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
//                 child: Text('Column 1'),
//               ),
//               SizedBox(
//                 height: 10.0,
//               ),
//               Container(
//                 color: Colors.orange,
//                 height: 100.0,
// //                width: 200.0,
//                 padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
//                 child: Text('Column 2'),
//               ),
//               Container(
//                 color: Colors.green,
//                 height: 100.0,
// //                width: 100.0,
//                 padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
//                 child: Text('Column 3'),
//               ),
//                 Container(
//                   height: 10.0,
// //                  width: double.infinity,
//                 ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
