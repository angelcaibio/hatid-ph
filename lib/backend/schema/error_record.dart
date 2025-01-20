import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ErrorRecord extends FirestoreRecord {
  ErrorRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "message" field.
  String? _message;
  String get message => _message ?? '';
  bool hasMessage() => _message != null;

  // "time_created" field.
  DateTime? _timeCreated;
  DateTime? get timeCreated => _timeCreated;
  bool hasTimeCreated() => _timeCreated != null;

  // "rider_name" field.
  String? _riderName;
  String get riderName => _riderName ?? '';
  bool hasRiderName() => _riderName != null;

  // "photo" field.
  String? _photo;
  String get photo => _photo ?? '';
  bool hasPhoto() => _photo != null;

  // "solved_by" field.
  String? _solvedBy;
  String get solvedBy => _solvedBy ?? '';
  bool hasSolvedBy() => _solvedBy != null;

  // "time_solved" field.
  DateTime? _timeSolved;
  DateTime? get timeSolved => _timeSolved;
  bool hasTimeSolved() => _timeSolved != null;

  // "response" field.
  String? _response;
  String get response => _response ?? '';
  bool hasResponse() => _response != null;

  // "rider_photo" field.
  String? _riderPhoto;
  String get riderPhoto => _riderPhoto ?? '';
  bool hasRiderPhoto() => _riderPhoto != null;

  // "solved" field.
  String? _solved;
  String get solved => _solved ?? '';
  bool hasSolved() => _solved != null;

  void _initializeFields() {
    _message = snapshotData['message'] as String?;
    _timeCreated = snapshotData['time_created'] as DateTime?;
    _riderName = snapshotData['rider_name'] as String?;
    _photo = snapshotData['photo'] as String?;
    _solvedBy = snapshotData['solved_by'] as String?;
    _timeSolved = snapshotData['time_solved'] as DateTime?;
    _response = snapshotData['response'] as String?;
    _riderPhoto = snapshotData['rider_photo'] as String?;
    _solved = snapshotData['solved'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('error');

  static Stream<ErrorRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ErrorRecord.fromSnapshot(s));

  static Future<ErrorRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ErrorRecord.fromSnapshot(s));

  static ErrorRecord fromSnapshot(DocumentSnapshot snapshot) => ErrorRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ErrorRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ErrorRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ErrorRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ErrorRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createErrorRecordData({
  String? message,
  DateTime? timeCreated,
  String? riderName,
  String? photo,
  String? solvedBy,
  DateTime? timeSolved,
  String? response,
  String? riderPhoto,
  String? solved,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'message': message,
      'time_created': timeCreated,
      'rider_name': riderName,
      'photo': photo,
      'solved_by': solvedBy,
      'time_solved': timeSolved,
      'response': response,
      'rider_photo': riderPhoto,
      'solved': solved,
    }.withoutNulls,
  );

  return firestoreData;
}

class ErrorRecordDocumentEquality implements Equality<ErrorRecord> {
  const ErrorRecordDocumentEquality();

  @override
  bool equals(ErrorRecord? e1, ErrorRecord? e2) {
    return e1?.message == e2?.message &&
        e1?.timeCreated == e2?.timeCreated &&
        e1?.riderName == e2?.riderName &&
        e1?.photo == e2?.photo &&
        e1?.solvedBy == e2?.solvedBy &&
        e1?.timeSolved == e2?.timeSolved &&
        e1?.response == e2?.response &&
        e1?.riderPhoto == e2?.riderPhoto &&
        e1?.solved == e2?.solved;
  }

  @override
  int hash(ErrorRecord? e) => const ListEquality().hash([
        e?.message,
        e?.timeCreated,
        e?.riderName,
        e?.photo,
        e?.solvedBy,
        e?.timeSolved,
        e?.response,
        e?.riderPhoto,
        e?.solved
      ]);

  @override
  bool isValidKey(Object? o) => o is ErrorRecord;
}
