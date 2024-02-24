import 'package:flutter/material.dart';
import 'package:getx_pattern/src/extension/context_extension.dart';

class TitleSmall extends StatelessWidget {
  final String text;
  final TextAlign? textAlign;
  final Color? color;
  const TitleSmall(this.text, {Key? key, this.textAlign, this.color})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    final fontSize = context.isPhone ? 14.0 : 24.0;
    return Text(
      text,
      style: context.theme.textTheme.titleSmall
          ?.copyWith(fontSize: fontSize, color: color),
      textAlign: textAlign,
    );
  }
}
