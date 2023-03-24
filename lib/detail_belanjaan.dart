import 'package:flutter/material.dart';
import 'groceries.dart';

class DetailBelanjaan extends StatefulWidget {
  final Groceries groceries;
  const DetailBelanjaan({Key? key, required this.groceries}) : super(key: key);


  @override
  State<DetailBelanjaan> createState() => _DetailBelanjaanState();
}

class _DetailBelanjaanState extends State<DetailBelanjaan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(widget.groceries.name),
          ],
        ),
      ),
      body: Column(
          children: <Widget>[
            Container(
              child: Image.network(widget.groceries.productImageUrls[0],
                width: 200,
                height: 200,),
            ),
            SizedBox(height: 20,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                    widget.groceries.name,
                    style: Theme.of(context).textTheme.headline6
                ),
                SizedBox(height: 8.0),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(

                      children: [
                        Text("Price = ", style: Theme.of(context).textTheme.headline6),
                        SizedBox(width: 8.0),
                        Text(widget.groceries.price, style: Theme.of(context).textTheme.headline6),
                      ],mainAxisAlignment: MainAxisAlignment.center,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Stock = ", style: Theme.of(context).textTheme.headline6),
                        SizedBox(width: 8.0),
                        Text(widget.groceries.stock, style: Theme.of(context).textTheme.headline6),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Discount = ", style: Theme.of(context).textTheme.headline6),
                        SizedBox(width: 8.0),
                        Text(widget.groceries.discount, style: Theme.of(context).textTheme.headline6),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Store Name = ", style: Theme.of(context).textTheme.headline6),
                        SizedBox(width: 8.0),
                        Text(widget.groceries.storeName, style: Theme.of(context).textTheme.headline6),
                      ],
                    ),
                    SizedBox(height: 8.0),
                    Text(
                      widget.groceries.description,
                    ),

                  ],
                ),


              ],
            ),


          ]
      ),
    );
  }
}