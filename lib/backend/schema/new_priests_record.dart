import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class NewPriestsRecord extends FirestoreRecord {
  NewPriestsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "new_name" field.
  String? _newName;
  String get newName => _newName ?? '';
  bool hasNewName() => _newName != null;

  // "new_spec" field.
  String? _newSpec;
  String get newSpec => _newSpec ?? '';
  bool hasNewSpec() => _newSpec != null;

  // "new_city" field.
  String? _newCity;
  String get newCity => _newCity ?? '';
  bool hasNewCity() => _newCity != null;

  // "new_image" field.
  String? _newImage;
  String get newImage => _newImage ?? '';
  bool hasNewImage() => _newImage != null;

  // "new_number" field.
  int? _newNumber;
  int get newNumber => _newNumber ?? 0;
  bool hasNewNumber() => _newNumber != null;

  // "pri_counter" field.
  int? _priCounter;
  int get priCounter => _priCounter ?? 0;
  bool hasPriCounter() => _priCounter != null;

  void _initializeFields() {
    _newName = snapshotData['new_name'] as String?;
    _newSpec = snapshotData['new_spec'] as String?;
    _newCity = snapshotData['new_city'] as String?;
    _newImage = snapshotData['new_image'] as String?;
    _newNumber = castToType<int>(snapshotData['new_number']);
    _priCounter = castToType<int>(snapshotData['pri_counter']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('new_priests');

  static Stream<NewPriestsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => NewPriestsRecord.fromSnapshot(s));

  static Future<NewPriestsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => NewPriestsRecord.fromSnapshot(s));

  static NewPriestsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      NewPriestsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static NewPriestsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      NewPriestsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'NewPriestsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is NewPriestsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createNewPriestsRecordData({
  String? newName,
  String? newSpec,
  String? newCity,
  String? newImage,
  int? newNumber,
  int? priCounter,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'new_name': newName,
      'new_spec': newSpec,
      'new_city': newCity,
      'new_image': newImage,
      'new_number': newNumber,
      'pri_counter': priCounter,
    }.withoutNulls,
  );

  return firestoreData;
}

class NewPriestsRecordDocumentEquality implements Equality<NewPriestsRecord> {
  const NewPriestsRecordDocumentEquality();

  @override
  bool equals(NewPriestsRecord? e1, NewPriestsRecord? e2) {
    return e1?.newName == e2?.newName &&
        e1?.newSpec == e2?.newSpec &&
        e1?.newCity == e2?.newCity &&
        e1?.newImage == e2?.newImage &&
        e1?.newNumber == e2?.newNumber &&
        e1?.priCounter == e2?.priCounter;
  }

  @override
  int hash(NewPriestsRecord? e) => const ListEquality().hash([
        e?.newName,
        e?.newSpec,
        e?.newCity,
        e?.newImage,
        e?.newNumber,
        e?.priCounter
      ]);

  @override
  bool isValidKey(Object? o) => o is NewPriestsRecord;
}
