import 'package:flutter/material.dart';
import 'package:test_application/pages/details_page.dart';
import 'package:test_application/routes/routes.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  static const String ROUTE = '/home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 50,
              width: 300,
              color: Colors.red,
            ),
            Container(
              height: 400,
              width: 300,
              color: Colors.blueAccent,
            ),
            Container(
              height: 400,
              width: 300,
              color: Colors.red,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => (DetailsPage()),
                    ));
              },
              child: Text('Detalles'),
            ),
          ],
        ),
      ),
    );
  }
}
