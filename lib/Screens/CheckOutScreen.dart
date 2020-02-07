import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CheckOutScreen extends StatelessWidget{

  final cart;
  final sum;
  CheckOutScreen(this.cart, this.sum);

  @override
  Widget build(BuildContext context) {

    // TODO: implement build
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          ListView.separated(
            itemBuilder: (context,index){
              return ListTile(
                title: Text(cart[index].name),
                trailing: Text("\$${cart[index].price}",style: TextStyle(color: Colors.red,fontSize: 20),),
                onTap: (){


                },

              );
            },
            separatorBuilder: (context,index){
              return Divider();
            },
            itemCount:cart.length,
            shrinkWrap: true,
          ),
          Divider(),
          Text("Total: \$$sum",style: TextStyle(fontSize: 30),),


        ],
      ),
    );
    
  }

}