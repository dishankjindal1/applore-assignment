import 'package:dio/dio.dart';

const String serverUrl = 'https://61d3342ab4c10c001712b860.mockapi.io';

abstract class BaseService {
  Dio? baseDio = Dio();
  Future getResponse();
}