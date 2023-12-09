import 'package:flutter/material.dart';
import 'flutter_flow/request_manager.dart';
import '/backend/backend.dart';
import 'backend/api_requests/api_manager.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:csv/csv.dart';
import 'package:synchronized/synchronized.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    secureStorage = const FlutterSecureStorage();
    await _safeInitAsync(() async {
      _searchHistory = (await secureStorage.getStringList('ff_searchHistory'))
              ?.map((x) {
                try {
                  return SearchHistoryStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _searchHistory;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late FlutterSecureStorage secureStorage;

  bool _like = false;
  bool get like => _like;
  set like(bool value) {
    _like = value;
  }

  List<SearchHistoryStruct> _searchHistory = [];
  List<SearchHistoryStruct> get searchHistory => _searchHistory;
  set searchHistory(List<SearchHistoryStruct> value) {
    _searchHistory = value;
    secureStorage.setStringList(
        'ff_searchHistory', value.map((x) => x.serialize()).toList());
  }

  void deleteSearchHistory() {
    secureStorage.delete(key: 'ff_searchHistory');
  }

  void addToSearchHistory(SearchHistoryStruct value) {
    _searchHistory.add(value);
    secureStorage.setStringList(
        'ff_searchHistory', _searchHistory.map((x) => x.serialize()).toList());
  }

  void removeFromSearchHistory(SearchHistoryStruct value) {
    _searchHistory.remove(value);
    secureStorage.setStringList(
        'ff_searchHistory', _searchHistory.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromSearchHistory(int index) {
    _searchHistory.removeAt(index);
    secureStorage.setStringList(
        'ff_searchHistory', _searchHistory.map((x) => x.serialize()).toList());
  }

  void updateSearchHistoryAtIndex(
    int index,
    SearchHistoryStruct Function(SearchHistoryStruct) updateFn,
  ) {
    _searchHistory[index] = updateFn(_searchHistory[index]);
    secureStorage.setStringList(
        'ff_searchHistory', _searchHistory.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInSearchHistory(int index, SearchHistoryStruct value) {
    _searchHistory.insert(index, value);
    secureStorage.setStringList(
        'ff_searchHistory', _searchHistory.map((x) => x.serialize()).toList());
  }

  final _allEventsManager = FutureRequestManager<ApiCallResponse>();
  Future<ApiCallResponse> allEvents({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<ApiCallResponse> Function() requestFn,
  }) =>
      _allEventsManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearAllEventsCache() => _allEventsManager.clear();
  void clearAllEventsCacheKey(String? uniqueKey) =>
      _allEventsManager.clearRequest(uniqueKey);

  final _allCategoriesManager = FutureRequestManager<ApiCallResponse>();
  Future<ApiCallResponse> allCategories({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<ApiCallResponse> Function() requestFn,
  }) =>
      _allCategoriesManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearAllCategoriesCache() => _allCategoriesManager.clear();
  void clearAllCategoriesCacheKey(String? uniqueKey) =>
      _allCategoriesManager.clearRequest(uniqueKey);
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}

extension FlutterSecureStorageExtensions on FlutterSecureStorage {
  static final _lock = Lock();

  Future<void> writeSync({required String key, String? value}) async =>
      await _lock.synchronized(() async {
        await write(key: key, value: value);
      });

  void remove(String key) => delete(key: key);

  Future<String?> getString(String key) async => await read(key: key);
  Future<void> setString(String key, String value) async =>
      await writeSync(key: key, value: value);

  Future<bool?> getBool(String key) async => (await read(key: key)) == 'true';
  Future<void> setBool(String key, bool value) async =>
      await writeSync(key: key, value: value.toString());

  Future<int?> getInt(String key) async =>
      int.tryParse(await read(key: key) ?? '');
  Future<void> setInt(String key, int value) async =>
      await writeSync(key: key, value: value.toString());

  Future<double?> getDouble(String key) async =>
      double.tryParse(await read(key: key) ?? '');
  Future<void> setDouble(String key, double value) async =>
      await writeSync(key: key, value: value.toString());

  Future<List<String>?> getStringList(String key) async =>
      await read(key: key).then((result) {
        if (result == null || result.isEmpty) {
          return null;
        }
        return const CsvToListConverter()
            .convert(result)
            .first
            .map((e) => e.toString())
            .toList();
      });
  Future<void> setStringList(String key, List<String> value) async =>
      await writeSync(key: key, value: const ListToCsvConverter().convert([value]));
}
