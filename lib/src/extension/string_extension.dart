import 'package:flutter/material.dart';
import 'package:getx_pattern/src/ui/widgets/Text/headline_large.dart';
import 'package:getx_pattern/src/ui/widgets/Text/headline_medium.dart';
import 'package:getx_pattern/src/ui/widgets/Text/headline_small.dart';
import 'package:getx_pattern/src/ui/widgets/Text/title_large.dart';
import 'package:getx_pattern/src/ui/widgets/Text/title_medium.dart';
import 'package:getx_pattern/src/ui/widgets/Text/title_small.dart';

extension StringExtension on String? {
  int get answerCharachterToInt {
    return ['A', 'B', 'C', 'D', 'E'].indexOf((this ?? '').toUpperCase());
  }

  Text text({TextStyle? style, String? defaultValue}) => Text(
        this ?? defaultValue ?? '',
        style: style,
      );
  HeadlineSmall get headlineSmall => HeadlineSmall(this ?? '');
  HeadlineMedium get headlineMedium => HeadlineMedium(this ?? '');
  HeadlineLarge get headlineLarge => HeadlineLarge(this ?? '');
  TitleSmall titleSmall({Color? color}) => TitleSmall(this ?? '', color: color);
  TitleMedium titleMedium({TextAlign? textAlign}) =>
      TitleMedium(this ?? '', textAlign: textAlign);
  TitleLarge get titleLarge => TitleLarge(this ?? '');

  String get withoutTags {
    return this
            ?.replaceAll(RegExp(r' style="[^"]*"'), '')
            .replaceAll('<tr>', '<br>')
            .replaceAll(RegExp(r'<(?!\/?(?:br|img|b|td)\b)[^>]*>'), '')
            .replaceAll('<td>', '<td>&nbsp;')
            .replaceAll('</td>', '&nbsp;|</td>') ??
        '';
  }

  String get changeSpanToB {
    final text = this ?? '';
    return text.replaceAll('<span>', '<b>').replaceAll('</span>', '</b>');
  }

  String get withoutEndBrs {
    String text = (this ?? '').trim();
    while (text.endsWith('<br>')) {
      text = text.substring(0, text.length - 4).trim();
    }
    return text;
  }

  String changeFontSize({required num fontSize}) {
    String text = (this ?? '').trim();

    Iterable<Match> matches = RegExp(r'font-size: (\d+)px').allMatches(text);

    for (Match match in matches) {
      String oldMatch = match.group(0)!;
      String fontSize = match.group(1)!;
      String newMatch = "font-size: ${fontSize}px";

      text = text.replaceFirst(oldMatch, newMatch);
    }

    return '<span style="font-size: ${fontSize}px">$text</span>';
  }

  String withStyle({required String style}) {
    if (withoutTags.withoutBrTag.isHtmlEmpty) return '';
    String text = (this ?? '').trim();
    while (text.endsWith('<br>')) {
      text = text.substring(0, text.length - 4).trim();
    }

    text = text.replaceAll('<tr>', '<tr style="$style">');

    return '<span style="$style">$text</span>';
  }

  List<String> get images {
    final List<String> images = [];
    final RegExp exp = RegExp(r'<img[^>]+src="?([^">]+)"?');

    final Iterable<RegExpMatch> matches = exp.allMatches(this ?? '');
    for (final match in matches) {
      images.add(match.group(1) ?? '');
    }

    return images;
  }

  String get withoutBrTag => this?.replaceAll(RegExp(r'<br>'), '') ?? '';

  String get removeMultipleWhiteSpaces {
    String text = (this ?? '').trim();
    while (text.contains('  ')) {
      text = text.replaceAll('  ', ' ');
    }
    return text.trim();
  }

  bool get isHtmlEmpty => this?.withoutTags.withoutBrTag.trim().isEmpty ?? true;

  String get phoneFormat {
    String self = this ?? '';
    if (self.length != 10) return self;
    if (!RegExp(r'^[0-9]+$').hasMatch(self)) return self;
    return '+90 (${self.substring(0, 3)}) ${self.substring(3, 6)} ${self.substring(6)}';
  }
}
