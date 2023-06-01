import 'package:flutter/material.dart';
import 'package:tinoco_care_hospital/config/custom_colors.dart';

class TinocoButton extends StatelessWidget {
  const TinocoButton({
    super.key,
    required this.onPressed,
    required this.title,
    this.isFiled = false,
  });

  final VoidCallback onPressed;
  final String title;
  final bool isFiled;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50.0,
      child: OutlinedButton(
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(
          backgroundColor: isFiled ? TinocoColors.tinocoSecondaryColor : Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18.0),
          ),
          side: BorderSide(
            width: 2,
            color: TinocoColors.tinocoSecondaryColor,
          ),
        ),
        child: Text(
          title,
          style: TextStyle(
            fontSize: 18.0,
            color: isFiled ? Colors.white : Colors.black,
          ),
        ),
      ),
    );
  }
}
