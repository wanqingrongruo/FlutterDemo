import 'package:flutter/material.dart';
import 'package:github_client_app/models/index.dart';
import 'package:github_client_app/common/global.dart';

export 'profile_change_notifier.dart';

class ProfileChangeNotifier extends ChangeNotifier {
  Profile get profile => Global.profile;

  @override
  void notifyListeners() {
    // 保存 Profile 变更
    Global.saveProfile();

    // 通知依赖的 Widget 更新
    super.notifyListeners();
  }
}