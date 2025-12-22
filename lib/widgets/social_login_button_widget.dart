import 'package:flutter/material.dart';

class SocialLoginButtonWidget extends StatelessWidget{
  final ThemeData theme;
  final String title;
  final String logo;
  final void Function()? onPressed;

  const SocialLoginButtonWidget({
    super.key,
    required this.theme,
    required this.title,
    required this.logo,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: ButtonStyle(
        shape: WidgetStateProperty.all<OutlinedBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
        side: WidgetStateProperty.all(
          BorderSide(color: theme.colorScheme.outline),
        ),
      ),
      onPressed: onPressed,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 12,
          children: [
            Image.asset(logo, height: 20),
            Text(title, style: theme.textTheme.labelLarge)
          ],
        ),
      ),
    );
  }
}