import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:projectmain/app/routes/app_pages.dart';

import '../../themes.dart';

class SplashScreenView extends StatefulWidget {
  const SplashScreenView({Key? key}) : super(key: key);

  @override
  State<SplashScreenView> createState() => _SplashScreenViewState();
}

class _SplashScreenViewState extends State<SplashScreenView> {
  double width = Get.width * 0.2;

  @override
  void initState() {
    super.initState();
    checkRoute();
  }

  Future<void> checkRoute() async {
    await Future.delayed(const Duration(milliseconds: 2000));
    Get.offNamed(Routes.HOME);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
              duration: const Duration(milliseconds: 1000),
              height: 100,
              child: Image.asset("assets/images/loading.gif"),
            ),
            const Text("Loading....")
          ],
        ),
      ),
    );
  }
}
