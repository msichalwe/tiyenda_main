// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TicketStruct extends FFFirebaseStruct {
  TicketStruct({
    String? eventId,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? name,
    DateTime? startDate,
    DateTime? endDate,
    int? availableTickets,
    int? ticketLimit,
    String? description,
    String? ticketId,
    int? price,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _eventId = eventId,
        _createdAt = createdAt,
        _updatedAt = updatedAt,
        _name = name,
        _startDate = startDate,
        _endDate = endDate,
        _availableTickets = availableTickets,
        _ticketLimit = ticketLimit,
        _description = description,
        _ticketId = ticketId,
        _price = price,
        super(firestoreUtilData);

  // "event_id" field.
  String? _eventId;
  String get eventId => _eventId ?? '';
  set eventId(String? val) => _eventId = val;
  bool hasEventId() => _eventId != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  set createdAt(DateTime? val) => _createdAt = val;
  bool hasCreatedAt() => _createdAt != null;

  // "updated_at" field.
  DateTime? _updatedAt;
  DateTime? get updatedAt => _updatedAt;
  set updatedAt(DateTime? val) => _updatedAt = val;
  bool hasUpdatedAt() => _updatedAt != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;
  bool hasName() => _name != null;

  // "startDate" field.
  DateTime? _startDate;
  DateTime? get startDate => _startDate;
  set startDate(DateTime? val) => _startDate = val;
  bool hasStartDate() => _startDate != null;

  // "endDate" field.
  DateTime? _endDate;
  DateTime? get endDate => _endDate;
  set endDate(DateTime? val) => _endDate = val;
  bool hasEndDate() => _endDate != null;

  // "availableTickets" field.
  int? _availableTickets;
  int get availableTickets => _availableTickets ?? 0;
  set availableTickets(int? val) => _availableTickets = val;
  void incrementAvailableTickets(int amount) =>
      _availableTickets = availableTickets + amount;
  bool hasAvailableTickets() => _availableTickets != null;

  // "ticketLimit" field.
  int? _ticketLimit;
  int get ticketLimit => _ticketLimit ?? 0;
  set ticketLimit(int? val) => _ticketLimit = val;
  void incrementTicketLimit(int amount) => _ticketLimit = ticketLimit + amount;
  bool hasTicketLimit() => _ticketLimit != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) => _description = val;
  bool hasDescription() => _description != null;

  // "ticket_id" field.
  String? _ticketId;
  String get ticketId => _ticketId ?? '';
  set ticketId(String? val) => _ticketId = val;
  bool hasTicketId() => _ticketId != null;

  // "price" field.
  int? _price;
  int get price => _price ?? 0;
  set price(int? val) => _price = val;
  void incrementPrice(int amount) => _price = price + amount;
  bool hasPrice() => _price != null;

  static TicketStruct fromMap(Map<String, dynamic> data) => TicketStruct(
        eventId: data['event_id'] as String?,
        createdAt: data['created_at'] as DateTime?,
        updatedAt: data['updated_at'] as DateTime?,
        name: data['name'] as String?,
        startDate: data['startDate'] as DateTime?,
        endDate: data['endDate'] as DateTime?,
        availableTickets: castToType<int>(data['availableTickets']),
        ticketLimit: castToType<int>(data['ticketLimit']),
        description: data['description'] as String?,
        ticketId: data['ticket_id'] as String?,
        price: castToType<int>(data['price']),
      );

  static TicketStruct? maybeFromMap(dynamic data) =>
      data is Map ? TicketStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'event_id': _eventId,
        'created_at': _createdAt,
        'updated_at': _updatedAt,
        'name': _name,
        'startDate': _startDate,
        'endDate': _endDate,
        'availableTickets': _availableTickets,
        'ticketLimit': _ticketLimit,
        'description': _description,
        'ticket_id': _ticketId,
        'price': _price,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'event_id': serializeParam(
          _eventId,
          ParamType.String,
        ),
        'created_at': serializeParam(
          _createdAt,
          ParamType.DateTime,
        ),
        'updated_at': serializeParam(
          _updatedAt,
          ParamType.DateTime,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'startDate': serializeParam(
          _startDate,
          ParamType.DateTime,
        ),
        'endDate': serializeParam(
          _endDate,
          ParamType.DateTime,
        ),
        'availableTickets': serializeParam(
          _availableTickets,
          ParamType.int,
        ),
        'ticketLimit': serializeParam(
          _ticketLimit,
          ParamType.int,
        ),
        'description': serializeParam(
          _description,
          ParamType.String,
        ),
        'ticket_id': serializeParam(
          _ticketId,
          ParamType.String,
        ),
        'price': serializeParam(
          _price,
          ParamType.int,
        ),
      }.withoutNulls;

  static TicketStruct fromSerializableMap(Map<String, dynamic> data) =>
      TicketStruct(
        eventId: deserializeParam(
          data['event_id'],
          ParamType.String,
          false,
        ),
        createdAt: deserializeParam(
          data['created_at'],
          ParamType.DateTime,
          false,
        ),
        updatedAt: deserializeParam(
          data['updated_at'],
          ParamType.DateTime,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        startDate: deserializeParam(
          data['startDate'],
          ParamType.DateTime,
          false,
        ),
        endDate: deserializeParam(
          data['endDate'],
          ParamType.DateTime,
          false,
        ),
        availableTickets: deserializeParam(
          data['availableTickets'],
          ParamType.int,
          false,
        ),
        ticketLimit: deserializeParam(
          data['ticketLimit'],
          ParamType.int,
          false,
        ),
        description: deserializeParam(
          data['description'],
          ParamType.String,
          false,
        ),
        ticketId: deserializeParam(
          data['ticket_id'],
          ParamType.String,
          false,
        ),
        price: deserializeParam(
          data['price'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'TicketStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TicketStruct &&
        eventId == other.eventId &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        name == other.name &&
        startDate == other.startDate &&
        endDate == other.endDate &&
        availableTickets == other.availableTickets &&
        ticketLimit == other.ticketLimit &&
        description == other.description &&
        ticketId == other.ticketId &&
        price == other.price;
  }

  @override
  int get hashCode => const ListEquality().hash([
        eventId,
        createdAt,
        updatedAt,
        name,
        startDate,
        endDate,
        availableTickets,
        ticketLimit,
        description,
        ticketId,
        price
      ]);
}

TicketStruct createTicketStruct({
  String? eventId,
  DateTime? createdAt,
  DateTime? updatedAt,
  String? name,
  DateTime? startDate,
  DateTime? endDate,
  int? availableTickets,
  int? ticketLimit,
  String? description,
  String? ticketId,
  int? price,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    TicketStruct(
      eventId: eventId,
      createdAt: createdAt,
      updatedAt: updatedAt,
      name: name,
      startDate: startDate,
      endDate: endDate,
      availableTickets: availableTickets,
      ticketLimit: ticketLimit,
      description: description,
      ticketId: ticketId,
      price: price,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

TicketStruct? updateTicketStruct(
  TicketStruct? ticket, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    ticket
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addTicketStructData(
  Map<String, dynamic> firestoreData,
  TicketStruct? ticket,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (ticket == null) {
    return;
  }
  if (ticket.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && ticket.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final ticketData = getTicketFirestoreData(ticket, forFieldValue);
  final nestedData = ticketData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = ticket.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getTicketFirestoreData(
  TicketStruct? ticket, [
  bool forFieldValue = false,
]) {
  if (ticket == null) {
    return {};
  }
  final firestoreData = mapToFirestore(ticket.toMap());

  // Add any Firestore field values
  ticket.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getTicketListFirestoreData(
  List<TicketStruct>? tickets,
) =>
    tickets?.map((e) => getTicketFirestoreData(e, true)).toList() ?? [];
