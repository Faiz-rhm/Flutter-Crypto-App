import 'package:flutter/material.dart';

class Button {
  static Widget primaryButton({required Widget child, required VoidCallback onPressed}) {
    return MaterialButton(
      child: child,
      elevation: 0,
      height: 50,
      minWidth: 200,
      color: Colors.black,
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 32),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        side:  const BorderSide(color: Colors.grey)
      ),
      onPressed: onPressed,
    );
  }

  static Widget secondaryButton({required Widget child, required VoidCallback onPressed}) {
    return MaterialButton(
      child: child,
      elevation: 0,
      height: 50,
      minWidth: 200,
      color: Colors.yellowAccent[700],
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 32),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      onPressed: onPressed,
    );
  }
}