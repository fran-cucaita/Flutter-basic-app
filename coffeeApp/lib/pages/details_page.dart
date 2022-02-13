import 'package:flutter/material.dart';
import 'package:test_application/widgets/cronometro.dart';
import 'package:styled_text/styled_text.dart';
import 'home_page.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({
    Key? key,
    required this.image,
    required this.title,
    required this.description,
  }) : super(key: key);

  static const String ROUTE = '/details';
  final String image;
  final String title;
  final String description;

  final String marca = 'MAGOLITA';
  final String gramosmin = "17 Grs";
  final String gramosmax = "19 Grs";
  final String tiempo = '23 y 25 segundos';

  @override
  Widget build(BuildContext context) {
    double? gramos = 0.0;
    final double gramosTaza = gramos * 2;
    final String strGramosTaza = gramosTaza.toString() + ' Grs';
    final String strgramos = gramos.toString() + " Grs";

    return Scaffold(
      body: Stack(children: [
        GestureDetector(
            onTap: () => FocusScope.of(context).requestFocus(new FocusNode())),
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.cover,
            ),
          ),
        ),
        SingleChildScrollView(
          child: Column(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * .4,
                  ),
                  Center(
                    child: Opacity(
                      opacity: .7,
                      child: Container(
                          width: MediaQuery.of(context).size.width * .95,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.black),
                          child: Column(
                            children: [
                              Container(
                                margin: EdgeInsets.symmetric(
                                    vertical: 12, horizontal: 30),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        title,
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 30,
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.star_outlined,
                                            color: Colors.orange,
                                          ),
                                          Text(
                                            '4.5',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ]),
                              ),
                              Container(
                                margin: EdgeInsets.symmetric(
                                    vertical: 12, horizontal: 30),
                                child: Text(
                                  description,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                  ),
                                  textAlign: TextAlign.justify,
                                  // maxLines: 3,
                                ),
                              ),
                            ],
                          )),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .02,
                  ),
                  Opacity(
                    opacity: .7,
                    child: Container(
                      width: MediaQuery.of(context).size.width * .95,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.black),
                      child: Column(
                        children: [
                          Container(
                            alignment: Alignment.topLeft,
                            margin: EdgeInsets.symmetric(
                                vertical: 12, horizontal: 30),
                            child: Text(
                              'Receta',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                              ),
                            ),
                          ),
                          Container(
                            alignment: Alignment.topLeft,
                            margin: EdgeInsets.symmetric(
                                vertical: 12, horizontal: 30),
                            child: StyledText(
                              text:
                                  'En un filtro doble coloque entre <myTag>$gramosmin</myTag> y <myTag>$gramosmax</myTag> de Café <myTag>$marca</myTag>.',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                              tags: {
                                'myTag': StyledTextTag(
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: Colors.orange,
                                  ),
                                ),
                              },
                              textAlign: TextAlign.justify,
                            ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            margin: EdgeInsets.symmetric(vertical: 0),
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            height: 40,
                            width: MediaQuery.of(context).size.width * .8,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: TextField(
                              onChanged: (value) {
                                gramos = (double.parse(value));
                                print(gramos.toString());
                              },
                              decoration:
                                  InputDecoration(hintText: ("Ingres el peso")),
                              keyboardType: TextInputType.number,
                            ),
                          ),
                          Container(
                            alignment: Alignment.topLeft,
                            margin: EdgeInsets.symmetric(
                                vertical: 12, horizontal: 30),
                            child: StyledText(
                              text:
                                  'Distribuya el cafe con el cosito, presione con fuerza moderada con el tamper, coloque el filtro en su maquina espresso. recuerde pesar la taza y tarar la balanza. comienze la extraccion, cuando el peso en taza llegue a <myTag>$strGramosTaza</myTag> corte la extraccion.',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                              tags: {
                                'myTag': StyledTextTag(
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: Colors.orange,
                                  ),
                                ),
                              },
                              textAlign: TextAlign.justify,
                            ),
                          ),
                          Cronometro(),
                          Container(
                            alignment: Alignment.topLeft,
                            margin: EdgeInsets.symmetric(
                                vertical: 12, horizontal: 30),
                            child: StyledText(
                              text:
                                  'El tiempo de extraccion debe estar entre <myTag>$tiempo</myTag> si el tiempo esta por debajo de este rango haga tal cosa, si esta por encima haga tal otro.',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                              textAlign: TextAlign.justify,
                              tags: {
                                'myTag': StyledTextTag(
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: Colors.orange,
                                  ),
                                ),
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
