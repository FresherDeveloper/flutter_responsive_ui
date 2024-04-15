import 'package:flutter/material.dart';

class Section1ImageWidget extends StatelessWidget {
  const Section1ImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        //padding: EdgeInsets.zero,
        alignment: Alignment.center,
        height: MediaQuery.of(context).size.height / 2,
        child: Image.asset(
          "asset/images/Group 22.png",
          fit: BoxFit.cover,
        ));
  }
}
