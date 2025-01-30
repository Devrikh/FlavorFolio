import 'package:flutter/material.dart';


class MyButton extends StatelessWidget {
  final String text;
  final void Function()? onTap;
  const MyButton({
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
          color: const Color.fromARGB(210, 245, 114, 114), borderRadius: BorderRadius.circular(40),
          border: Border.all(width: 2),
        ),
        padding: EdgeInsets.all(20),
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
