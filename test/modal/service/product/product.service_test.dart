import 'package:applore_assignment_app/modal/data_modal/data.modal.dart';
import 'package:applore_assignment_app/modal/service/service.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'product.service_test.mocks.dart';

@GenerateMocks([ProductService])
void main() {
  group('Testing Product Modal:-', () {
    final fakeProductRepo = MockProductService();

    test('getResponse of Single Product', () {
      when(fakeProductRepo.getResponse())
          .thenAnswer((_) => Future.value(Product));
      expect(fakeProductRepo.getResponse(), isA<Future<dynamic>>());
    });

    test('getResponse of Array of Product', () {
      when(fakeProductRepo.getResponse())
          .thenAnswer((_) => Future.value([Product, Product]));
      expect(fakeProductRepo.getResponse(), isA<Future<dynamic>>());
    });

    test('statusResponse', () async {
      const path = 'https://google.com';
      final response = Response(
        data: '{"message":"success"}',
        statusCode: 200,
        requestOptions: RequestOptions(path: path),
      );
      when(fakeProductRepo.statusResponse(response))
          .thenAnswer((_) async => Future.value(response.data));
      await expectLater(fakeProductRepo.statusResponse(response), isA<Future<String>>());
    });

    test('error in statusResponse', () async {
      const path = 'https://google.com';
      final response = Response(
          data: '',
          statusCode: 404,
          requestOptions: RequestOptions(path: path));
      when(fakeProductRepo.statusResponse(response))
          .thenAnswer((_) async => throw Exception());
      await expectLater(fakeProductRepo.statusResponse(response), throwsException);
    });
  });
}
