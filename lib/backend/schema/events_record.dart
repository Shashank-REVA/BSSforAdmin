import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EventsRecord extends FirestoreRecord {
  EventsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "event_name" field.
  String? _eventName;
  String get eventName => _eventName ?? '';
  bool hasEventName() => _eventName != null;

  // "event_location" field.
  String? _eventLocation;
  String get eventLocation => _eventLocation ?? '';
  bool hasEventLocation() => _eventLocation != null;

  // "event_photo" field.
  String? _eventPhoto;
  String get eventPhoto => _eventPhoto ?? '';
  bool hasEventPhoto() => _eventPhoto != null;

  // "event_date_time" field.
  DateTime? _eventDateTime;
  DateTime? get eventDateTime => _eventDateTime;
  bool hasEventDateTime() => _eventDateTime != null;

  void _initializeFields() {
    _eventName = snapshotData['event_name'] as String?;
    _eventLocation = snapshotData['event_location'] as String?;
    _eventPhoto = snapshotData['event_photo'] as String?;
    _eventDateTime = snapshotData['event_date_time'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('events');

  static Stream<EventsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => EventsRecord.fromSnapshot(s));

  static Future<EventsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => EventsRecord.fromSnapshot(s));

  static EventsRecord fromSnapshot(DocumentSnapshot snapshot) => EventsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static EventsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      EventsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'EventsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is EventsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createEventsRecordData({
  String? eventName,
  String? eventLocation,
  String? eventPhoto,
  DateTime? eventDateTime,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'event_name': eventName,
      'event_location': eventLocation,
      'event_photo': eventPhoto,
      'event_date_time': eventDateTime,
    }.withoutNulls,
  );

  return firestoreData;
}

class EventsRecordDocumentEquality implements Equality<EventsRecord> {
  const EventsRecordDocumentEquality();

  @override
  bool equals(EventsRecord? e1, EventsRecord? e2) {
    return e1?.eventName == e2?.eventName &&
        e1?.eventLocation == e2?.eventLocation &&
        e1?.eventPhoto == e2?.eventPhoto &&
        e1?.eventDateTime == e2?.eventDateTime;
  }

  @override
  int hash(EventsRecord? e) => const ListEquality()
      .hash([e?.eventName, e?.eventLocation, e?.eventPhoto, e?.eventDateTime]);

  @override
  bool isValidKey(Object? o) => o is EventsRecord;
}
