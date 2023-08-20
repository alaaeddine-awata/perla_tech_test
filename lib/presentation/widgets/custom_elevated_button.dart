import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  final String label;
  final TextStyle? labelStyle;
  final Function()? onPressed;
  final bool? isLoading;
  final ButtonStyle? style;
  final bool? inverseStyle;

  const CustomElevatedButton({
    super.key,
    required this.label,
    this.labelStyle,
    this.onPressed,
    this.isLoading,
    this.style,
    this.inverseStyle,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: style,
      onPressed: onPressed,
      child: Text(
        label,
        style: labelStyle ?? Theme.of(context).primaryTextTheme.labelLarge,
      ),
    );
  }
}
