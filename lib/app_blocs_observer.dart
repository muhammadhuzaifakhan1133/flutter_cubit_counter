import 'package:bloc/bloc.dart';

class AppBlocsObserver extends BlocObserver {
  const AppBlocsObserver();

  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    print("${bloc.runtimeType} $change");
  }
}
