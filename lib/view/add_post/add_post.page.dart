import 'package:flutter/material.dart';

class AddPostPage extends StatelessWidget {
  const AddPostPage({Key? key}) : super(key: key);

  static WidgetBuilder page(BuildContext context) {
    return (context) => const SafeArea(child: Scaffold(body: AddPostPage()));
  }

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Add Post Page'),
    );
  }
}
