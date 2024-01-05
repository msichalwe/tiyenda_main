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
    await _safeInitAsync(() async {
      _cart = (await secureStorage.getStringList('ff_cart'))?.map((x) {
            try {
              return jsonDecode(x);
            } catch (e) {
              print("Can't decode persisted json. Error: $e.");
              return {};
            }
          }).toList() ??
          _cart;
    });
    await _safeInitAsync(() async {
      _cartItems = (await secureStorage.getStringList('ff_cartItems'))
              ?.map((x) {
                try {
                  return TicketStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _cartItems;
    });
    await _safeInitAsync(() async {
      _cartPriceTotal =
          await secureStorage.getInt('ff_cartPriceTotal') ?? _cartPriceTotal;
    });
    await _safeInitAsync(() async {
      _likedEvents =
          await secureStorage.getStringList('ff_likedEvents') ?? _likedEvents;
    });
    await _safeInitAsync(() async {
      _totalAfterServiceCharge =
          await secureStorage.getInt('ff_totalAfterServiceCharge') ??
              _totalAfterServiceCharge;
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

  List<dynamic> _cart = [];
  List<dynamic> get cart => _cart;
  set cart(List<dynamic> value) {
    _cart = value;
    secureStorage.setStringList(
        'ff_cart', value.map((x) => jsonEncode(x)).toList());
  }

  void deleteCart() {
    secureStorage.delete(key: 'ff_cart');
  }

  void addToCart(dynamic value) {
    _cart.add(value);
    secureStorage.setStringList(
        'ff_cart', _cart.map((x) => jsonEncode(x)).toList());
  }

  void removeFromCart(dynamic value) {
    _cart.remove(value);
    secureStorage.setStringList(
        'ff_cart', _cart.map((x) => jsonEncode(x)).toList());
  }

  void removeAtIndexFromCart(int index) {
    _cart.removeAt(index);
    secureStorage.setStringList(
        'ff_cart', _cart.map((x) => jsonEncode(x)).toList());
  }

  void updateCartAtIndex(
    int index,
    dynamic Function(dynamic) updateFn,
  ) {
    _cart[index] = updateFn(_cart[index]);
    secureStorage.setStringList(
        'ff_cart', _cart.map((x) => jsonEncode(x)).toList());
  }

  void insertAtIndexInCart(int index, dynamic value) {
    _cart.insert(index, value);
    secureStorage.setStringList(
        'ff_cart', _cart.map((x) => jsonEncode(x)).toList());
  }

  List<TicketStruct> _cartItems = [];
  List<TicketStruct> get cartItems => _cartItems;
  set cartItems(List<TicketStruct> value) {
    _cartItems = value;
    secureStorage.setStringList(
        'ff_cartItems', value.map((x) => x.serialize()).toList());
  }

  void deleteCartItems() {
    secureStorage.delete(key: 'ff_cartItems');
  }

  void addToCartItems(TicketStruct value) {
    _cartItems.add(value);
    secureStorage.setStringList(
        'ff_cartItems', _cartItems.map((x) => x.serialize()).toList());
  }

  void removeFromCartItems(TicketStruct value) {
    _cartItems.remove(value);
    secureStorage.setStringList(
        'ff_cartItems', _cartItems.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromCartItems(int index) {
    _cartItems.removeAt(index);
    secureStorage.setStringList(
        'ff_cartItems', _cartItems.map((x) => x.serialize()).toList());
  }

  void updateCartItemsAtIndex(
    int index,
    TicketStruct Function(TicketStruct) updateFn,
  ) {
    _cartItems[index] = updateFn(_cartItems[index]);
    secureStorage.setStringList(
        'ff_cartItems', _cartItems.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInCartItems(int index, TicketStruct value) {
    _cartItems.insert(index, value);
    secureStorage.setStringList(
        'ff_cartItems', _cartItems.map((x) => x.serialize()).toList());
  }

  int _cartPriceTotal = 0;
  int get cartPriceTotal => _cartPriceTotal;
  set cartPriceTotal(int value) {
    _cartPriceTotal = value;
    secureStorage.setInt('ff_cartPriceTotal', value);
  }

  void deleteCartPriceTotal() {
    secureStorage.delete(key: 'ff_cartPriceTotal');
  }

  List<String> _likedEvents = ['12'];
  List<String> get likedEvents => _likedEvents;
  set likedEvents(List<String> value) {
    _likedEvents = value;
    secureStorage.setStringList('ff_likedEvents', value);
  }

  void deleteLikedEvents() {
    secureStorage.delete(key: 'ff_likedEvents');
  }

  void addToLikedEvents(String value) {
    _likedEvents.add(value);
    secureStorage.setStringList('ff_likedEvents', _likedEvents);
  }

  void removeFromLikedEvents(String value) {
    _likedEvents.remove(value);
    secureStorage.setStringList('ff_likedEvents', _likedEvents);
  }

  void removeAtIndexFromLikedEvents(int index) {
    _likedEvents.removeAt(index);
    secureStorage.setStringList('ff_likedEvents', _likedEvents);
  }

  void updateLikedEventsAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    _likedEvents[index] = updateFn(_likedEvents[index]);
    secureStorage.setStringList('ff_likedEvents', _likedEvents);
  }

  void insertAtIndexInLikedEvents(int index, String value) {
    _likedEvents.insert(index, value);
    secureStorage.setStringList('ff_likedEvents', _likedEvents);
  }

  int _totalAfterServiceCharge = 0;
  int get totalAfterServiceCharge => _totalAfterServiceCharge;
  set totalAfterServiceCharge(int value) {
    _totalAfterServiceCharge = value;
    secureStorage.setInt('ff_totalAfterServiceCharge', value);
  }

  void deleteTotalAfterServiceCharge() {
    secureStorage.delete(key: 'ff_totalAfterServiceCharge');
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

  final _getSingleEventManager = FutureRequestManager<ApiCallResponse>();
  Future<ApiCallResponse> getSingleEvent({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<ApiCallResponse> Function() requestFn,
  }) =>
      _getSingleEventManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearGetSingleEventCache() => _getSingleEventManager.clear();
  void clearGetSingleEventCacheKey(String? uniqueKey) =>
      _getSingleEventManager.clearRequest(uniqueKey);
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
