import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ShopRecord extends FirestoreRecord {
  ShopRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "shop_name" field.
  String? _shopName;
  String get shopName => _shopName ?? '';
  bool hasShopName() => _shopName != null;

  // "shop_location" field.
  String? _shopLocation;
  String get shopLocation => _shopLocation ?? '';
  bool hasShopLocation() => _shopLocation != null;

  // "shop_type" field.
  String? _shopType;
  String get shopType => _shopType ?? '';
  bool hasShopType() => _shopType != null;

  void _initializeFields() {
    _shopName = snapshotData['shop_name'] as String?;
    _shopLocation = snapshotData['shop_location'] as String?;
    _shopType = snapshotData['shop_type'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('shop');

  static Stream<ShopRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ShopRecord.fromSnapshot(s));

  static Future<ShopRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ShopRecord.fromSnapshot(s));

  static ShopRecord fromSnapshot(DocumentSnapshot snapshot) => ShopRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ShopRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ShopRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ShopRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ShopRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createShopRecordData({
  String? shopName,
  String? shopLocation,
  String? shopType,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'shop_name': shopName,
      'shop_location': shopLocation,
      'shop_type': shopType,
    }.withoutNulls,
  );

  return firestoreData;
}

class ShopRecordDocumentEquality implements Equality<ShopRecord> {
  const ShopRecordDocumentEquality();

  @override
  bool equals(ShopRecord? e1, ShopRecord? e2) {
    return e1?.shopName == e2?.shopName &&
        e1?.shopLocation == e2?.shopLocation &&
        e1?.shopType == e2?.shopType;
  }

  @override
  int hash(ShopRecord? e) =>
      const ListEquality().hash([e?.shopName, e?.shopLocation, e?.shopType]);

  @override
  bool isValidKey(Object? o) => o is ShopRecord;
}
