// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OrderItemsStruct extends FFFirebaseStruct {
  OrderItemsStruct({
    List<String>? ticketId,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _ticketId = ticketId,
        super(firestoreUtilData);

  // "ticketId" field.
  List<String>? _ticketId;
  List<String> get ticketId => _ticketId ?? const [];
  set ticketId(List<String>? val) => _ticketId = val;
  void updateTicketId(Function(List<String>) updateFn) =>
      updateFn(_ticketId ??= []);
  bool hasTicketId() => _ticketId != null;

  static OrderItemsStruct fromMap(Map<String, dynamic> data) =>
      OrderItemsStruct(
        ticketId: getDataList(data['ticketId']),
      );

  static OrderItemsStruct? maybeFromMap(dynamic data) => data is Map
      ? OrderItemsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'ticketId': _ticketId,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'ticketId': serializeParam(
          _ticketId,
          ParamType.String,
          true,
        ),
      }.withoutNulls;

  static OrderItemsStruct fromSerializableMap(Map<String, dynamic> data) =>
      OrderItemsStruct(
        ticketId: deserializeParam<String>(
          data['ticketId'],
          ParamType.String,
          true,
        ),
      );

  @override
  String toString() => 'OrderItemsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is OrderItemsStruct &&
        listEquality.equals(ticketId, other.ticketId);
  }

  @override
  int get hashCode => const ListEquality().hash([ticketId]);
}

OrderItemsStruct createOrderItemsStruct({
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    OrderItemsStruct(
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

OrderItemsStruct? updateOrderItemsStruct(
  OrderItemsStruct? orderItems, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    orderItems
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addOrderItemsStructData(
  Map<String, dynamic> firestoreData,
  OrderItemsStruct? orderItems,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (orderItems == null) {
    return;
  }
  if (orderItems.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && orderItems.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final orderItemsData = getOrderItemsFirestoreData(orderItems, forFieldValue);
  final nestedData = orderItemsData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = orderItems.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getOrderItemsFirestoreData(
  OrderItemsStruct? orderItems, [
  bool forFieldValue = false,
]) {
  if (orderItems == null) {
    return {};
  }
  final firestoreData = mapToFirestore(orderItems.toMap());

  // Add any Firestore field values
  orderItems.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getOrderItemsListFirestoreData(
  List<OrderItemsStruct>? orderItemss,
) =>
    orderItemss?.map((e) => getOrderItemsFirestoreData(e, true)).toList() ?? [];
