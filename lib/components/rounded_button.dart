import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton({
    Key? key,
    required this.colour,
    required this.title,
    required this.onPressed,
  }) : super(key: key);

  final Color colour;
  final String title;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 16.0),
        child: Material(
          color: colour,
          borderRadius: BorderRadius.circular(30.0),
          elevation: 5.0,
          child: MaterialButton(
            onPressed:
                //Go to registration screen.
                onPressed,
            minWidth: 200.0,
            height: 42.0,
            child: Text(
              title, style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
