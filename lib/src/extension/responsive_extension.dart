import 'package:flutter/material.dart';
import 'package:getx_pattern/src/extension/context_extension.dart';

extension BuildContextExtension on BuildContext {
  DeviceType get deviceType => w < 600 ? DeviceType.mobile : DeviceType.tablet;
}

extension ObjectExtension<T> on Object {
  T or(BuildContext context, {T? mobile, T? tablet}) {
    switch (context.deviceType) {
      case DeviceType.mobile:
        return mobile ?? this as T;
      case DeviceType.tablet:
        return tablet ?? this as T;
    }
  }
}

enum DeviceType { mobile, tablet }
