import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

extension ContextExtension on BuildContext {
  //! Screen size extensions
  MediaQueryData get mediaQuery => MediaQuery.of(this);
  double get w => MediaQuery.of(this).size.width;
  double get h => MediaQuery.of(this).size.height;

  double dynamicHeight(double ratio) => MediaQuery.of(this).size.height * ratio;
  double dynamicWidth(double ratio) => MediaQuery.of(this).size.width * ratio;

  double get quarterW => MediaQuery.of(this).size.width * 0.25;
  double get quarterH => MediaQuery.of(this).size.height * 0.25;

  double get oneTenthW => MediaQuery.of(this).size.width * 0.1;
  double get twoTenthsW => MediaQuery.of(this).size.width * 0.2;
  double get threeTenthsW => MediaQuery.of(this).size.width * 0.3;
  double get fourthTenthsW => MediaQuery.of(this).size.width * 0.4;
  double get halfW => MediaQuery.of(this).size.width * 0.5;
  double get sixTenthsW => MediaQuery.of(this).size.width * 0.6;
  double get sevenTenthsW => MediaQuery.of(this).size.width * 0.7;
  double get eightTenthsW => MediaQuery.of(this).size.width * 0.8;
  double get nineOutOfTenW => MediaQuery.of(this).size.width * 0.9;

  double get oneTenthH => MediaQuery.of(this).size.height * 0.1;
  double get twoTenthsH => MediaQuery.of(this).size.height * 0.2;
  double get threeTenthsH => MediaQuery.of(this).size.height * 0.3;
  double get fourthTenthsH => MediaQuery.of(this).size.height * 0.4;
  double get halfH => MediaQuery.of(this).size.height * 0.5;
  double get sixTenthsH => MediaQuery.of(this).size.height * 0.6;
  double get sevenTenthsH => MediaQuery.of(this).size.height * 0.7;
  double get eightTenthsH => MediaQuery.of(this).size.height * 0.8;
  double get nineOutOfTenH => MediaQuery.of(this).size.height * 0.9;

  //! Theme extensions
  TextTheme get textTheme => Theme.of(this).textTheme;
  ThemeData get theme => Theme.of(this);

  //! Navigation extensions
  get pop => Navigator.of(this).pop;

  //? Cupertino animasyon tarzında bir navigasyon
  void push(dynamic route) => Navigator.of(this).push(
        CupertinoPageRoute(builder: (context) => route),
      );

  //! MediaQuery extensions
  MediaQueryData get media => MediaQuery.of(this);

  //! Padding Extension
  EdgeInsets get padding => media.padding;

  //! WiewInsets Extension
  EdgeInsets get viewInsets => media.viewInsets;

  bool get isPhone =>
      MediaQueryData.fromView(View.of(this)).size.shortestSide < 600;

  bool get isLandScape =>
      MediaQuery.of(this).orientation == Orientation.landscape;
  bool get isPortrait =>
      MediaQuery.of(this).orientation == Orientation.portrait;

  //! FocusScope extensions
  FocusScopeNode get focusScope => FocusScope.of(this);
  bool get hasFocus => focusScope.hasFocus;
}
