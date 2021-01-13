import 'package:flutter/material.dart';
import 'package:shop_app/models/Products.dart';
import '../../../size_config.dart';

class ProductDescription extends StatelessWidget {
  const ProductDescription({
    Key key,
    @required this.product,
    this.pressOnSeeMore,
  }) : super(key: key);

  final Products product;
  final GestureTapCallback pressOnSeeMore;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: Center(
            child: Text(
              product.prod_name,
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: Center(
            child: Text(
              "Свойства: \n"
                  "a).Цвет: "+product.color+" "
                  "b).Размер: "+product.size+" "
                  "c).Категория: "+(product.category_id == 1?"Одежда":product.category_id == 2?"Обувь":"Аксессуары")+" "
                  "d).Брэнд: "+product.brand+" "
                  "e).Количество на складе: "+product.quantity.toString(),
              maxLines: 4,
            ),
          ),
        ),
      ],
    );
  }
}
