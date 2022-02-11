import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Column(
        children: [
          SizedBox(
            height: 12,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.asset(
              'lib/assets/chemex.jpg',
              width: 130,
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Row(
            children: [
              Container(
                padding: EdgeInsets.all(8),
                width: 68,
                child: Text(
                  '100.000',
                  textAlign: TextAlign.start,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              SizedBox(
                width: 65,
                child: Icon(
                  Icons.shopping_cart_outlined,
                  color: Colors.orange,
                ),

                // Text(
                //   'Carrito',
                //   textAlign: TextAlign.end,
                //   style: const TextStyle(
                //     color: Colors.orange,
                //     fontSize: 16,
                //     fontWeight: FontWeight.w700,
                //   ),
                // ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
