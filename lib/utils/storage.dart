import 'package:shared_preferences/shared_preferences.dart';

class Storage {
  static Storage _storageUtil;
  static SharedPreferences _preferences;

  static Future<Storage> getInstance() async {
    if (_storageUtil == null) {
      // keep local instance till it is fully initialized.
      var secureStorage = Storage._();
      await secureStorage._init();
      _storageUtil = secureStorage;
    }
    return _storageUtil;
  }

  Storage._();

  Future _init() async {
    _preferences = await SharedPreferences.getInstance();
  }

  static Future<bool> setUserName(String value) async {
    if (_preferences == null) return null;
    return _preferences.setString('username', value);
  }

  static String getUserName({String defValue = ''}) {
    if (_preferences == null) return defValue;
    return _preferences.getString('username') ?? defValue;
  }
}
