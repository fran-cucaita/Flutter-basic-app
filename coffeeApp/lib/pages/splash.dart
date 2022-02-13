import 'package:flutter/material.dart';
import 'package:test_application/pages/home_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  void initState() {
    super.initState();
    _navigatorToHome();
  }

  void _navigatorToHome() async {
    await Future.delayed(Duration(milliseconds: 2000), () {});
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => (HomePage())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          children: [
            Container(
              height: 300,
            ),
            Container(
              height: 200,
              width: 200,
              child: Image.asset(
                'lib/assets/coffeApp.png',
                color: Colors.orange,
              ),
            ),
            Container(
              height: 10,
              width: 200,
            ),
            Container(
              height: 200,
              width: 200,
              child: Text(
                'Coffe App',
                style: TextStyle(
                  color: Colors.orange,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
      ),
    );
  }
}
