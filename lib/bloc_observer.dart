import 'package:applore_assignment_app/utils/utils.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppBlocObserver extends BlocObserver {
@override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    'Bloc_v8 (onChange) : $bloc\n$change'.log();
  }
}