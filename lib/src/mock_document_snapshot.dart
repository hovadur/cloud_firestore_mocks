import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_firestore_mocks/src/mock_document_reference.dart';
import 'package:cloud_firestore_mocks/src/util.dart';
import 'package:mockito/mockito.dart';

import 'util.dart';

class MockDocumentSnapshot extends Mock implements DocumentSnapshot {
  final String _id;
  final Map<String, dynamic>? _document;
  final bool _exists;
  final MockDocumentReference _reference;

  MockDocumentSnapshot(
      this._reference, this._id, Map<String, dynamic>? document, this._exists)
      : _document = deepCopy(document);

  @override
  String get id => _id;

  @override
  dynamic get(dynamic key) => _document?[key];

  @override
  Map<String, dynamic>? data() {
    if (_exists) {
      return deepCopy(_document);
    } else {
      return null;
    }
  }

  @override
  bool get exists => _exists;

  @override
  DocumentReference get reference => _reference;
}
