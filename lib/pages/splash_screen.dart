import 'package:apptravel/pages/get_started_screen.dart';
import 'package:apptravel/style_theme.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

// asnyc splash screen
class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToStarted();
  }

  _navigateToStarted() async {
    await Future.delayed(const Duration(seconds: 3), () {});
    Navigator.pushReplacement(context,
        MaterialPageRoute(builder: (context) => const StartedScreen()));
  }

//
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: purpleColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/logo.png",
              width: 100,
              height: 100,
            ),
            const SizedBox(
              height: 50,
            ),
            Text(
              "Airplane",
              style: TextStyle(
                fontSize: 32,
                color: whiteColor,
                letterSpacing: 10,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
