import 'package:flutter/material.dart';
import 'package:getx_pattern/src/extension/context_extension.dart';

class TitleMedium extends StatelessWidget {
  final String text;
  final TextAlign? textAlign;
  const TitleMedium(this.text, {Key? key, this.textAlign}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: context.theme.textTheme.titleMedium, textAlign: textAlign);
  }
}
