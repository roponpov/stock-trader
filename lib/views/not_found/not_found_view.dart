import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import '../../core/constants/lottie_constant.dart';

class NotFoundView extends StatelessWidget {
  const NotFoundView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          width: MediaQuery.sizeOf(context).width / 1.5,
          child: Lottie.asset(LottieConstant.notFound,repeat: false),
        ),
      ),
    );
  }
}
