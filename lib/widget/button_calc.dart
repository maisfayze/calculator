import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  const Buttons({
    required this.ButtonVal,
    required this.buttonPressed,
    this.newColor=0xFFF94C66,
    Key? key,
  }) : super(key: key);
  final String ButtonVal;
  final int newColor;
  final void Function() buttonPressed;


  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(0.0),
        margin: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: Colors.grey[300],
          borderRadius:  BorderRadius.circular(50),

        ),
        child: ElevatedButton(
          onPressed: buttonPressed,
          style: ElevatedButton.styleFrom(
            elevation: 50,
            shadowColor: Colors.white,
            minimumSize: const Size(90, 90),
            maximumSize: const Size(90, 90),
            primary: Color(newColor),

            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),

            ),
          ),
          child: Text(
            ButtonVal.toString(),
            style: const TextStyle(
              fontSize: 25,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
