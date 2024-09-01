import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PriLoginRecord extends FirestoreRecord {
  PriLoginRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "pri_email" field.
  String? _priEmail;
  String get priEmail => _priEmail ?? '';
  bool hasPriEmail() => _priEmail != null;

  // "pri_pass" field.
  String? _priPass;
  String get priPass => _priPass ?? '';
  bool hasPriPass() => _priPass != null;

  // "pri_name" field.
  String? _priName;
  String get priName => _priName ?? '';
  bool hasPriName() => _priName != null;

  // "pri_city" field.
  String? _priCity;
  String get priCity => _priCity ?? '';
  bool hasPriCity() => _priCity != null;

  void _initializeFields() {
    _priEmail = snapshotData['pri_email'] as String?;
    _priPass = snapshotData['pri_pass'] as String?;
    _priName = snapshotData['pri_name'] as String?;
    _priCity = snapshotData['pri_city'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('pri_login');

  static Stream<PriLoginRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PriLoginRecord.fromSnapshot(s));

  static Future<PriLoginRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PriLoginRecord.fromSnapshot(s));

  static PriLoginRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PriLoginRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PriLoginRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PriLoginRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PriLoginRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PriLoginRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPriLoginRecordData({
  String? priEmail,
  String? priPass,
  String? priName,
  String? priCity,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'pri_email': priEmail,
      'pri_pass': priPass,
      'pri_name': priName,
      'pri_city': priCity,
    }.withoutNulls,
  );

  return firestoreData;
}

class PriLoginRecordDocumentEquality implements Equality<PriLoginRecord> {
  const PriLoginRecordDocumentEquality();

  @override
  bool equals(PriLoginRecord? e1, PriLoginRecord? e2) {
    return e1?.priEmail == e2?.priEmail &&
        e1?.priPass == e2?.priPass &&
        e1?.priName == e2?.priName &&
        e1?.priCity == e2?.priCity;
  }

  @override
  int hash(PriLoginRecord? e) => const ListEquality()
      .hash([e?.priEmail, e?.priPass, e?.priName, e?.priCity]);

  @override
  bool isValidKey(Object? o) => o is PriLoginRecord;
}
