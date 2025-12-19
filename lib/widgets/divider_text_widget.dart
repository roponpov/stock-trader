import 'package:flutter/material.dart';

class DividerTextWidget extends StatelessWidget {
  final String text;

  const DividerTextWidget(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Row(
      children: [
        Expanded(child: Divider(color: theme.colorScheme.outline)),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Text(
            text,
            style: theme.textTheme.labelLarge?.copyWith(
              color: theme.colorScheme.outline
            ),
          ),
        ),
        Expanded(child: Divider(color: theme.colorScheme.outline)),
      ],
    );
  }
}
