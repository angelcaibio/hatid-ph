import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DeliveryRecord extends FirestoreRecord {
  DeliveryRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "customer_name" field.
  String? _customerName;
  String get customerName => _customerName ?? '';
  bool hasCustomerName() => _customerName != null;

  // "status" field.
  int? _status;
  int get status => _status ?? 0;
  bool hasStatus() => _status != null;

  // "rider_name" field.
  String? _riderName;
  String get riderName => _riderName ?? '';
  bool hasRiderName() => _riderName != null;

  // "customer_location" field.
  String? _customerLocation;
  String get customerLocation => _customerLocation ?? '';
  bool hasCustomerLocation() => _customerLocation != null;

  // "customer_number" field.
  int? _customerNumber;
  int get customerNumber => _customerNumber ?? 0;
  bool hasCustomerNumber() => _customerNumber != null;

  // "shop_name" field.
  String? _shopName;
  String get shopName => _shopName ?? '';
  bool hasShopName() => _shopName != null;

  // "items" field.
  String? _items;
  String get items => _items ?? '';
  bool hasItems() => _items != null;

  // "note" field.
  String? _note;
  String get note => _note ?? '';
  bool hasNote() => _note != null;

  // "time_delivered" field.
  DateTime? _timeDelivered;
  DateTime? get timeDelivered => _timeDelivered;
  bool hasTimeDelivered() => _timeDelivered != null;

  // "confirmation" field.
  int? _confirmation;
  int get confirmation => _confirmation ?? 0;
  bool hasConfirmation() => _confirmation != null;

  // "reciept" field.
  String? _reciept;
  String get reciept => _reciept ?? '';
  bool hasReciept() => _reciept != null;

  // "client" field.
  String? _client;
  String get client => _client ?? '';
  bool hasClient() => _client != null;

  // "decline_note" field.
  String? _declineNote;
  String get declineNote => _declineNote ?? '';
  bool hasDeclineNote() => _declineNote != null;

  // "time_created" field.
  DateTime? _timeCreated;
  DateTime? get timeCreated => _timeCreated;
  bool hasTimeCreated() => _timeCreated != null;

  void _initializeFields() {
    _customerName = snapshotData['customer_name'] as String?;
    _status = castToType<int>(snapshotData['status']);
    _riderName = snapshotData['rider_name'] as String?;
    _customerLocation = snapshotData['customer_location'] as String?;
    _customerNumber = castToType<int>(snapshotData['customer_number']);
    _shopName = snapshotData['shop_name'] as String?;
    _items = snapshotData['items'] as String?;
    _note = snapshotData['note'] as String?;
    _timeDelivered = snapshotData['time_delivered'] as DateTime?;
    _confirmation = castToType<int>(snapshotData['confirmation']);
    _reciept = snapshotData['reciept'] as String?;
    _client = snapshotData['client'] as String?;
    _declineNote = snapshotData['decline_note'] as String?;
    _timeCreated = snapshotData['time_created'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('delivery');

  static Stream<DeliveryRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => DeliveryRecord.fromSnapshot(s));

  static Future<DeliveryRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => DeliveryRecord.fromSnapshot(s));

  static DeliveryRecord fromSnapshot(DocumentSnapshot snapshot) =>
      DeliveryRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DeliveryRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DeliveryRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DeliveryRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DeliveryRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDeliveryRecordData({
  String? customerName,
  int? status,
  String? riderName,
  String? customerLocation,
  int? customerNumber,
  String? shopName,
  String? items,
  String? note,
  DateTime? timeDelivered,
  int? confirmation,
  String? reciept,
  String? client,
  String? declineNote,
  DateTime? timeCreated,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'customer_name': customerName,
      'status': status,
      'rider_name': riderName,
      'customer_location': customerLocation,
      'customer_number': customerNumber,
      'shop_name': shopName,
      'items': items,
      'note': note,
      'time_delivered': timeDelivered,
      'confirmation': confirmation,
      'reciept': reciept,
      'client': client,
      'decline_note': declineNote,
      'time_created': timeCreated,
    }.withoutNulls,
  );

  return firestoreData;
}

class DeliveryRecordDocumentEquality implements Equality<DeliveryRecord> {
  const DeliveryRecordDocumentEquality();

  @override
  bool equals(DeliveryRecord? e1, DeliveryRecord? e2) {
    return e1?.customerName == e2?.customerName &&
        e1?.status == e2?.status &&
        e1?.riderName == e2?.riderName &&
        e1?.customerLocation == e2?.customerLocation &&
        e1?.customerNumber == e2?.customerNumber &&
        e1?.shopName == e2?.shopName &&
        e1?.items == e2?.items &&
        e1?.note == e2?.note &&
        e1?.timeDelivered == e2?.timeDelivered &&
        e1?.confirmation == e2?.confirmation &&
        e1?.reciept == e2?.reciept &&
        e1?.client == e2?.client &&
        e1?.declineNote == e2?.declineNote &&
        e1?.timeCreated == e2?.timeCreated;
  }

  @override
  int hash(DeliveryRecord? e) => const ListEquality().hash([
        e?.customerName,
        e?.status,
        e?.riderName,
        e?.customerLocation,
        e?.customerNumber,
        e?.shopName,
        e?.items,
        e?.note,
        e?.timeDelivered,
        e?.confirmation,
        e?.reciept,
        e?.client,
        e?.declineNote,
        e?.timeCreated
      ]);

  @override
  bool isValidKey(Object? o) => o is DeliveryRecord;
}
