import 'package:ecom_multi_store/views/buyers/nav_screens/widgets/banner_widget.dart';
import 'package:ecom_multi_store/views/buyers/nav_screens/widgets/search_input_widget.dart';
import 'package:ecom_multi_store/views/buyers/nav_screens/widgets/welcome_text.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        WelcomeText(),
        SizedBox(
          height: 14,
        ),
        SearchInputWidget(),
        BannerWidget(),
      ],
    );
  }
}
