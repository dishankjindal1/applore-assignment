import 'package:applore_assignment_app/modal/repository/product.repo.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Testing Product Modal', () {
    ProductRepository productRepository;
    late dynamic data;

    test('fetching', () async {
      productRepository = ProductRepository();
      data = await productRepository.getResponse();

    });
  });
}
