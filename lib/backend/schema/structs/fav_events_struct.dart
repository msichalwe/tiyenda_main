// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FavEventsStruct extends FFFirebaseStruct {
  FavEventsStruct({
    DateTime? addedAt,
    EventsStruct? event,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _addedAt = addedAt,
        _event = event,
        super(firestoreUtilData);

  // "added_at" field.
  DateTime? _addedAt;
  DateTime? get addedAt => _addedAt;
  set addedAt(DateTime? val) => _addedAt = val;
  bool hasAddedAt() => _addedAt != null;

  // "event" field.
  EventsStruct? _event;
  EventsStruct get event => _event ?? EventsStruct();
  set event(EventsStruct? val) => _event = val;
  void updateEvent(Function(EventsStruct) updateFn) =>
      updateFn(_event ??= EventsStruct());
  bool hasEvent() => _event != null;

  static FavEventsStruct fromMap(Map<String, dynamic> data) => FavEventsStruct(
        addedAt: data['added_at'] as DateTime?,
        event: EventsStruct.maybeFromMap(data['event']),
      );

  static FavEventsStruct? maybeFromMap(dynamic data) => data is Map
      ? FavEventsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'added_at': _addedAt,
        'event': _event?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'added_at': serializeParam(
          _addedAt,
          ParamType.DateTime,
        ),
        'event': serializeParam(
          _event,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static FavEventsStruct fromSerializableMap(Map<String, dynamic> data) =>
      FavEventsStruct(
        addedAt: deserializeParam(
          data['added_at'],
          ParamType.DateTime,
          false,
        ),
        event: deserializeStructParam(
          data['event'],
          ParamType.DataStruct,
          false,
          structBuilder: EventsStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'FavEventsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is FavEventsStruct &&
        addedAt == other.addedAt &&
        event == other.event;
  }

  @override
  int get hashCode => const ListEquality().hash([addedAt, event]);
}

FavEventsStruct createFavEventsStruct({
  DateTime? addedAt,
  EventsStruct? event,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    FavEventsStruct(
      addedAt: addedAt,
      event: event ?? (clearUnsetFields ? EventsStruct() : null),
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

FavEventsStruct? updateFavEventsStruct(
  FavEventsStruct? favEvents, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    favEvents
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addFavEventsStructData(
  Map<String, dynamic> firestoreData,
  FavEventsStruct? favEvents,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (favEvents == null) {
    return;
  }
  if (favEvents.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && favEvents.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final favEventsData = getFavEventsFirestoreData(favEvents, forFieldValue);
  final nestedData = favEventsData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = favEvents.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getFavEventsFirestoreData(
  FavEventsStruct? favEvents, [
  bool forFieldValue = false,
]) {
  if (favEvents == null) {
    return {};
  }
  final firestoreData = mapToFirestore(favEvents.toMap());

  // Handle nested data for "event" field.
  addEventsStructData(
    firestoreData,
    favEvents.hasEvent() ? favEvents.event : null,
    'event',
    forFieldValue,
  );

  // Add any Firestore field values
  favEvents.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getFavEventsListFirestoreData(
  List<FavEventsStruct>? favEventss,
) =>
    favEventss?.map((e) => getFavEventsFirestoreData(e, true)).toList() ?? [];
