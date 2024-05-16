import 'package:flutter/material.dart';

class Mybutton extends StatelessWidget {
  final String text;
  final Color color;
  final VoidCallback onpress;
   Mybutton({super.key,required this.text, this.color = const Color(0xffa5a5a5),required this.onpress});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height * 1;
    final width = MediaQuery.of(context).size.height * 1;
    return Expanded(
      child: GestureDetector(
        onTap: onpress,
        child: Container(
          height: 80,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: color
          ),
          child: Center(
            child: Text(text,style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w600),),
          ),
        ),
      ),
    );
  }
}
