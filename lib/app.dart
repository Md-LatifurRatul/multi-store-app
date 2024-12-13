import 'package:ecom_multi_store/views/buyers/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MultiStoreApp extends StatelessWidget {
  const MultiStoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Brand-Bold',
      ),
      home: const MainScreen(),
      title: 'Multi Store App',
    );
  }
}
