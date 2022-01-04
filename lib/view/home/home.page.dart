import 'package:applore_assignment_app/modal/modal.dart';
// import 'package:applore_assignment_app/utils/utils.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterfire_ui/auth.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  static WidgetBuilder page(BuildContext context) {
    return (context) => const SafeArea(child: HomePage());
  }

  @override
  Widget build(BuildContext context) {
    var repo = RepositoryProvider.of<Repository>(context);
    return Scaffold(
      body: StreamBuilder<User?>(
          stream: repo.authService().checkAuthStatus(),
          builder: (context, asyncSnapshot) {
            if (asyncSnapshot.data != null) {
              return Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(asyncSnapshot.data?.email ?? 'Error'),
                    const SignOutButton(),
                  ],
                ),
              );
            }

            return const Center(
              child: SignInScreen(providerConfigs: [
                EmailProviderConfiguration(),
              ]),
            );
          }),
    );
  }
}
