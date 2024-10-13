import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

extension DoubleToEdgeInsets on double {
  EdgeInsets get paddingAll => EdgeInsets.all(this);
  EdgeInsets get paddingOnlyBottom => EdgeInsets.only(bottom: this);
}

extension ListOfDoubleToEdgeInsets on List<double> {
  EdgeInsets get fromLTRB {
    if (length != 4) {
      // TODO Handle this case
      return EdgeInsets.zero;
    }
    return EdgeInsets.fromLTRB(this[0], this[1], this[2], this[3]);
  }
}

extension DoubleToSizedBox on double {
  SizedBox get verticalSpace => SizedBox(height: this);
  SizedBox get horizontalSpace => SizedBox(width: this);
}

extension SharedPreferencesLogs on SharedPreferences {
  void logAll() {
    final keysAsString = getKeys()
        .map((key) => "$key: ${get(key)}") // "key: value"
        .join(",");
    log("Shared Preferences: { $keysAsString }\n");
  }
}