import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FacilitiesRecord extends FirestoreRecord {
  FacilitiesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "guest_name" field.
  String? _guestName;
  String get guestName => _guestName ?? '';
  bool hasGuestName() => _guestName != null;

  // "guest_facility" field.
  String? _guestFacility;
  String get guestFacility => _guestFacility ?? '';
  bool hasGuestFacility() => _guestFacility != null;

  // "guest_number" field.
  String? _guestNumber;
  String get guestNumber => _guestNumber ?? '';
  bool hasGuestNumber() => _guestNumber != null;

  // "facility_date" field.
  String? _facilityDate;
  String get facilityDate => _facilityDate ?? '';
  bool hasFacilityDate() => _facilityDate != null;

  // "facility_city" field.
  String? _facilityCity;
  String get facilityCity => _facilityCity ?? '';
  bool hasFacilityCity() => _facilityCity != null;

  // "facility_confimed" field.
  bool? _facilityConfimed;
  bool get facilityConfimed => _facilityConfimed ?? false;
  bool hasFacilityConfimed() => _facilityConfimed != null;

  // "guest_email" field.
  String? _guestEmail;
  String get guestEmail => _guestEmail ?? '';
  bool hasGuestEmail() => _guestEmail != null;

  // "guest_location" field.
  LatLng? _guestLocation;
  LatLng? get guestLocation => _guestLocation;
  bool hasGuestLocation() => _guestLocation != null;

  // "time" field.
  DateTime? _time;
  DateTime? get time => _time;
  bool hasTime() => _time != null;

  // "puja_loc" field.
  String? _pujaLoc;
  String get pujaLoc => _pujaLoc ?? '';
  bool hasPujaLoc() => _pujaLoc != null;

  // "puja_type" field.
  String? _pujaType;
  String get pujaType => _pujaType ?? '';
  bool hasPujaType() => _pujaType != null;

  // "extra" field.
  String? _extra;
  String get extra => _extra ?? '';
  bool hasExtra() => _extra != null;

  // "halltype" field.
  String? _halltype;
  String get halltype => _halltype ?? '';
  bool hasHalltype() => _halltype != null;

  void _initializeFields() {
    _guestName = snapshotData['guest_name'] as String?;
    _guestFacility = snapshotData['guest_facility'] as String?;
    _guestNumber = snapshotData['guest_number'] as String?;
    _facilityDate = snapshotData['facility_date'] as String?;
    _facilityCity = snapshotData['facility_city'] as String?;
    _facilityConfimed = snapshotData['facility_confimed'] as bool?;
    _guestEmail = snapshotData['guest_email'] as String?;
    _guestLocation = snapshotData['guest_location'] as LatLng?;
    _time = snapshotData['time'] as DateTime?;
    _pujaLoc = snapshotData['puja_loc'] as String?;
    _pujaType = snapshotData['puja_type'] as String?;
    _extra = snapshotData['extra'] as String?;
    _halltype = snapshotData['halltype'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('facilities');

  static Stream<FacilitiesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => FacilitiesRecord.fromSnapshot(s));

  static Future<FacilitiesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => FacilitiesRecord.fromSnapshot(s));

  static FacilitiesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      FacilitiesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static FacilitiesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      FacilitiesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'FacilitiesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is FacilitiesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createFacilitiesRecordData({
  String? guestName,
  String? guestFacility,
  String? guestNumber,
  String? facilityDate,
  String? facilityCity,
  bool? facilityConfimed,
  String? guestEmail,
  LatLng? guestLocation,
  DateTime? time,
  String? pujaLoc,
  String? pujaType,
  String? extra,
  String? halltype,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'guest_name': guestName,
      'guest_facility': guestFacility,
      'guest_number': guestNumber,
      'facility_date': facilityDate,
      'facility_city': facilityCity,
      'facility_confimed': facilityConfimed,
      'guest_email': guestEmail,
      'guest_location': guestLocation,
      'time': time,
      'puja_loc': pujaLoc,
      'puja_type': pujaType,
      'extra': extra,
      'halltype': halltype,
    }.withoutNulls,
  );

  return firestoreData;
}

class FacilitiesRecordDocumentEquality implements Equality<FacilitiesRecord> {
  const FacilitiesRecordDocumentEquality();

  @override
  bool equals(FacilitiesRecord? e1, FacilitiesRecord? e2) {
    return e1?.guestName == e2?.guestName &&
        e1?.guestFacility == e2?.guestFacility &&
        e1?.guestNumber == e2?.guestNumber &&
        e1?.facilityDate == e2?.facilityDate &&
        e1?.facilityCity == e2?.facilityCity &&
        e1?.facilityConfimed == e2?.facilityConfimed &&
        e1?.guestEmail == e2?.guestEmail &&
        e1?.guestLocation == e2?.guestLocation &&
        e1?.time == e2?.time &&
        e1?.pujaLoc == e2?.pujaLoc &&
        e1?.pujaType == e2?.pujaType &&
        e1?.extra == e2?.extra &&
        e1?.halltype == e2?.halltype;
  }

  @override
  int hash(FacilitiesRecord? e) => const ListEquality().hash([
        e?.guestName,
        e?.guestFacility,
        e?.guestNumber,
        e?.facilityDate,
        e?.facilityCity,
        e?.facilityConfimed,
        e?.guestEmail,
        e?.guestLocation,
        e?.time,
        e?.pujaLoc,
        e?.pujaType,
        e?.extra,
        e?.halltype
      ]);

  @override
  bool isValidKey(Object? o) => o is FacilitiesRecord;
}
