import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  static WidgetBuilder page(BuildContext context) {
    return (context) => const SafeArea(child: Scaffold(body: HomePage()));
  }

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Home Page'),
    );
  }
}
