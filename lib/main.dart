import 'package:chatting/views/signIn.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: SignIn(),
    );
  }
}

// class ChatScreen extends StatefulWidget {
//   // final ConversationModel conversation;

//   // const ChatScreen({Key key, this.conversation}) : super(key: key);
//   @override
//   _ChatScreenState createState() => _ChatScreenState();
// }

// class _ChatScreenState extends State<ChatScreen> {
//   // final ConversationModel conversation;

//   // _ChatScreenState(this.conversation);
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color(0xFFe8dfd8),
//       appBar: PreferredSize(
//         preferredSize: Size.fromHeight(63.0),
//         child: AppBar(
//           backgroundColor: Color(0xFF128C7E),
//           leading: IconButton(
//             icon: Icon(Icons.arrow_back, color: Colors.white),
//             onPressed: () => Navigator.of(context).maybePop(),
//           ),
//           titleSpacing: 0,
//           title: ListTile(
//             contentPadding: EdgeInsets.all(0),
//             // leading: CircleAvatar(
//             //   backgroundImage: NetworkImage(conversation.image),
//             // ),
//             title: Text(
//               'hey',
//               style: TextStyle(color: Colors.white, fontSize: 18),
//             ),
//             subtitle: Text(
//               '27/1/2020',
//               style: TextStyle(color: Colors.white.withOpacity(.7)),
//             ),
//           ),
//           actions: <Widget>[
//             Icon(Icons.videocam),
//             SizedBox(
//               width: 15,
//             ),
//             Icon(Icons.call),
//             SizedBox(
//               width: 15,
//             ),
//             Icon(Icons.more_vert),
//             SizedBox(
//               width: 5,
//             ),
//           ],
//         ),
//       ),
//       body: SingleChildScrollView(
//         child: Container(
//           // height: MediaQuery.of(context).size.height -
//           //     MediaQuery.of(context).padding.top -
//           //     kToolbarHeight,
//           decoration: BoxDecoration(
//             image: DecorationImage(
//               image: AssetImage("assets/backgroundImage.png"),
//               fit: BoxFit.cover,
//             ),
//           ),
//           child: Column(
//             // mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             // crossAxisAlignment: CrossAxisAlignment.start,
//             children: <Widget>[
//               ListView.builder(
//                 itemBuilder: (context, index) {
//                   return Container(
//                     child: Text('hello'),
//                   );
//                 },
//               ),
//               // Expanded(
//               //   child: Column(
//               //     crossAxisAlignment: CrossAxisAlignment.start,
//               //     children: <Widget>[
//               //       Stack(
//               //         overflow: Overflow.visible,
//               //         children: <Widget>[
//               //           Container(
//               //             padding:
//               //                 EdgeInsets.symmetric(horizontal: 12, vertical: 5),
//               //             margin: EdgeInsets.symmetric(
//               //                 horizontal: 21, vertical: 12),
//               //             decoration: BoxDecoration(
//               //               color: Colors.white,
//               //               borderRadius: BorderRadius.circular(5),
//               //             ),
//               //             child: Row(
//               //               mainAxisSize: MainAxisSize.min,
//               //               children: <Widget>[
//               //                 Text('hello',
//               //                     style: TextStyle(
//               //                       fontSize: 17,
//               //                     )),
//               //                 SizedBox(
//               //                   width: 5,
//               //                 ),
//               //                 Padding(
//               //                   padding: const EdgeInsets.only(top: 21),
//               //                   child: Text(
//               //                     '2/4/19',
//               //                     style: TextStyle(
//               //                         fontSize: 12, color: Colors.grey),
//               //                   ),
//               //                 ),
//               //               ],
//               //             ),
//               //           ),
//               //           Positioned(
//               //             left: 7,
//               //             top: 12,
//               //             child: ClipPath(
//               //               clipper: TriangleClipper(),
//               //               child: Container(
//               //                 height: 20,
//               //                 width: 30,
//               //                 color: Colors.white,
//               //               ),
//               //             ),
//               //           )
//               //         ],
//               //       ),
//               //     ],
//               //   ),
//               // ),
//               // Text('h'),
//               Container(
//                 padding: EdgeInsets.only(
//                     top: MediaQuery.of(context).size.height * 0.76),
//                 child: Row(
//                   children: <Widget>[
//                     Stack(
//                       overflow: Overflow.visible,
//                       children: <Widget>[
//                         Container(
//                           padding: EdgeInsets.fromLTRB(12, 12, 12, 0),
//                           margin: EdgeInsets.fromLTRB(12, 12, 12, 0),
//                           decoration: BoxDecoration(
//                             color: Colors.white,
//                             borderRadius: BorderRadius.circular(12),
//                           ),
//                           child: Row(
//                             children: <Widget>[
//                               Icon(
//                                 Icons.tag_faces,
//                                 color: Colors.grey,
//                                 size: 35,
//                               ),
//                               SizedBox(
//                                 width: 5,
//                               ),
//                               Container(
//                                 width: 211,
//                                 child: TextField(
//                                   decoration: InputDecoration(
//                                       border: InputBorder.none,
//                                       hintText: 'Type a message',
//                                       contentPadding: EdgeInsets.only(left: 5),
//                                       hintStyle: TextStyle(
//                                           color: Colors.grey, fontSize: 18)),
//                                 ),
//                               ),
//                               SizedBox(
//                                 width: 5,
//                               ),
//                               Icon(
//                                 Icons.camera_alt,
//                                 color: Colors.grey,
//                                 size: 35,
//                               )
//                             ],
//                           ),
//                         ),
//                         Positioned(
//                           right: -3,
//                           top: 12,
//                           child: ClipPath(
//                             clipper: TriangleClipper(),
//                             child: Container(
//                               height: 20,
//                               width: 30,
//                               color: Colors.white,
//                             ),
//                           ),
//                         )
//                       ],
//                     ),
//                     Container(
//                       padding: EdgeInsets.all(12),
//                       decoration: BoxDecoration(
//                           color: Color(0xFF128C7E), shape: BoxShape.circle),
//                       child: Icon(
//                         Icons.keyboard_voice,
//                         color: Colors.white,
//                         size: 32,
//                       ),
//                     )
//                   ],
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// class TriangleClipper extends CustomClipper<Path> {
//   @override
//   Path getClip(Size size) {
//     final path = Path();
//     path.lineTo(size.width, 0.0);
//     path.lineTo(size.width / 2, size.height);
//     path.close();
//     return path;
//   }

//   @override
//   bool shouldReclip(TriangleClipper oldClipper) => false;
// }
