import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_cubit_counter/app_blocs_observer.dart';
import 'package:flutter_cubit_counter/ui/counter/cubit/counter_cubit.dart';
import 'package:flutter_cubit_counter/ui/counter/view/counter_view.dart';

void main() {
  Bloc.observer = const AppBlocsObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BlocProvider(
        create: (_) => CounterCubit(),
        child: const CounterView(),
      ),
    );
  }
}
