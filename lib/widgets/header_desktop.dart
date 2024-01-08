import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Header_Desktop extends StatelessWidget {
  const Header_Desktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List header = [
      'Home', 'Skills' , 'Projects' , 'Contact' , 'Blog'
    ];
    return Container(
      height: 60,
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
      child: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text("VD",
                style: TextStyle(
                    color: Colors.yellow[600],
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline,
                    decorationColor: Colors.yellow[600]
                ),),
            ),
            Spacer(),

            for(int i=0; i<header.length;i++)
              Padding(
                padding: const EdgeInsets.only(right: 30),
                child: TextButton(
                  onPressed: (){},
                  child: Text(header[i],
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.white
                    ),
                  ),
                ),
              )


          ],
        ),
      ),
    );
  }
}
