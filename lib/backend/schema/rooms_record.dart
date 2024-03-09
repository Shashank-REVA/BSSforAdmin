import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RoomsRecord extends FirestoreRecord {
  RoomsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "room_type" field.
  String? _roomType;
  String get roomType => _roomType ?? '';
  bool hasRoomType() => _roomType != null;

  // "price" field.
  double? _price;
  double get price => _price ?? 0.0;
  bool hasPrice() => _price != null;

  // "city" field.
  String? _city;
  String get city => _city ?? '';
  bool hasCity() => _city != null;

  // "no" field.
  double? _no;
  double get no => _no ?? 0.0;
  bool hasNo() => _no != null;

  void _initializeFields() {
    _roomType = snapshotData['room_type'] as String?;
    _price = castToType<double>(snapshotData['price']);
    _city = snapshotData['city'] as String?;
    _no = castToType<double>(snapshotData['no']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('rooms');

  static Stream<RoomsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RoomsRecord.fromSnapshot(s));

  static Future<RoomsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => RoomsRecord.fromSnapshot(s));

  static RoomsRecord fromSnapshot(DocumentSnapshot snapshot) => RoomsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RoomsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RoomsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RoomsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RoomsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRoomsRecordData({
  String? roomType,
  double? price,
  String? city,
  double? no,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'room_type': roomType,
      'price': price,
      'city': city,
      'no': no,
    }.withoutNulls,
  );

  return firestoreData;
}

class RoomsRecordDocumentEquality implements Equality<RoomsRecord> {
  const RoomsRecordDocumentEquality();

  @override
  bool equals(RoomsRecord? e1, RoomsRecord? e2) {
    return e1?.roomType == e2?.roomType &&
        e1?.price == e2?.price &&
        e1?.city == e2?.city &&
        e1?.no == e2?.no;
  }

  @override
  int hash(RoomsRecord? e) =>
      const ListEquality().hash([e?.roomType, e?.price, e?.city, e?.no]);

  @override
  bool isValidKey(Object? o) => o is RoomsRecord;
}
