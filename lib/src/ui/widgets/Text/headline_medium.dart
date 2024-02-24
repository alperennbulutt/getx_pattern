import 'package:flutter/material.dart';
import 'package:getx_pattern/src/extension/context_extension.dart';

class HeadlineMedium extends StatelessWidget {
  final String text;
  final TextAlign? textAlign;
  const HeadlineMedium(this.text, {Key? key, this.textAlign}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: context.theme.textTheme.headlineMedium, textAlign: textAlign);
  }
}
