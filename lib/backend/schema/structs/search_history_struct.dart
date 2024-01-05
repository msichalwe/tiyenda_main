// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SearchHistoryStruct extends FFFirebaseStruct {
  SearchHistoryStruct({
    String? eventId,
    String? eventName,
    DateTime? searchDate,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _eventId = eventId,
        _eventName = eventName,
        _searchDate = searchDate,
        super(firestoreUtilData);

  // "event_id" field.
  String? _eventId;
  String get eventId => _eventId ?? '';
  set eventId(String? val) => _eventId = val;
  bool hasEventId() => _eventId != null;

  // "event_name" field.
  String? _eventName;
  String get eventName => _eventName ?? '';
  set eventName(String? val) => _eventName = val;
  bool hasEventName() => _eventName != null;

  // "searchDate" field.
  DateTime? _searchDate;
  DateTime? get searchDate => _searchDate;
  set searchDate(DateTime? val) => _searchDate = val;
  bool hasSearchDate() => _searchDate != null;

  static SearchHistoryStruct fromMap(Map<String, dynamic> data) =>
      SearchHistoryStruct(
        eventId: data['event_id'] as String?,
        eventName: data['event_name'] as String?,
        searchDate: data['searchDate'] as DateTime?,
      );

  static SearchHistoryStruct? maybeFromMap(dynamic data) => data is Map
      ? SearchHistoryStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'event_id': _eventId,
        'event_name': _eventName,
        'searchDate': _searchDate,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'event_id': serializeParam(
          _eventId,
          ParamType.String,
        ),
        'event_name': serializeParam(
          _eventName,
          ParamType.String,
        ),
        'searchDate': serializeParam(
          _searchDate,
          ParamType.DateTime,
        ),
      }.withoutNulls;

  static SearchHistoryStruct fromSerializableMap(Map<String, dynamic> data) =>
      SearchHistoryStruct(
        eventId: deserializeParam(
          data['event_id'],
          ParamType.String,
          false,
        ),
        eventName: deserializeParam(
          data['event_name'],
          ParamType.String,
          false,
        ),
        searchDate: deserializeParam(
          data['searchDate'],
          ParamType.DateTime,
          false,
        ),
      );

  @override
  String toString() => 'SearchHistoryStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is SearchHistoryStruct &&
        eventId == other.eventId &&
        eventName == other.eventName &&
        searchDate == other.searchDate;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([eventId, eventName, searchDate]);
}

SearchHistoryStruct createSearchHistoryStruct({
  String? eventId,
  String? eventName,
  DateTime? searchDate,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    SearchHistoryStruct(
      eventId: eventId,
      eventName: eventName,
      searchDate: searchDate,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

SearchHistoryStruct? updateSearchHistoryStruct(
  SearchHistoryStruct? searchHistory, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    searchHistory
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addSearchHistoryStructData(
  Map<String, dynamic> firestoreData,
  SearchHistoryStruct? searchHistory,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (searchHistory == null) {
    return;
  }
  if (searchHistory.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && searchHistory.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final searchHistoryData =
      getSearchHistoryFirestoreData(searchHistory, forFieldValue);
  final nestedData =
      searchHistoryData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = searchHistory.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getSearchHistoryFirestoreData(
  SearchHistoryStruct? searchHistory, [
  bool forFieldValue = false,
]) {
  if (searchHistory == null) {
    return {};
  }
  final firestoreData = mapToFirestore(searchHistory.toMap());

  // Add any Firestore field values
  searchHistory.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getSearchHistoryListFirestoreData(
  List<SearchHistoryStruct>? searchHistorys,
) =>
    searchHistorys
        ?.map((e) => getSearchHistoryFirestoreData(e, true))
        .toList() ??
    [];
