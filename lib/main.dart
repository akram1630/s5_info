import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:s5_info/compilation_tp01/cubit/tp01Cubit.dart';
import 'package:s5_info/shared/bloc_observer.dart';

import 'compilation_tp01/tp01HomeScreen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized(); // to make sure that all lines complete theie execution befor runApp();
  Bloc.observer = MyBlocObserver(); // to print the the actual state & updates
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (context) => tp01Cubit()
        )
      ],
      // bloc consumer is optional here
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: tp01HomeScreen() ,
      ),
    );
  }
}

