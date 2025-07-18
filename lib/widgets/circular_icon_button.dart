// lib/widgets/circular_icon_button.dart

import 'package:flutter/material.dart';
import 'package:sentra_coffee_frontend/utils/constants.dart'; 

class CircularIconButton extends StatelessWidget {
  final VoidCallback onPressed;
  final IconData icon;
  final double size;
  final Color backgroundColor;
  final Color iconColor;
  final double elevation;

  const CircularIconButton({
    Key? key,
    required this.onPressed,
    this.icon = Icons.arrow_forward, 
    this.size = 60.0, 
    this.backgroundColor = AppColors.primaryColor, 
    this.iconColor = Colors.white, 
    this.elevation = 5.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: backgroundColor,
      shape: const CircleBorder(),
      elevation: elevation,
      child: InkWell(
        customBorder: const CircleBorder(),
        onTap: onPressed,
        child: SizedBox(
          width: size,
          height: size,
          child: Icon(
            icon,
            color: iconColor,
            size: size * 0.5, 
          ),
        ),
      ),
    );
  }
}