import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants/nav_Items.dart';

class MobileDrawer extends StatelessWidget {
  const MobileDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Color(0xff252734),
      child: ListView(
        children: [

          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.only(top: 10,left: 10),
              child: IconButton(onPressed: (){
                Navigator.of(context).pop();
              },
                  icon: Icon(Icons.close)),
            ),
          ),

          for(int i=0;i<navTitles.length;i++)
            ListTile(
              contentPadding: EdgeInsets.symmetric(horizontal: 30),

              leading: Icon(navIcons[i]),
              title: Text(navTitles[i]),
            )
        ],
      ),
    );
  }
}
