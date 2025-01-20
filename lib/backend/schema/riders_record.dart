import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RidersRecord extends FirestoreRecord {
  RidersRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "location" field.
  String? _location;
  String get location => _location ?? '';
  bool hasLocation() => _location != null;

  // "approval" field.
  int? _approval;
  int get approval => _approval ?? 0;
  bool hasApproval() => _approval != null;

  // "status" field.
  int? _status;
  int get status => _status ?? 0;
  bool hasStatus() => _status != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _location = snapshotData['location'] as String?;
    _approval = castToType<int>(snapshotData['approval']);
    _status = castToType<int>(snapshotData['status']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('riders');

  static Stream<RidersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RidersRecord.fromSnapshot(s));

  static Future<RidersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => RidersRecord.fromSnapshot(s));

  static RidersRecord fromSnapshot(DocumentSnapshot snapshot) => RidersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RidersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RidersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RidersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RidersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRidersRecordData({
  String? email,
  String? uid,
  DateTime? createdTime,
  String? photoUrl,
  String? displayName,
  String? phoneNumber,
  String? location,
  int? approval,
  int? status,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'uid': uid,
      'created_time': createdTime,
      'photo_url': photoUrl,
      'display_name': displayName,
      'phone_number': phoneNumber,
      'location': location,
      'approval': approval,
      'status': status,
    }.withoutNulls,
  );

  return firestoreData;
}

class RidersRecordDocumentEquality implements Equality<RidersRecord> {
  const RidersRecordDocumentEquality();

  @override
  bool equals(RidersRecord? e1, RidersRecord? e2) {
    return e1?.email == e2?.email &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.displayName == e2?.displayName &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.location == e2?.location &&
        e1?.approval == e2?.approval &&
        e1?.status == e2?.status;
  }

  @override
  int hash(RidersRecord? e) => const ListEquality().hash([
        e?.email,
        e?.uid,
        e?.createdTime,
        e?.photoUrl,
        e?.displayName,
        e?.phoneNumber,
        e?.location,
        e?.approval,
        e?.status
      ]);

  @override
  bool isValidKey(Object? o) => o is RidersRecord;
}
