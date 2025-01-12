import 'package:flutter/material.dart';

class BannerWidget extends StatelessWidget {
  const BannerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Container(
      height: 140,
      width: size.width,
      decoration: BoxDecoration(
        color: Colors.yellow.shade900,
      ),
    );
  }
}
