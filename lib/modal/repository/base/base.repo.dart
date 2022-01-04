import 'package:dio/dio.dart';

const String appUrl = 'https://61d3342ab4c10c001712b860.mockapi.io';

abstract class BaseRepository {
  Dio? baseDio = Dio();
  Future getResponse();
}