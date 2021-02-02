import 'package:chatting/views/signUp.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
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
            Text("Login",
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
                    'Email',
                    style: TextStyle(
                        fontSize: width * 0.04,
                        fontWeight: FontWeight.w700,
                        color: Colors.blueGrey),
                  ),
                  TextFormField(
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
                child: Text('Login'),
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
          Center(
            heightFactor: size * 0.085,
            child: Text('Or Don\'t have an account ? '),
          ),
          Padding(
              padding: EdgeInsets.fromLTRB(width * 0.72, size * 0.667, 0, 0),
              child: GestureDetector(
                  child: Text("SignUp",
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          color: Colors.blue)),
                  onTap: () => Navigator.push(
                        context,
                        PageRouteBuilder(
                          pageBuilder: (c, a1, a2) => SignUp(),
                          transitionsBuilder: (c, anim, a2, child) =>
                              FadeTransition(opacity: anim, child: child),
                          transitionDuration: Duration(milliseconds: 2),
                        ),
                      ))),
          Padding(
            padding: EdgeInsets.only(top: 480),
            child: Container(
              child: Center(child: Text('Forgot password')),
            ),
          )
        ],
      )),
    );
  }
}
