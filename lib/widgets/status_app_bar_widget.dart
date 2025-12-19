import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class StatusAppBarWidget extends StatelessWidget {
  final Color color;
  final Widget child;
  final Brightness brightness;

  const StatusAppBarWidget({
    super.key,
    required this.child,
    this.color = Colors.transparent,
    this.brightness = Brightness.dark,
  });

  @override
  Widget build(BuildContext context) {
    final iconBrightness =
    brightness == Brightness.dark ? Brightness.light : Brightness.dark;

    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: color,
        statusBarIconBrightness: iconBrightness, // Android icons
        statusBarBrightness: brightness, // iOS
      ),
      child: child,
    );
  }
}
