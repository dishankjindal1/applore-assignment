import 'package:applore_assignment_app/modal/data_modal/data.modal.dart';
import 'package:applore_assignment_app/modal/repository/product.repo.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'product.service_test.mocks.dart';


@GenerateMocks([ProductRepository])
void main() {
  group('Testing Product Modal:-', () {
    final product = MockProductRepository();

    test('getResponse of Single Product', () {
      when(product.getResponse()).thenAnswer((_) => Future.value(Product));
      expect(product.getResponse(), isA<Future<dynamic>>());
    });

    test('getResponse of Array of Product', () {
      when(product.getResponse())
          .thenAnswer((_) => Future.value([Product, Product]));
      expect(product.getResponse(), isA<Future<dynamic>>());
    });

    test('statusResponse', () {
      const path = 'https://google.com';
      final response = Response(
        data: '{"message":"success"}',
        statusCode: 200,
        requestOptions: RequestOptions(path: path),
      );
      when(product.statusResponse(response)).thenAnswer((_) async => Future.value(response.data));
      expect(product.statusResponse(response), isA<Future<String>>());
    });
  });
}
