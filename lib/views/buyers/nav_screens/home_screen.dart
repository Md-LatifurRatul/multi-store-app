import 'package:ecom_multi_store/views/buyers/nav_screens/widgets/welcome_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).padding.top,
        left: 25,
        right: 15,
      ),
      child: Column(
        children: [
          WelcomeText(),
          SizedBox(
            height: 10,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: TextField(
              decoration: InputDecoration(
                fillColor: Colors.teal,
                filled: true,
                hintText: 'Search For Products',
                border: OutlineInputBorder(borderSide: BorderSide.none),
                prefixIcon: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: SvgPicture.asset(
                    'assets/icons/search.svg',
                    width: 10,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
