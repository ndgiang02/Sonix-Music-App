import 'dart:convert';
import 'dart:developer';

import 'package:sonix/features/data/models/user/user_model.dart';

import 'local_storage.dart';

class SessionController {
  static final SessionController _instance = SessionController._internal();
  factory SessionController() => _instance;

  LocalStorage localStorage = LocalStorage();

  bool isLogin = false;
  UserModel user = UserModel(
    id: 0,
    username: '',
    email: '',
    createdAt: DateTime.now(),
  );

  SessionController._internal();

  Future<void> saveUserInPreference(UserModel user, String token) async {
    try {
      await localStorage.setValue('token', token);
      await localStorage.setValue('user', jsonEncode(user.toJson()));
      await localStorage.setValue('isLogin', 'true');
      _instance.user = user;
      _instance.isLogin = true;
    } catch (e) {
      log("Error saving user: $e");
    }
  }

  Future<void> getUserFromPreference() async {
    try {
      var userData = await localStorage.readValue('user');
      var loginStatus = await localStorage.readValue('isLogin');

      if (userData != null && userData.isNotEmpty) {
        _instance.user = UserModel.fromJson(jsonDecode(userData));
        _instance.isLogin = (loginStatus == 'true');
      } else {
        _instance.isLogin = (loginStatus == 'false');
      }
    } catch (e) {
      log("Error in getUserFromPreference: $e");
    }
  }

  Future<void> clearSession() async {
    try {
      await localStorage.clearValue('token');
      await localStorage.clearValue('isLogin');
      _instance.user = UserModel.empty();
      _instance.isLogin = false;
    } catch (e) {
      log("Error clearing session: $e");
    }
  }

  Future<void> saveLocale(String localeCode) async {
    try {
      await localStorage.setValue('locale', localeCode);
    } catch (e) {
      log("Error saving locale: $e");
    }
  }

  Future<String?> getSavedLocale() async {
    try {
      return await localStorage.readValue('locale');
    } catch (e) {
      log("Error getting locale: $e");
      return null;
    }
  }
}
