import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index){
      return const ListTile(
        leading: Icon(Icons.category),
        title: Text("Product Name"),
        subtitle: Text("this is the prooduct detals"),
        trailing: Icon(Icons.arrow_forward),
      );
    },
    itemCount: 10,
    );
  }
}
