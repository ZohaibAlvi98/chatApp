import 'package:chatting/views/signIn.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController username = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double size =
        MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text('Chat App'),
      ),
      body: SingleChildScrollView(
          child: Stack(
        children: [
          Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            Text("Register",
                style: TextStyle(
                    height: size * 0.004,
                    color: Colors.black,
                    fontSize: width * 0.1,
                    fontWeight: FontWeight.w700)),
            SizedBox(
              height: size * 0.05,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: width * 0.2, vertical: size * 0.01),
              child: Column(
                children: [
                  Text(
                    'Username',
                    style: TextStyle(
                        fontSize: width * 0.04,
                        fontWeight: FontWeight.w700,
                        color: Colors.blueGrey),
                  ),
                  TextFormField(
                    controller: username,
                    decoration: InputDecoration(
                        focusedBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black87, width: 2))),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    'Email',
                    style: TextStyle(
                        fontSize: width * 0.04,
                        fontWeight: FontWeight.w700,
                        color: Colors.blueGrey),
                  ),
                  TextFormField(
                    controller: email,
                    decoration: InputDecoration(
                        focusedBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black87, width: 2))),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    'Password',
                    style: TextStyle(
                        fontSize: width * 0.04,
                        fontWeight: FontWeight.w700,
                        color: Colors.blueGrey),
                  ),
                  TextFormField(
                    controller: password,
                    decoration: InputDecoration(
                        helperText:
                            '* Password should greater than 6 characters',
                        helperStyle: TextStyle(color: Colors.red),
                        focusedBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black87, width: 2))),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: size * 0.05,
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // Navigate back to first route when tapped.
                  // Navigator.pop(context);
                },
                child: Text('Sign Up'),
              ),
            ),
          ]),
          Padding(
            padding: EdgeInsets.fromLTRB(width * 0.1, size * 0.8, 0, 0),
            child: GestureDetector(
                child: Text("Go Back!", style: TextStyle(color: Colors.blue)),
                onTap: () {
                  Navigator.pop(context);
                }),
          ),
        ],
      )),
    );
  }
}
