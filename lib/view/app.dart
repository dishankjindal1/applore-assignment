import 'package:applore_assignment_app/view/add_post/add_post.page.dart';
import 'package:applore_assignment_app/view/home/home.page.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Applore Assignment',
      routes: {
        '/':  HomePage.page(context),
        '/add': AddPostPage.page(context),
      },
      // disable debug banner
      debugShowCheckedModeBanner: false,
    );
  }
}
