import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class VDlogo extends StatelessWidget {
  const VDlogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text("VD",
      style: TextStyle(
          color: Colors.yellow[600],
          fontSize: 30,
          fontWeight: FontWeight.bold,
          decoration: TextDecoration.underline,
          decorationColor: Colors.yellow[600]
      ),);
  }
}
