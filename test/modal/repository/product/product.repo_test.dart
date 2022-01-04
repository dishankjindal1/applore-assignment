import 'package:applore_assignment_app/modal/data_modal/data.modal.dart';
import 'package:applore_assignment_app/modal/repository/repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'product.repo_test.mocks.dart';

@GenerateMocks([ProductRepository, Product])
void main() {
  group('Testing ProductService.dart:-', () {
    final fakeProductRepository = MockProductRepository();

    test('fetch Single Product', () {
      when(fakeProductRepository.fetch(null))
          .thenAnswer((_) => Future.value(MockProduct()));
      expect(fakeProductRepository.fetch(null), isA<Future<Product>>());
    });

    test('fetch List of Product', () {
      when(fakeProductRepository.fetchList())
          .thenAnswer((_) => Future.value([MockProduct(), MockProduct()]));
      expect(fakeProductRepository.fetchList(), isA<Future<List<Product>>>());
    });
  });
}
