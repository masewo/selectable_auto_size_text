import 'package:flutter/material.dart';
import 'package:selectable_auto_size_text/src/auto_size_text/auto_size_text.dart';

class SelectableAutoSizeText extends StatelessWidget {
  const SelectableAutoSizeText(
    this.data, {
    Key? key,
    this.style,
  }) : super(key: key);

  final String data;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    return AutoSizeText(
      data,
      style: style,
    );
  }
}
