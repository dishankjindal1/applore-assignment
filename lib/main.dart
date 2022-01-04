import 'package:applore_assignment_app/bloc_observer.dart';
import 'package:applore_assignment_app/firebase_options.dart';
import 'package:applore_assignment_app/modal/modal.dart';
import 'package:applore_assignment_app/view/app.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  BlocOverrides.runZoned(
    () => runApp(const Root()),
    blocObserver: AppBlocObserver(),
  );
}

class Root extends StatelessWidget {
  const Root({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider<Repository>(create: (_) => Repository()),
      ],
      child: const MyApp(),
    );
  }
}
