import 'package:applore_assignment_app/modal/service/base.service.dart';
import 'package:applore_assignment_app/utils/utils.dart';
import 'package:dio/dio.dart';

class ProductService implements BaseService {
  static String productUrlPath = '/product';

  @override
  Future getResponse({String path = ''}) async {
    String getResponseUrl = productUrlPath + path;
    Response getClientResponse = await (baseDio ?? Dio()).get(serverUrl + getResponseUrl);
    Future getResponseData = statusResponse(getClientResponse);
    return Future.delayed(const Duration(seconds: 2))
        .then((value) => 'getResponse: Product Repository'.log())
        .then((value) => getResponseData);
  }

  Future<String> statusResponse(Response? response) {
    switch (response?.statusCode ?? 000) {
      case 200:
        return response?.data;
      case 404:
        throw Exception('No Url Found');
      case 000:
        throw Exception('Response is null');
      default:
        throw Exception('Something unusual happened on the server side');
    }
  }

  @override
  Dio? baseDio;
}
