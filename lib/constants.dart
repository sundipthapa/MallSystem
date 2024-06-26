import 'package:flutter/material.dart';

final redButtonStyle = ButtonStyle(
    padding:
        MaterialStateProperty.all<EdgeInsetsGeometry>(const EdgeInsets.all(15)),
    elevation: MaterialStateProperty.all<double>(2),
    foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
    backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
    shape:
        MaterialStateProperty.all<OutlinedBorder>(const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(15.0)),
    )));

final yellowButtonStyle = ButtonStyle(
    padding:
        MaterialStateProperty.all<EdgeInsetsGeometry>(const EdgeInsets.all(15)),
    elevation: MaterialStateProperty.all<double>(2),
    foregroundColor: MaterialStateProperty.all<Color>(Colors.grey),
    backgroundColor: MaterialStateProperty.all<Color>(Colors.amber.shade300),
    shape:
        MaterialStateProperty.all<OutlinedBorder>(const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(15.0)),
    )));

final defaultButtonStyle = ElevatedButton.styleFrom(
  foregroundColor: Colors.black87,
  backgroundColor: Colors.grey[300],
  maximumSize: Size(50, 50),
  padding: EdgeInsets.symmetric(horizontal: 16),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(2)),
  ),
);
