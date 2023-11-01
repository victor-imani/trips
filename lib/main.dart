import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trips/cubit/app_cubit_logics.dart';
import 'package:trips/cubit/app_cubits.dart';
import 'package:trips/pages/detail_page.dart';
import 'package:trips/services/data_Services.dart';
// import 'package:trips/pages/nav_pages/main_page.dart';
// import 'package:trips/pages/welcome_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      home: BlocProvider(
        create: (context) => AppCubits(data: DataServices(),),
        child: const AppCubitLogics(),
      ),
    );
  }
}
