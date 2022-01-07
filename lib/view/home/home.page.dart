import 'package:applore_assignment_app/modal/modal.dart';
import 'package:applore_assignment_app/view_modal/product/bloc/product_bloc.dart';
// import 'package:applore_assignment_app/utils/utils.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterfire_ui/auth.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  static WidgetBuilder page(BuildContext context) {
    return (context) => SafeArea(
          child: BlocProvider(
            create: (_) => ProductBloc(),
            child: const HomePage(),
          ),
        );
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
                    const SizedBox(height: 100),
                    BlocBuilder<ProductBloc, ProductState>(
                        builder: (context, state) {
                      if (state is ProductLoadCompleteState) {
                        return Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(state.product.id ?? 'No Data'),
                            Text(state.product.description ?? 'No Data'),
                            Text(state.product.price ?? 'No Data'),
                          ],
                        );
                      }
                      if (state is ProductInitialState) {
                        return Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: const [Text('Check Product')],
                        );
                      }
                      if (state is ProductRemoveCompleteState) {
                        return Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: const [Text('Product Removed')],
                        );
                      }
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    }),
                    ElevatedButton(
                        onPressed: () {
                          Product product = const Product.empty(
                              id: '1',
                              description: 'dishank here',
                              imageUrl: 'https://dishank.dev',
                              price: '9999');
                          context.read<ProductBloc>().add(ProductAdd(product));
                        },
                        child: const Text('Check product')),
                    ElevatedButton(
                        onPressed: () {
                          context.read<ProductBloc>().add(ProductRemove());
                        },
                        child: const Text('remove product')),
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
