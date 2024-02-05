import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ConFacilityRecord extends FirestoreRecord {
  ConFacilityRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "con_guest_name" field.
  String? _conGuestName;
  String get conGuestName => _conGuestName ?? '';
  bool hasConGuestName() => _conGuestName != null;

  // "con_guest_facility" field.
  String? _conGuestFacility;
  String get conGuestFacility => _conGuestFacility ?? '';
  bool hasConGuestFacility() => _conGuestFacility != null;

  // "con_guest_number" field.
  String? _conGuestNumber;
  String get conGuestNumber => _conGuestNumber ?? '';
  bool hasConGuestNumber() => _conGuestNumber != null;

  // "con_facility_date" field.
  String? _conFacilityDate;
  String get conFacilityDate => _conFacilityDate ?? '';
  bool hasConFacilityDate() => _conFacilityDate != null;

  // "con_facility_city" field.
  String? _conFacilityCity;
  String get conFacilityCity => _conFacilityCity ?? '';
  bool hasConFacilityCity() => _conFacilityCity != null;

  // "con_guest_email" field.
  String? _conGuestEmail;
  String get conGuestEmail => _conGuestEmail ?? '';
  bool hasConGuestEmail() => _conGuestEmail != null;

  void _initializeFields() {
    _conGuestName = snapshotData['con_guest_name'] as String?;
    _conGuestFacility = snapshotData['con_guest_facility'] as String?;
    _conGuestNumber = snapshotData['con_guest_number'] as String?;
    _conFacilityDate = snapshotData['con_facility_date'] as String?;
    _conFacilityCity = snapshotData['con_facility_city'] as String?;
    _conGuestEmail = snapshotData['con_guest_email'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('con_facility');

  static Stream<ConFacilityRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ConFacilityRecord.fromSnapshot(s));

  static Future<ConFacilityRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ConFacilityRecord.fromSnapshot(s));

  static ConFacilityRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ConFacilityRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ConFacilityRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ConFacilityRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ConFacilityRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ConFacilityRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createConFacilityRecordData({
  String? conGuestName,
  String? conGuestFacility,
  String? conGuestNumber,
  String? conFacilityDate,
  String? conFacilityCity,
  String? conGuestEmail,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'con_guest_name': conGuestName,
      'con_guest_facility': conGuestFacility,
      'con_guest_number': conGuestNumber,
      'con_facility_date': conFacilityDate,
      'con_facility_city': conFacilityCity,
      'con_guest_email': conGuestEmail,
    }.withoutNulls,
  );

  return firestoreData;
}

class ConFacilityRecordDocumentEquality implements Equality<ConFacilityRecord> {
  const ConFacilityRecordDocumentEquality();

  @override
  bool equals(ConFacilityRecord? e1, ConFacilityRecord? e2) {
    return e1?.conGuestName == e2?.conGuestName &&
        e1?.conGuestFacility == e2?.conGuestFacility &&
        e1?.conGuestNumber == e2?.conGuestNumber &&
        e1?.conFacilityDate == e2?.conFacilityDate &&
        e1?.conFacilityCity == e2?.conFacilityCity &&
        e1?.conGuestEmail == e2?.conGuestEmail;
  }

  @override
  int hash(ConFacilityRecord? e) => const ListEquality().hash([
        e?.conGuestName,
        e?.conGuestFacility,
        e?.conGuestNumber,
        e?.conFacilityDate,
        e?.conFacilityCity,
        e?.conGuestEmail
      ]);

  @override
  bool isValidKey(Object? o) => o is ConFacilityRecord;
}
