import 'dart:io';

import 'package:applore_assignment_app/modal/repository/base.repo.dart';
import 'package:applore_assignment_app/utils/utils.dart';
import 'package:dio/dio.dart';

class ProductRepository implements BaseRepository {
  static String path = '/product';
  @override
  Dio? baseDio;

  @override
  Future getResponse() async {
    Response res;
      res = await baseDio!.get(appUrl + path);
      Future data = statusResponse(res);
      return Future.delayed(const Duration(seconds: 2))
          .then((value) => 'getResponse: Product Repository'.log()).then((value) => data);
  }
  
  Future<Response> statusResponse(Response response) {
    switch (response.statusCode) {
      case 200:
        return response.data;
      case 404:
        throw Exception('No Url Found');
      default:
        throw Exception('Something unusual happened on the server side');
    }
  }
}
