import 'package:localstorage/localstorage.dart';

class LocalCacheStorage {
  final LocalStorage storage;

  LocalCacheStorage.storeDefault()
      : storage = LocalStorage("ham_tools");

  LocalCacheStorage.storeWithPath(String storageName, String storagePath)
      : storage = LocalStorage(storageName, storagePath);

  LocalCacheStorage.store(String storageName)
      : storage = LocalStorage(storageName);

  Future<void> setItem(String name, String jsonString) async {
    return await storage.setItem(name, jsonString);
  }

  String getItem(String item) {
    dynamic result = storage.getItem(item);

    return result == null ? "" : result.toString();
  }
}
