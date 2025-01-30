import 'package:flutter/material.dart';

class MyButton2 extends StatelessWidget {
  final String text;
  final void Function()? onTap;
  const MyButton2({
    super.key,
    required this.text,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(40),
          
        ),
        padding: EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //text
            Text(
              text, 
              style: TextStyle(color: Colors.black, fontSize: 17)),
              const SizedBox(width: 10),
      
              //icon
              Icon(Icons.arrow_forward, color: Colors.black),
          ],
        ),
      ),
    );
  }
}
