// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EventsStruct extends FFFirebaseStruct {
  EventsStruct({
    String? eventName,
    String? eventId,
    DateTime? eventDate,
    String? eventPic,
    String? eventDesc,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _eventName = eventName,
        _eventId = eventId,
        _eventDate = eventDate,
        _eventPic = eventPic,
        _eventDesc = eventDesc,
        super(firestoreUtilData);

  // "eventName" field.
  String? _eventName;
  String get eventName => _eventName ?? '';
  set eventName(String? val) => _eventName = val;
  bool hasEventName() => _eventName != null;

  // "eventId" field.
  String? _eventId;
  String get eventId => _eventId ?? '';
  set eventId(String? val) => _eventId = val;
  bool hasEventId() => _eventId != null;

  // "eventDate" field.
  DateTime? _eventDate;
  DateTime? get eventDate => _eventDate;
  set eventDate(DateTime? val) => _eventDate = val;
  bool hasEventDate() => _eventDate != null;

  // "eventPic" field.
  String? _eventPic;
  String get eventPic => _eventPic ?? '';
  set eventPic(String? val) => _eventPic = val;
  bool hasEventPic() => _eventPic != null;

  // "eventDesc" field.
  String? _eventDesc;
  String get eventDesc => _eventDesc ?? '';
  set eventDesc(String? val) => _eventDesc = val;
  bool hasEventDesc() => _eventDesc != null;

  static EventsStruct fromMap(Map<String, dynamic> data) => EventsStruct(
        eventName: data['eventName'] as String?,
        eventId: data['eventId'] as String?,
        eventDate: data['eventDate'] as DateTime?,
        eventPic: data['eventPic'] as String?,
        eventDesc: data['eventDesc'] as String?,
      );

  static EventsStruct? maybeFromMap(dynamic data) =>
      data is Map ? EventsStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'eventName': _eventName,
        'eventId': _eventId,
        'eventDate': _eventDate,
        'eventPic': _eventPic,
        'eventDesc': _eventDesc,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'eventName': serializeParam(
          _eventName,
          ParamType.String,
        ),
        'eventId': serializeParam(
          _eventId,
          ParamType.String,
        ),
        'eventDate': serializeParam(
          _eventDate,
          ParamType.DateTime,
        ),
        'eventPic': serializeParam(
          _eventPic,
          ParamType.String,
        ),
        'eventDesc': serializeParam(
          _eventDesc,
          ParamType.String,
        ),
      }.withoutNulls;

  static EventsStruct fromSerializableMap(Map<String, dynamic> data) =>
      EventsStruct(
        eventName: deserializeParam(
          data['eventName'],
          ParamType.String,
          false,
        ),
        eventId: deserializeParam(
          data['eventId'],
          ParamType.String,
          false,
        ),
        eventDate: deserializeParam(
          data['eventDate'],
          ParamType.DateTime,
          false,
        ),
        eventPic: deserializeParam(
          data['eventPic'],
          ParamType.String,
          false,
        ),
        eventDesc: deserializeParam(
          data['eventDesc'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'EventsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is EventsStruct &&
        eventName == other.eventName &&
        eventId == other.eventId &&
        eventDate == other.eventDate &&
        eventPic == other.eventPic &&
        eventDesc == other.eventDesc;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([eventName, eventId, eventDate, eventPic, eventDesc]);
}

EventsStruct createEventsStruct({
  String? eventName,
  String? eventId,
  DateTime? eventDate,
  String? eventPic,
  String? eventDesc,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    EventsStruct(
      eventName: eventName,
      eventId: eventId,
      eventDate: eventDate,
      eventPic: eventPic,
      eventDesc: eventDesc,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

EventsStruct? updateEventsStruct(
  EventsStruct? events, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    events
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addEventsStructData(
  Map<String, dynamic> firestoreData,
  EventsStruct? events,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (events == null) {
    return;
  }
  if (events.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && events.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final eventsData = getEventsFirestoreData(events, forFieldValue);
  final nestedData = eventsData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = events.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getEventsFirestoreData(
  EventsStruct? events, [
  bool forFieldValue = false,
]) {
  if (events == null) {
    return {};
  }
  final firestoreData = mapToFirestore(events.toMap());

  // Add any Firestore field values
  events.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getEventsListFirestoreData(
  List<EventsStruct>? eventss,
) =>
    eventss?.map((e) => getEventsFirestoreData(e, true)).toList() ?? [];
