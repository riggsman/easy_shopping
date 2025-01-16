import 'package:hive/hive.dart';

class HiveCache{
    Future<void> cacheData(String key, Map<String,dynamic> value) async {
      final box = await Hive.openBox('Cart');
      await box.put(key, value);
    }

    Future<String?> getData(String key) async {
      final box = await Hive.openBox('Cart');
      return box.get(key);
    }

    Future<List> getListData(String key) async {
      final box = await Hive.openBox('Cart');
      return box.get(key);
    }

    Future<void> cacheList(String key, List value) async {
      final box = await Hive.openBox('Cart');
      await box.put(key, value);
    }

    Future<void> clearCache() async {
    final box = await Hive.openBox('Cart');
    await box.clear();
  }

}