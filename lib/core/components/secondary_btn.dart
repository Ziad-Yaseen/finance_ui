import 'package:flutter/material.dart';

class SecondaryBtn extends StatelessWidget {
  const SecondaryBtn({super.key, required this.child, required this.onPressed});
  final VoidCallback onPressed;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        side: const BorderSide(color: Colors.blue),
      ),
      onPressed: onPressed,
      child: child,
    );
  }
}
