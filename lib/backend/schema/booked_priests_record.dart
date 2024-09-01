import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BookedPriestsRecord extends FirestoreRecord {
  BookedPriestsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "pri_name" field.
  String? _priName;
  String get priName => _priName ?? '';
  bool hasPriName() => _priName != null;

  // "pri_puja_type" field.
  String? _priPujaType;
  String get priPujaType => _priPujaType ?? '';
  bool hasPriPujaType() => _priPujaType != null;

  // "pri_photo" field.
  String? _priPhoto;
  String get priPhoto => _priPhoto ?? '';
  bool hasPriPhoto() => _priPhoto != null;

  // "pri_city" field.
  String? _priCity;
  String get priCity => _priCity ?? '';
  bool hasPriCity() => _priCity != null;

  // "guest_number" field.
  int? _guestNumber;
  int get guestNumber => _guestNumber ?? 0;
  bool hasGuestNumber() => _guestNumber != null;

  // "guest_name" field.
  String? _guestName;
  String get guestName => _guestName ?? '';
  bool hasGuestName() => _guestName != null;

  // "guest_email" field.
  String? _guestEmail;
  String get guestEmail => _guestEmail ?? '';
  bool hasGuestEmail() => _guestEmail != null;

  // "pri_number" field.
  int? _priNumber;
  int get priNumber => _priNumber ?? 0;
  bool hasPriNumber() => _priNumber != null;

  // "pri_booked_dates" field.
  DateTime? _priBookedDates;
  DateTime? get priBookedDates => _priBookedDates;
  bool hasPriBookedDates() => _priBookedDates != null;

  // "pri_counter" field.
  int? _priCounter;
  int get priCounter => _priCounter ?? 0;
  bool hasPriCounter() => _priCounter != null;

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

  // "puja_booked_type" field.
  String? _pujaBookedType;
  String get pujaBookedType => _pujaBookedType ?? '';
  bool hasPujaBookedType() => _pujaBookedType != null;

  // "extra" field.
  String? _extra;
  String get extra => _extra ?? '';
  bool hasExtra() => _extra != null;

  void _initializeFields() {
    _priName = snapshotData['pri_name'] as String?;
    _priPujaType = snapshotData['pri_puja_type'] as String?;
    _priPhoto = snapshotData['pri_photo'] as String?;
    _priCity = snapshotData['pri_city'] as String?;
    _guestNumber = castToType<int>(snapshotData['guest_number']);
    _guestName = snapshotData['guest_name'] as String?;
    _guestEmail = snapshotData['guest_email'] as String?;
    _priNumber = castToType<int>(snapshotData['pri_number']);
    _priBookedDates = snapshotData['pri_booked_dates'] as DateTime?;
    _priCounter = castToType<int>(snapshotData['pri_counter']);
    _guestLocation = snapshotData['guest_location'] as LatLng?;
    _time = snapshotData['time'] as DateTime?;
    _pujaLoc = snapshotData['puja_loc'] as String?;
    _pujaBookedType = snapshotData['puja_booked_type'] as String?;
    _extra = snapshotData['extra'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('booked_priests');

  static Stream<BookedPriestsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => BookedPriestsRecord.fromSnapshot(s));

  static Future<BookedPriestsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => BookedPriestsRecord.fromSnapshot(s));

  static BookedPriestsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      BookedPriestsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static BookedPriestsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      BookedPriestsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'BookedPriestsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is BookedPriestsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createBookedPriestsRecordData({
  String? priName,
  String? priPujaType,
  String? priPhoto,
  String? priCity,
  int? guestNumber,
  String? guestName,
  String? guestEmail,
  int? priNumber,
  DateTime? priBookedDates,
  int? priCounter,
  LatLng? guestLocation,
  DateTime? time,
  String? pujaLoc,
  String? pujaBookedType,
  String? extra,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'pri_name': priName,
      'pri_puja_type': priPujaType,
      'pri_photo': priPhoto,
      'pri_city': priCity,
      'guest_number': guestNumber,
      'guest_name': guestName,
      'guest_email': guestEmail,
      'pri_number': priNumber,
      'pri_booked_dates': priBookedDates,
      'pri_counter': priCounter,
      'guest_location': guestLocation,
      'time': time,
      'puja_loc': pujaLoc,
      'puja_booked_type': pujaBookedType,
      'extra': extra,
    }.withoutNulls,
  );

  return firestoreData;
}

class BookedPriestsRecordDocumentEquality
    implements Equality<BookedPriestsRecord> {
  const BookedPriestsRecordDocumentEquality();

  @override
  bool equals(BookedPriestsRecord? e1, BookedPriestsRecord? e2) {
    return e1?.priName == e2?.priName &&
        e1?.priPujaType == e2?.priPujaType &&
        e1?.priPhoto == e2?.priPhoto &&
        e1?.priCity == e2?.priCity &&
        e1?.guestNumber == e2?.guestNumber &&
        e1?.guestName == e2?.guestName &&
        e1?.guestEmail == e2?.guestEmail &&
        e1?.priNumber == e2?.priNumber &&
        e1?.priBookedDates == e2?.priBookedDates &&
        e1?.priCounter == e2?.priCounter &&
        e1?.guestLocation == e2?.guestLocation &&
        e1?.time == e2?.time &&
        e1?.pujaLoc == e2?.pujaLoc &&
        e1?.pujaBookedType == e2?.pujaBookedType &&
        e1?.extra == e2?.extra;
  }

  @override
  int hash(BookedPriestsRecord? e) => const ListEquality().hash([
        e?.priName,
        e?.priPujaType,
        e?.priPhoto,
        e?.priCity,
        e?.guestNumber,
        e?.guestName,
        e?.guestEmail,
        e?.priNumber,
        e?.priBookedDates,
        e?.priCounter,
        e?.guestLocation,
        e?.time,
        e?.pujaLoc,
        e?.pujaBookedType,
        e?.extra
      ]);

  @override
  bool isValidKey(Object? o) => o is BookedPriestsRecord;
}
