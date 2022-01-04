import 'package:applore_assignment_app/modal/data_modal/data.modal.dart';
import 'package:applore_assignment_app/modal/service/auth/auth.service.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
// import 'package:mockito/mockito.dart';

// import 'auth.service_test.mocks.dart';


@GenerateMocks([UserModal, AuthService])
void main() {
  group('Testing Auth Service:-', () {
    // final authService = MockAuthService();

    // test('Stream : Get Current User', () async {
    //   when(authService.checkAuthStatus())
    //       .thenAnswer((_) => Stream.value(MockUserModal()));
    //   await expectLater(
    //       authService.checkAuthStatus(), Stream.value(isA<Stream<UserModal>>()));
    // });
  });
}
