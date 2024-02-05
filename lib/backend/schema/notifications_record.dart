import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class NotificationsRecord extends FirestoreRecord {
  NotificationsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "facility_name" field.
  String? _facilityName;
  String get facilityName => _facilityName ?? '';
  bool hasFacilityName() => _facilityName != null;

  // "guest_name" field.
  String? _guestName;
  String get guestName => _guestName ?? '';
  bool hasGuestName() => _guestName != null;

  // "guest_email" field.
  String? _guestEmail;
  String get guestEmail => _guestEmail ?? '';
  bool hasGuestEmail() => _guestEmail != null;

  // "time_added" field.
  DateTime? _timeAdded;
  DateTime? get timeAdded => _timeAdded;
  bool hasTimeAdded() => _timeAdded != null;

  // "city" field.
  String? _city;
  String get city => _city ?? '';
  bool hasCity() => _city != null;

  void _initializeFields() {
    _facilityName = snapshotData['facility_name'] as String?;
    _guestName = snapshotData['guest_name'] as String?;
    _guestEmail = snapshotData['guest_email'] as String?;
    _timeAdded = snapshotData['time_added'] as DateTime?;
    _city = snapshotData['city'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('notifications');

  static Stream<NotificationsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => NotificationsRecord.fromSnapshot(s));

  static Future<NotificationsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => NotificationsRecord.fromSnapshot(s));

  static NotificationsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      NotificationsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static NotificationsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      NotificationsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'NotificationsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is NotificationsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createNotificationsRecordData({
  String? facilityName,
  String? guestName,
  String? guestEmail,
  DateTime? timeAdded,
  String? city,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'facility_name': facilityName,
      'guest_name': guestName,
      'guest_email': guestEmail,
      'time_added': timeAdded,
      'city': city,
    }.withoutNulls,
  );

  return firestoreData;
}

class NotificationsRecordDocumentEquality
    implements Equality<NotificationsRecord> {
  const NotificationsRecordDocumentEquality();

  @override
  bool equals(NotificationsRecord? e1, NotificationsRecord? e2) {
    return e1?.facilityName == e2?.facilityName &&
        e1?.guestName == e2?.guestName &&
        e1?.guestEmail == e2?.guestEmail &&
        e1?.timeAdded == e2?.timeAdded &&
        e1?.city == e2?.city;
  }

  @override
  int hash(NotificationsRecord? e) => const ListEquality().hash(
      [e?.facilityName, e?.guestName, e?.guestEmail, e?.timeAdded, e?.city]);

  @override
  bool isValidKey(Object? o) => o is NotificationsRecord;
}
