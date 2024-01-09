import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:janamkundli/widgets/VDlogo.dart';
import '../constants/nav_Items.dart';

class Header_Desktop extends StatelessWidget {
  const Header_Desktop({Key? key}) : super(key: key);

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
      child: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: VDlogo()
            ),
            Spacer(),

            for(int i=0; i<navTitles.length;i++)
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: TextButton(
                  onPressed: (){},
                  child: Text(navTitles[i],
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
