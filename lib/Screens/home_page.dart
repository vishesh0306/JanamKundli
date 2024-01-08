import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:janamkundli/widgets/header_desktop.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Header_Desktop()
        ],
      ),
    );
  }
}
