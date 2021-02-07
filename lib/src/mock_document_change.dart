import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:mockito/mockito.dart';

class MockDocumentChange extends Mock implements DocumentChange {
  final DocumentSnapshot _document;
  final DocumentChangeType _type;
  final int _oldIndex;
  final int _newIndex;

  MockDocumentChange(
    this._document,
    this._type, {
    int oldIndex = -1,
    int newIndex = -1,
  })  : _oldIndex = oldIndex,
        _newIndex = newIndex;

  @override
  DocumentChangeType get type => _type;

  @override
  int get oldIndex => _oldIndex;

  @override
  int get newIndex => _newIndex;

  @override
  DocumentSnapshot get doc => _document;
}
