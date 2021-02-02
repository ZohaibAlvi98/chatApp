import 'package:flutter/material.dart';

Widget textfield(String label, size, width, String page) {
  return Padding(
    padding:
        EdgeInsets.symmetric(horizontal: width * 0.2, vertical: size * 0.01),
    child: Column(
      children: [
        Text(
          label,
          style: TextStyle(
              fontSize: width * 0.04,
              fontWeight: FontWeight.w700,
              color: Colors.blueGrey),
        ),
        if (label == 'Password' && page == 'signup')
          TextFormField(
            decoration: InputDecoration(
                helperText: '* Password should greater than 6 characters',
                helperStyle: TextStyle(color: Colors.red),
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black87, width: 2))),
          ),
        if (label != 'Password' || page == 'login')
          TextFormField(
            decoration: InputDecoration(
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black87, width: 2))),
          ),
      ],
    ),
  );
}
