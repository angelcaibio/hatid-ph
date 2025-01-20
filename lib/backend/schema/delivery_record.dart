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

  // "customer_location" field.
  String? _customerLocation;
  String get customerLocation => _customerLocation ?? '';
  bool hasCustomerLocation() => _customerLocation != null;

  // "customer_number" field.
  int? _customerNumber;
  int get customerNumber => _customerNumber ?? 0;
  bool hasCustomerNumber() => _customerNumber != null;

  // "rider_name" field.
  String? _riderName;
  String get riderName => _riderName ?? '';
  bool hasRiderName() => _riderName != null;

  // "status" field.
  int? _status;
  int get status => _status ?? 0;
  bool hasStatus() => _status != null;

  // "shop_type" field.
  String? _shopType;
  String get shopType => _shopType ?? '';
  bool hasShopType() => _shopType != null;

  // "shop_name" field.
  String? _shopName;
  String get shopName => _shopName ?? '';
  bool hasShopName() => _shopName != null;

  // "note" field.
  String? _note;
  String get note => _note ?? '';
  bool hasNote() => _note != null;

  // "items" field.
  String? _items;
  String get items => _items ?? '';
  bool hasItems() => _items != null;

  // "time_created" field.
  DateTime? _timeCreated;
  DateTime? get timeCreated => _timeCreated;
  bool hasTimeCreated() => _timeCreated != null;

  // "time_delivered" field.
  DateTime? _timeDelivered;
  DateTime? get timeDelivered => _timeDelivered;
  bool hasTimeDelivered() => _timeDelivered != null;

  // "rider_photo" field.
  String? _riderPhoto;
  String get riderPhoto => _riderPhoto ?? '';
  bool hasRiderPhoto() => _riderPhoto != null;

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

  // "location" field.
  String? _location;
  String get location => _location ?? '';
  bool hasLocation() => _location != null;

  void _initializeFields() {
    _customerName = snapshotData['customer_name'] as String?;
    _customerLocation = snapshotData['customer_location'] as String?;
    _customerNumber = castToType<int>(snapshotData['customer_number']);
    _riderName = snapshotData['rider_name'] as String?;
    _status = castToType<int>(snapshotData['status']);
    _shopType = snapshotData['shop_type'] as String?;
    _shopName = snapshotData['shop_name'] as String?;
    _note = snapshotData['note'] as String?;
    _items = snapshotData['items'] as String?;
    _timeCreated = snapshotData['time_created'] as DateTime?;
    _timeDelivered = snapshotData['time_delivered'] as DateTime?;
    _riderPhoto = snapshotData['rider_photo'] as String?;
    _confirmation = castToType<int>(snapshotData['confirmation']);
    _reciept = snapshotData['reciept'] as String?;
    _client = snapshotData['client'] as String?;
    _location = snapshotData['location'] as String?;
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
  String? customerLocation,
  int? customerNumber,
  String? riderName,
  int? status,
  String? shopType,
  String? shopName,
  String? note,
  String? items,
  DateTime? timeCreated,
  DateTime? timeDelivered,
  String? riderPhoto,
  int? confirmation,
  String? reciept,
  String? client,
  String? location,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'customer_name': customerName,
      'customer_location': customerLocation,
      'customer_number': customerNumber,
      'rider_name': riderName,
      'status': status,
      'shop_type': shopType,
      'shop_name': shopName,
      'note': note,
      'items': items,
      'time_created': timeCreated,
      'time_delivered': timeDelivered,
      'rider_photo': riderPhoto,
      'confirmation': confirmation,
      'reciept': reciept,
      'client': client,
      'location': location,
    }.withoutNulls,
  );

  return firestoreData;
}

class DeliveryRecordDocumentEquality implements Equality<DeliveryRecord> {
  const DeliveryRecordDocumentEquality();

  @override
  bool equals(DeliveryRecord? e1, DeliveryRecord? e2) {
    return e1?.customerName == e2?.customerName &&
        e1?.customerLocation == e2?.customerLocation &&
        e1?.customerNumber == e2?.customerNumber &&
        e1?.riderName == e2?.riderName &&
        e1?.status == e2?.status &&
        e1?.shopType == e2?.shopType &&
        e1?.shopName == e2?.shopName &&
        e1?.note == e2?.note &&
        e1?.items == e2?.items &&
        e1?.timeCreated == e2?.timeCreated &&
        e1?.timeDelivered == e2?.timeDelivered &&
        e1?.riderPhoto == e2?.riderPhoto &&
        e1?.confirmation == e2?.confirmation &&
        e1?.reciept == e2?.reciept &&
        e1?.client == e2?.client &&
        e1?.location == e2?.location;
  }

  @override
  int hash(DeliveryRecord? e) => const ListEquality().hash([
        e?.customerName,
        e?.customerLocation,
        e?.customerNumber,
        e?.riderName,
        e?.status,
        e?.shopType,
        e?.shopName,
        e?.note,
        e?.items,
        e?.timeCreated,
        e?.timeDelivered,
        e?.riderPhoto,
        e?.confirmation,
        e?.reciept,
        e?.client,
        e?.location
      ]);

  @override
  bool isValidKey(Object? o) => o is DeliveryRecord;
}
