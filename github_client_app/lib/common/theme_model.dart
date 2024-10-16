import 'package:flutter/material.dart';
import 'package:github_client_app/common/profile_change_notifier.dart';
import 'package:github_client_app/common/global.dart';

// 主题状态
class ThemeModel extends ProfileChangeNotifier {
  ColorSwatch get theme => Global.themes
  .firstWhere((e) => e.value == profile.theme, orElse: () => Colors.blue);


  set theme(ColorSwatch color) {
    if (color != theme && color[500] != null) {
      profile.theme = color[500]!.value;
      notifyListeners();
    }
  }
}