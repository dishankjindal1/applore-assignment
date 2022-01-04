import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:applore_assignment_app/utils/utils.dart';

const dbName = 'deviceStorage';

class DBService {
  final FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;

  query({String? collectionPath}) async {
    if (collectionPath != null) {
      CollectionReference queryData =
          _firebaseFirestore.collection(collectionPath);
      return queryData;
    } else {
      throw Exception('DBService: collectionPath is empty');
    }
  }
}
