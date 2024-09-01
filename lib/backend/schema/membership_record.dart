import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MembershipRecord extends FirestoreRecord {
  MembershipRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  bool hasType() => _type != null;

  // "permanent_address" field.
  String? _permanentAddress;
  String get permanentAddress => _permanentAddress ?? '';
  bool hasPermanentAddress() => _permanentAddress != null;

  // "mobile_no" field.
  int? _mobileNo;
  int get mobileNo => _mobileNo ?? 0;
  bool hasMobileNo() => _mobileNo != null;

  // "whatsapp_no" field.
  int? _whatsappNo;
  int get whatsappNo => _whatsappNo ?? 0;
  bool hasWhatsappNo() => _whatsappNo != null;

  // "email_id" field.
  String? _emailId;
  String get emailId => _emailId ?? '';
  bool hasEmailId() => _emailId != null;

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  bool hasDate() => _date != null;

  // "payment_screenshot" field.
  String? _paymentScreenshot;
  String get paymentScreenshot => _paymentScreenshot ?? '';
  bool hasPaymentScreenshot() => _paymentScreenshot != null;

  // "approved" field.
  bool? _approved;
  bool get approved => _approved ?? false;
  bool hasApproved() => _approved != null;

  // "city" field.
  String? _city;
  String get city => _city ?? '';
  bool hasCity() => _city != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _type = snapshotData['type'] as String?;
    _permanentAddress = snapshotData['permanent_address'] as String?;
    _mobileNo = castToType<int>(snapshotData['mobile_no']);
    _whatsappNo = castToType<int>(snapshotData['whatsapp_no']);
    _emailId = snapshotData['email_id'] as String?;
    _date = snapshotData['date'] as DateTime?;
    _paymentScreenshot = snapshotData['payment_screenshot'] as String?;
    _approved = snapshotData['approved'] as bool?;
    _city = snapshotData['city'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('membership');

  static Stream<MembershipRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MembershipRecord.fromSnapshot(s));

  static Future<MembershipRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MembershipRecord.fromSnapshot(s));

  static MembershipRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MembershipRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MembershipRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MembershipRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MembershipRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MembershipRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMembershipRecordData({
  String? name,
  String? type,
  String? permanentAddress,
  int? mobileNo,
  int? whatsappNo,
  String? emailId,
  DateTime? date,
  String? paymentScreenshot,
  bool? approved,
  String? city,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'type': type,
      'permanent_address': permanentAddress,
      'mobile_no': mobileNo,
      'whatsapp_no': whatsappNo,
      'email_id': emailId,
      'date': date,
      'payment_screenshot': paymentScreenshot,
      'approved': approved,
      'city': city,
    }.withoutNulls,
  );

  return firestoreData;
}

class MembershipRecordDocumentEquality implements Equality<MembershipRecord> {
  const MembershipRecordDocumentEquality();

  @override
  bool equals(MembershipRecord? e1, MembershipRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.type == e2?.type &&
        e1?.permanentAddress == e2?.permanentAddress &&
        e1?.mobileNo == e2?.mobileNo &&
        e1?.whatsappNo == e2?.whatsappNo &&
        e1?.emailId == e2?.emailId &&
        e1?.date == e2?.date &&
        e1?.paymentScreenshot == e2?.paymentScreenshot &&
        e1?.approved == e2?.approved &&
        e1?.city == e2?.city;
  }

  @override
  int hash(MembershipRecord? e) => const ListEquality().hash([
        e?.name,
        e?.type,
        e?.permanentAddress,
        e?.mobileNo,
        e?.whatsappNo,
        e?.emailId,
        e?.date,
        e?.paymentScreenshot,
        e?.approved,
        e?.city
      ]);

  @override
  bool isValidKey(Object? o) => o is MembershipRecord;
}
