import 'package:flutter/material.dart';
import 'package:getx_pattern/src/extension/context_extension.dart';

class HeadlineSmall extends StatelessWidget {
  final String text;
  final TextAlign? textAlign;
  const HeadlineSmall(this.text, {Key? key, this.textAlign}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final fontSize = context.isPhone ? 24.0 : 36.0;
    return Text(
      text,
      style:
          context.theme.textTheme.headlineSmall?.copyWith(fontSize: fontSize),
      textAlign: textAlign,
    );
  }
}
