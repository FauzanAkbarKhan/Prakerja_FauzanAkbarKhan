import 'package:flutter/material.dart';
import 'package:uji_keterampilan/app/core/theme/app_theme.dart';

class Buttons {
  static Widget defaultButton({
    required VoidCallback? onPressed,
    required Widget? child,
    Color? backgroundColor,
  }) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        backgroundColor:
            MaterialStateProperty.all<Color>(backgroundColor ?? primaryColor),
      ),
      child: child,
    );
  }
}
