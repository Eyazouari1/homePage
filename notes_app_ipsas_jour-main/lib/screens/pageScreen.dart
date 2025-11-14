
import 'package:flutter/material.dart';

class Pagescreen extends StatelessWidget {
  const Pagescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assets/images/myImage.png"),
          const Text(
            'Notes',
            style: TextStyle(),
          ),
       ],
      ),

     );

  }
}