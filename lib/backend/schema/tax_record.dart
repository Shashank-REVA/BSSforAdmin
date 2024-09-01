import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TaxRecord extends FirestoreRecord {
  TaxRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "pan" field.
  String? _pan;
  String get pan => _pan ?? '';
  bool hasPan() => _pan != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "adr" field.
  String? _adr;
  String get adr => _adr ?? '';
  bool hasAdr() => _adr != null;

  // "phone" field.
  int? _phone;
  int get phone => _phone ?? 0;
  bool hasPhone() => _phone != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "amt" field.
  int? _amt;
  int get amt => _amt ?? 0;
  bool hasAmt() => _amt != null;

  // "modeof" field.
  String? _modeof;
  String get modeof => _modeof ?? '';
  bool hasModeof() => _modeof != null;

  // "txnid" field.
  String? _txnid;
  String get txnid => _txnid ?? '';
  bool hasTxnid() => _txnid != null;

  // "city" field.
  String? _city;
  String get city => _city ?? '';
  bool hasCity() => _city != null;

  void _initializeFields() {
    _pan = snapshotData['pan'] as String?;
    _name = snapshotData['name'] as String?;
    _adr = snapshotData['adr'] as String?;
    _phone = castToType<int>(snapshotData['phone']);
    _email = snapshotData['email'] as String?;
    _amt = castToType<int>(snapshotData['amt']);
    _modeof = snapshotData['modeof'] as String?;
    _txnid = snapshotData['txnid'] as String?;
    _city = snapshotData['city'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('tax');

  static Stream<TaxRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TaxRecord.fromSnapshot(s));

  static Future<TaxRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TaxRecord.fromSnapshot(s));

  static TaxRecord fromSnapshot(DocumentSnapshot snapshot) => TaxRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TaxRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TaxRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TaxRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TaxRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTaxRecordData({
  String? pan,
  String? name,
  String? adr,
  int? phone,
  String? email,
  int? amt,
  String? modeof,
  String? txnid,
  String? city,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'pan': pan,
      'name': name,
      'adr': adr,
      'phone': phone,
      'email': email,
      'amt': amt,
      'modeof': modeof,
      'txnid': txnid,
      'city': city,
    }.withoutNulls,
  );

  return firestoreData;
}

class TaxRecordDocumentEquality implements Equality<TaxRecord> {
  const TaxRecordDocumentEquality();

  @override
  bool equals(TaxRecord? e1, TaxRecord? e2) {
    return e1?.pan == e2?.pan &&
        e1?.name == e2?.name &&
        e1?.adr == e2?.adr &&
        e1?.phone == e2?.phone &&
        e1?.email == e2?.email &&
        e1?.amt == e2?.amt &&
        e1?.modeof == e2?.modeof &&
        e1?.txnid == e2?.txnid &&
        e1?.city == e2?.city;
  }

  @override
  int hash(TaxRecord? e) => const ListEquality().hash([
        e?.pan,
        e?.name,
        e?.adr,
        e?.phone,
        e?.email,
        e?.amt,
        e?.modeof,
        e?.txnid,
        e?.city
      ]);

  @override
  bool isValidKey(Object? o) => o is TaxRecord;
}
