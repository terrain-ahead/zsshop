import 'package:flutter/material.dart';
import 'package:shop_app/components/product_card.dart';
import 'package:shop_app/models/Products.dart';

import '../../../size_config.dart';
import 'section_title.dart';

class PopularProducts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 655,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
            child: SectionTitle(title: "Товары", press: () {}),
          ),
          SizedBox(height: getProportionateScreenWidth(20)),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(right: 20),
              child: GridView.count(
                  crossAxisCount: 2,
                  children: [
                    ...List.generate(
                      products.length,
                          (index) {
                        return ProductCard(product: products[index]);
                      },
                    ),
                    SizedBox(width: getProportionateScreenWidth(50)),
                  ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
