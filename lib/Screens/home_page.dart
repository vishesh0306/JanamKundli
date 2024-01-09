import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:janamkundli/widgets/DrawerMobile.dart';
import 'package:janamkundli/widgets/header_desktop.dart';
import 'package:janamkundli/widgets/header_phone.dart';

import '../constants/nav_Items.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context,constraints) {
        return Scaffold(
          key: scaffoldKey,
          backgroundColor: Color(0xff252734),
          endDrawer: MobileDrawer(),
          body: ListView(
            scrollDirection: Axis.vertical,
            children: [
              if(constraints.maxWidth>=600)
              Header_Desktop() else
              Header_Phone(
                      () {
                scaffoldKey.currentState?.openEndDrawer();
              }),


            ],
          ),
        );
      }
    );
  }
}
