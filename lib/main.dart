import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trinity_wizard_test/bloc/data-bloc/data_bloc.dart';
import 'package:trinity_wizard_test/config/theme.dart';
import 'package:trinity_wizard_test/repository/data-repository.dart';
import 'package:trinity_wizard_test/screens/screen-one.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (BuildContext context) => DataBloc(DataRepository())),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: kPrimaryTheme),
        home: const ScreenOnePage(),
      ),
    );
  }
}
