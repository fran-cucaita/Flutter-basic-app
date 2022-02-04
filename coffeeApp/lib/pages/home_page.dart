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
            Center(
              child: Container(
                height: 50,
                width: MediaQuery.of(context).size.width * .9,
                color: Colors.white,
                child: Container(
                  padding: EdgeInsets.all(8),
                  child: TextField(
                    onChanged: (value) {
                      print(value);
                    },
                    decoration: InputDecoration(
                      labelText: "Busqueda",
                      border: OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.number,
                  ),
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 1,
              color: Colors.blueAccent[100],
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Recetas',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      Text("Ver todas")
                    ],
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * .3,
                    padding: EdgeInsets.symmetric(vertical: 8),
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      padding: const EdgeInsets.all(8),
                      children: <Widget>[
                        Container(
                          width: 170,
                          color: Colors.amber[600],
                          child: Column(
                            children: [
                              Container(
                                height: 150,
                                width: 150,
                                margin: EdgeInsets.all(12),
                                color: Colors.green,
                                child: Image.asset('lib/assets/cafe.jpg'),
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => (DetailsPage()),
                                      ));
                                },
                                child: Text('Receta'),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 170,
                          color: Colors.amber[600],
                          child: Column(
                            children: [
                              Container(
                                margin: EdgeInsets.all(12),
                                height: 150,
                                width: 150,
                                color: Colors.green,
                                child: Image.asset('lib/assets/cafe.jpg'),
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => (DetailsPage()),
                                      ));
                                },
                                child: Text('Receta'),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 170,
                          color: Colors.amber[600],
                          child: Column(
                            children: [
                              Container(
                                height: 150,
                                width: 150,
                                margin: EdgeInsets.all(12),
                                color: Colors.green,
                                child: Image.asset('lib/assets/cafe.jpg'),
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => (DetailsPage()),
                                      ));
                                },
                                child: Text('Receta'),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 1,
              color: Colors.blueAccent[100],
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Productos',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      Text("Ver todas")
                    ],
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * .3,
                    padding: EdgeInsets.symmetric(vertical: 8),
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      padding: const EdgeInsets.all(8),
                      children: <Widget>[
                        Container(
                          width: 170,
                          color: Colors.amber[600],
                          child: Column(
                            children: [
                              Container(
                                height: 150,
                                width: 150,
                                margin: EdgeInsets.all(12),
                                color: Colors.green,
                                child: Image.asset('lib/assets/cafe.jpg'),
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => (DetailsPage()),
                                      ));
                                },
                                child: Text('Ver'),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 170,
                          color: Colors.amber[600],
                          child: Column(
                            children: [
                              Container(
                                margin: EdgeInsets.all(12),
                                height: 150,
                                width: 150,
                                color: Colors.green,
                                child: Image.asset('lib/assets/cafe.jpg'),
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => (DetailsPage()),
                                      ));
                                },
                                child: Text('Ver'),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 170,
                          color: Colors.amber[600],
                          child: Column(
                            children: [
                              Container(
                                height: 150,
                                width: 150,
                                margin: EdgeInsets.all(12),
                                color: Colors.green,
                                child: Image.asset('lib/assets/cafe.jpg'),
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => (DetailsPage()),
                                      ));
                                },
                                child: Text('Ver'),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
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
          ],
        ),
      ),
    );
  }
}
