import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shop_app/components/rounded_icon_btn.dart';
import 'package:shop_app/models/Products.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class ColorDots extends StatefulWidget {
  ColorDots({
    Key key,
    @required this.product, this.order,
  }) : super(key: key);

  final Products product;
  final Order order;
  int counter = 0;
  StreamController streamController;
  Sink sink;
  Stream stream;
  @override
  _ColorDotsState createState() => _ColorDotsState();
}


class _ColorDotsState extends State<ColorDots> {
  @override
  void initState() {
    super.initState();
     widget.streamController = StreamController();
     widget.stream = widget.streamController.stream;
     widget.sink = widget.streamController.sink;
    print("here i am");
  }
  @override
  Widget build(BuildContext context) {
    // Now this is fixed and only for demo
    int counter = 0;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: Row(
        children: [
          StreamBuilder(
            stream: widget.stream,
            initialData: '0',
            builder: (context, snapshot) {
              return Text("Выбрано штук: "+snapshot.data);
            }
          ),
          Spacer(),
          RoundedIconBtn(
            icon: Icons.remove,
            press: () {
              widget.order.dec();
              widget.sink.add(widget.order.count.toString());
            },
          ),
          SizedBox(width: getProportionateScreenWidth(20)),
          RoundedIconBtn(
            icon: Icons.add,
            showShadow: true,
            press: () {
              widget.order.add();
              widget.sink.add(widget.order.count.toString());
            },
          ),
        ],
      ),
    );
  }
}

class Order{
  int _count = 0;
  Products _product;
  Order(this._product);
  void add(){
    _count+=1;
    print(_count);
  }
  void dec(){
    if(!(_count <= 0)){
      _count--;
    }
  }
  int get count => _count;
  Products get product => _product;
}

//  GestureDetector roundColor(int index, Color color) {
//    bool isSelected = false;
//    return GestureDetector(
//      onTap: (){
//        isSelected = true;
//      },
//      child: AnimatedContainer(
//        duration: defaultDuration,
//        margin: EdgeInsets.only(right: 2),
//        padding: EdgeInsets.all(getProportionateScreenWidth(8)),
//        height: getProportionateScreenWidth(40),
//        width: getProportionateScreenWidth(40),
//        decoration: BoxDecoration(
//          color: Colors.transparent,
//          border: Border.all(color: isSelected ? kPrimaryColor : Colors.transparent),
//          shape: BoxShape.circle,
//        ),
//        child: DecoratedBox(
//          decoration: BoxDecoration(
//            color: color,
//            shape: BoxShape.circle,
//          ),
//        ),
//      ),
//    );
//  }
