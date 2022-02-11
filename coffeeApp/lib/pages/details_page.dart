import 'package:flutter/material.dart';
import 'package:test_application/widgets/calibrate_widget.dart';
import 'package:test_application/widgets/cronometro.dart';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
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
                            child: Text(
                              'En un filtro doble coloque entre  String gramos de Café MAGOLITA.\n\n Distribuya el cafe con el cosito, presione con fuerza moderada con el tamper, coloque el filtro en su maquina espresso. recuerde pesar la taza y tarar la balanza. comienze la extraccion, cuando el peso en taza llegue a gramos*2 corte la extraccion.',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                          ),
                          Cronometro(),
                          Container(
                            alignment: Alignment.topLeft,
                            margin: EdgeInsets.symmetric(
                                vertical: 12, horizontal: 30),
                            child: Text(
                              'El tiempo de extraccion debe estar entre 23seg-26seg si el tiempo esta por debajo de este rango tal, si esta por encima lo otro.',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
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







//       backgroundColor: Colors.black,
//       appBar: AppBar(
//         backgroundColor: Colors.black,
//       ),
//       body: SingleChildScrollView(
//         
//           child: Stack(
//             children: [
//               Column(
//                 children: [
//                   Container(
//                     margin: EdgeInsets.all(10),
//                     color: Colors.transparent,
//                     child: ClipRRect(
//                       borderRadius: BorderRadius.circular(20),
//                       child: Image.asset(
//                         image,
//                         height: MediaQuery.of(context).size.height * .6,
//                       ),
//                     ),
//                   ),
//                   Container(
//                     margin: EdgeInsets.all(12),
//                     width: MediaQuery.of(context).size.width * .8,
//                     padding: EdgeInsets.all(8),
//                     child: Opacity(
//                       opacity: 1,
//                       child: Text(
//                         'El café expreso (también llamado café exprés, express, espresso o solo) es una forma de preparación de café originada en Italia.1​ Debe su término a la obtención de esta bebida a través de una cafetera expreso.2​ Se caracteriza por su rápida preparación a una alta presión y por un sabor y textura más concentrados',
//                         textAlign: TextAlign.justify,
//                         style: TextStyle(color: Colors.white),
//                       ),
//                     ),
//                   ),
//                   // CalibrateWidget(),
//                   // SizedBox(
//                   //   height: 30,
//                   // ),
//                   // Cronometro(),
//                   // Container(
//                   //   width: 300,
//                   //   color: Colors.red,
//                   //   child: TextField(
//                   //     onChanged: (value) => print(value),
//                   //   ),
//                   // ),
//                 ],
//               ),
//               Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Container(
//                     height: MediaQuery.of(context).size.height * .4 + 1,
//                   ),
//                   Center(
//                     child: Opacity(
//                       opacity: .7,
//                       child: Container(
//                         width: MediaQuery.of(context).size.width * .95 + 2,
//                         height: MediaQuery.of(context).size.height * .21 + 1,
//                         decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(20),
//                             color: Colors.black),
//                       ),
//                     ),
//                   )
//                 ],
//               ),
//               Column(children: [
//                 Container(
//                     height: MediaQuery.of(context).size.height * .42,
//                     child: Container()),
//                 Container(
//                   width: 320,
//                   child: Row(children: [
//                     Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           "title",
//                           style: TextStyle(
//                             color: Colors.white,
//                             fontSize: 30,
//                           ),
//                         ),
//                         SizedBox(
//                           height: 10,
//                         ),
//                         SizedBox(
//                           width: 200,
//                           child: Text(
//                             "aaaaaaaaaaaaaasdaseeeeeeeeeedescripciondellapreparacionsadasdasldasdasd",
//                             style: TextStyle(
//                               color: Colors.white,
//                               fontSize: 16,
//                             ),
//                             maxLines: 3,
//                           ),
//                         ),
//                         SizedBox(
//                           height: 10,
//                         ),
//                         Row(
//                           children: [
//                             Icon(
//                               Icons.star_outlined,
//                               color: Colors.orange,
//                             ),
//                             Text(
//                               '4.5',
//                               style: TextStyle(
//                                 color: Colors.white,
//                                 fontSize: 20,
//                                 fontWeight: FontWeight.bold,
//                               ),
//                             ),
//                             Text("ss")
//                           ],
//                         )
//                       ],
//                     ),
//                     Column(
//                       children: [
//                         Row(
//                           children: [],
//                         )
//                       ],
//                     )
//                   ]),
//                 ),
//               ]),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
