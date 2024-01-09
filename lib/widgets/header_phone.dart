import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'VDlogo.dart';

class Header_Phone extends StatelessWidget {
  Header_Phone(this.onpress);

  final VoidCallback? onpress;

  @override
  Widget build(BuildContext context) {

    return Container(
      height: 60,
      alignment: Alignment.center,
      margin: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
      width: double.maxFinite,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [
                Colors.transparent,Color(0xFF252734),
              ]
          ),
          borderRadius: BorderRadius.circular(50)
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: VDlogo()
          ),
          Spacer(),

          IconButton(onPressed: onpress,
              icon: Icon(Icons.list,
              size: 30,),
          ),
          SizedBox(width: 15,)

        ],
      ),
    );
  }
}
