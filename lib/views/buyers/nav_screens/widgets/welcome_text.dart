import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class WelcomeText extends StatelessWidget {
  const WelcomeText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context);
    return Padding(
      padding: EdgeInsets.only(top: size.padding.top, left: 25, right: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            'Hii, What Are You\n Looking For 🔍',
            style: TextStyle(
              fontSize: 21,
              fontWeight: FontWeight.bold,
            ),
          ),
          SvgPicture.asset('assets/icons/cart.svg'),
        ],
      ),
    );
  }
}
