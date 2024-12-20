import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:github_client_app/common/cache_object.dart';
import 'package:github_client_app/common/git.dart';
import 'package:github_client_app/models/index.dart';
import 'package:shared_preferences/shared_preferences.dart';

export 'global.dart'; 

// 五套可选主题色
const _themes = <MaterialColor>[
  Colors.blue,
  Colors.cyan,
  Colors.teal,
  Colors.green,
  Colors.red,
];

class Global {
  static late SharedPreferences _prefs;
  static Profile profile = Profile();
  // 网络缓存对象
  static NetCache netCache = NetCache();

  // 可选的主题列表
  static List<MaterialColor> get themes => _themes;

  // 是否为 release 环境
  static bool get isRelease => const bool.fromEnvironment("dart.vm.product");

  // 初始化全局信息，会在 App 启动时执行
  static Future init() async {
    WidgetsFlutterBinding.ensureInitialized();
    _prefs = await SharedPreferences.getInstance();
    var pro = _prefs.getString("profile");
    if(pro != null) {
      try {
        profile = Profile.fromJson(jsonDecode(pro));
      } catch (e) {
        print(e);
      }
    } else {
      // 默认主题索引为 0，代表蓝色
      profile = Profile()..theme = 0;
    }

    // 如果没有缓存策略，设置默认缓存策略
    profile.cache = profile.cache ?? CacheConfig()
    ..enable = true
    ..maxAge = 3600
    ..maxCount = 100;

    // 初始化网络请求相关配置
    Git.init();
  }

  static saveProfile() {
    
  }
}