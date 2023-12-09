import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class SearchedEventsRecord extends FirestoreRecord {
  SearchedEventsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "event_id" field.
  String? _eventId;
  String get eventId => _eventId ?? '';
  bool hasEventId() => _eventId != null;

  // "event_name" field.
  String? _eventName;
  String get eventName => _eventName ?? '';
  bool hasEventName() => _eventName != null;

  // "searched_date" field.
  DateTime? _searchedDate;
  DateTime? get searchedDate => _searchedDate;
  bool hasSearchedDate() => _searchedDate != null;

  void _initializeFields() {
    _eventId = snapshotData['event_id'] as String?;
    _eventName = snapshotData['event_name'] as String?;
    _searchedDate = snapshotData['searched_date'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('searchedEvents');

  static Stream<SearchedEventsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SearchedEventsRecord.fromSnapshot(s));

  static Future<SearchedEventsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SearchedEventsRecord.fromSnapshot(s));

  static SearchedEventsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SearchedEventsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SearchedEventsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SearchedEventsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SearchedEventsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SearchedEventsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSearchedEventsRecordData({
  String? eventId,
  String? eventName,
  DateTime? searchedDate,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'event_id': eventId,
      'event_name': eventName,
      'searched_date': searchedDate,
    }.withoutNulls,
  );

  return firestoreData;
}

class SearchedEventsRecordDocumentEquality
    implements Equality<SearchedEventsRecord> {
  const SearchedEventsRecordDocumentEquality();

  @override
  bool equals(SearchedEventsRecord? e1, SearchedEventsRecord? e2) {
    return e1?.eventId == e2?.eventId &&
        e1?.eventName == e2?.eventName &&
        e1?.searchedDate == e2?.searchedDate;
  }

  @override
  int hash(SearchedEventsRecord? e) =>
      const ListEquality().hash([e?.eventId, e?.eventName, e?.searchedDate]);

  @override
  bool isValidKey(Object? o) => o is SearchedEventsRecord;
}
