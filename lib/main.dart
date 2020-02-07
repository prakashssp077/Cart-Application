import 'package:cartapp/Screens/CheckOutScreen.dart';
import 'package:cartapp/Screens/ProductScreen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CartApp()
    );
  }
}

class CartApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return CartAppState();
  }

}

class CartAppState extends State<CartApp>{
  List<ProductModel> cart = [];
  int sum=0;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Cart App"),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(text: "Products",),
              Tab(text: "Checkout",)
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            ProductScreen((selectedproduct){
              setState(() {
                cart.add(selectedproduct);
                sum = 0;
                cart.forEach((item){
                  sum =sum +item.price;
                });
              });
            }),
            CheckOutScreen(cart,sum),
          ],
        ),
      ),
    );
  }

}

class ProductModel{
  String name;
  int price;

  ProductModel(String name, int price){
    this.name = name;
    this.price = price;
  }
}

