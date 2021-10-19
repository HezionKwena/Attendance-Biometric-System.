import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hezion_s/services/services.dart';

class Collection<T> {
  final FirebaseFirestore _db = FirebaseFirestore.instance;
  final String? path;
  CollectionReference? ref;

  Collection({this.path}) {
    ref = _db.collection(path!);
  }

  // Get data from the data database.
  Future<List<T>> getData() async {
    var snapshot = await ref!.get().then((value) => null);
    return snapshot;
  }

  // Stream data to my App.
  Stream<List<T>> streamData() {
    return ref!.snapshots().map((list) =>
        list.docs.map((doc) => Global.models[T](doc.data()) as T).toList());
  }
}

class Document<T> {}
