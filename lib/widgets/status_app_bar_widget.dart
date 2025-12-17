import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class StatusAppBarWidget extends StatelessWidget {
  final Color? color;
  final Widget? child;
  final Brightness brightness;

  const StatusAppBarWidget({
    this.color,
    this.child,
    super.key,
    this.brightness = Brightness.dark,
  });

  @override
  Widget build(BuildContext context) {
    // bool isDark = (Theme.of(context) == Brightness.dark)
    //     ? Colors.white
    //     : Colors.transparent;
    final androidIconBrightness =
    brightness == Brightness.dark ? Brightness.light : Brightness.dark;

    Theme.of(context).brightness == Brightness.dark;
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: color,
        statusBarIconBrightness: androidIconBrightness,
        statusBarBrightness: brightness,
      ),
      child: child!,
    );
  }
}