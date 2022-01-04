export 'data_modal/data.modal.dart';
export 'repository/repository.dart';
export 'service/service.dart';

import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/foundation.dart';
//
// import 'data_modal/data.modal.dart';
// import 'repository/repository.dart';
import 'service/service.dart';

class Repository {
  final DBService _dbService = DBService();
  final AuthService _authService = AuthService();

  int count = 0;
  increment() => count = count+1;

  CollectionReference getCollection({String? collectionPath}) {
    return _dbService.query(collectionPath: collectionPath ?? '/product');
  }

  AuthService authService() => _authService;

}
