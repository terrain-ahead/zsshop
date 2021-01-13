import 'package:flutter/material.dart';
import 'package:shop_app/components/CartStream.dart';
import 'package:shop_app/components/default_button.dart';
import 'package:shop_app/models/Cart.dart';
import 'package:shop_app/models/Products.dart';
import 'package:shop_app/size_config.dart';
import 'color_dots.dart';
import 'product_description.dart';
import 'top_rounded_container.dart';
import 'product_images.dart';

class Body extends StatelessWidget {
  final Products product;
  Order order;
  Body({Key key, @required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    order = Order(product);
    return Column(
      children: [
        ProductImages(product: product),
        TopRoundedContainer(
          color: Colors.white,
          child: Column(
            children: [
              ProductDescription(
                product: product,
                pressOnSeeMore: () {},
              ),
              TopRoundedContainer(
                color: Color(0xFFF6F7F9),
                child: Column(
                  children: [
                    ColorDots(product: product,order: order,),
                    TopRoundedContainer(
                      color: Colors.white,
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: SizeConfig.screenWidth * 0.15,
                          right: SizeConfig.screenWidth * 0.15,
                          bottom: getProportionateScreenWidth(42),
                          top: getProportionateScreenWidth(20),
                        ),
                        child: DefaultButton(
                          text: "Добавить ",
                          press: () {
                            demoCarts.add(Cart(product: product, numOfItem: order.count));
                            cart_sum+=order.product.price*order.count;
                            cart_sink.add(cart_sum);
                            print(cart_sum.toString());
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
