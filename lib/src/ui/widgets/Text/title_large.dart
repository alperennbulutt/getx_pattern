import 'package:flutter/material.dart';
import 'package:getx_pattern/src/extension/context_extension.dart';

class TitleLarge extends StatelessWidget {
  final String text;
  final TextAlign? textAlign;
  const TitleLarge(this.text, {Key? key, this.textAlign}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: context.theme.textTheme.titleLarge, textAlign: textAlign);
  }
}
