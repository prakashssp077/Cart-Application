import 'package:cartapp/main.dart';
import 'package:flutter/material.dart';

class ProductScreen extends StatelessWidget{

  final ValueSetter<ProductModel> _valueSetter;
  ProductScreen(this._valueSetter);

  List<ProductModel> products = [
    ProductModel("mic",50),
    ProductModel("LED Monitor",500),
    ProductModel("Mouse",10),
    ProductModel("Keyboard",100),
    ProductModel("Speaker",50),
    ProductModel("CD",5)
  ];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.separated(
        itemBuilder: (context,index){
          return ListTile(
            title: Text(products[index].name),
            trailing: Text("\$${products[index].price}",style: TextStyle(color: Colors.red,fontSize: 20),),
            onTap: (){
              _valueSetter(products[index]);

            },

          );
        },
        separatorBuilder: (context,index){
          return Divider();
        },
        itemCount:products.length
    );
  }

}