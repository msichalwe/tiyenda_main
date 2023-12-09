// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OrderTicketsStruct extends FFFirebaseStruct {
  OrderTicketsStruct({
    String? ticketId,
    int? quantity,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _ticketId = ticketId,
        _quantity = quantity,
        super(firestoreUtilData);

  // "ticket_id" field.
  String? _ticketId;
  String get ticketId => _ticketId ?? '';
  set ticketId(String? val) => _ticketId = val;
  bool hasTicketId() => _ticketId != null;

  // "quantity" field.
  int? _quantity;
  int get quantity => _quantity ?? 0;
  set quantity(int? val) => _quantity = val;
  void incrementQuantity(int amount) => _quantity = quantity + amount;
  bool hasQuantity() => _quantity != null;

  static OrderTicketsStruct fromMap(Map<String, dynamic> data) =>
      OrderTicketsStruct(
        ticketId: data['ticket_id'] as String?,
        quantity: castToType<int>(data['quantity']),
      );

  static OrderTicketsStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? OrderTicketsStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'ticket_id': _ticketId,
        'quantity': _quantity,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'ticket_id': serializeParam(
          _ticketId,
          ParamType.String,
        ),
        'quantity': serializeParam(
          _quantity,
          ParamType.int,
        ),
      }.withoutNulls;

  static OrderTicketsStruct fromSerializableMap(Map<String, dynamic> data) =>
      OrderTicketsStruct(
        ticketId: deserializeParam(
          data['ticket_id'],
          ParamType.String,
          false,
        ),
        quantity: deserializeParam(
          data['quantity'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'OrderTicketsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is OrderTicketsStruct &&
        ticketId == other.ticketId &&
        quantity == other.quantity;
  }

  @override
  int get hashCode => const ListEquality().hash([ticketId, quantity]);
}

OrderTicketsStruct createOrderTicketsStruct({
  String? ticketId,
  int? quantity,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    OrderTicketsStruct(
      ticketId: ticketId,
      quantity: quantity,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

OrderTicketsStruct? updateOrderTicketsStruct(
  OrderTicketsStruct? orderTickets, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    orderTickets
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addOrderTicketsStructData(
  Map<String, dynamic> firestoreData,
  OrderTicketsStruct? orderTickets,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (orderTickets == null) {
    return;
  }
  if (orderTickets.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && orderTickets.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final orderTicketsData =
      getOrderTicketsFirestoreData(orderTickets, forFieldValue);
  final nestedData =
      orderTicketsData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = orderTickets.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getOrderTicketsFirestoreData(
  OrderTicketsStruct? orderTickets, [
  bool forFieldValue = false,
]) {
  if (orderTickets == null) {
    return {};
  }
  final firestoreData = mapToFirestore(orderTickets.toMap());

  // Add any Firestore field values
  orderTickets.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getOrderTicketsListFirestoreData(
  List<OrderTicketsStruct>? orderTicketss,
) =>
    orderTicketss?.map((e) => getOrderTicketsFirestoreData(e, true)).toList() ??
    [];
