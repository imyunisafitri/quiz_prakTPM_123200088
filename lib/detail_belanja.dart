import 'package:flutter/material.dart';
import 'groceries.dart';

class DetailBelanja extends StatefulWidget {
  final Groceries groceries;
  const DetailBelanja({Key? key, required this.groceries}) : super(key: key);


  @override
  State<DetailBelanja> createState() => _DetailBelanjaState();
}

class _DetailBelanjaState extends State<DetailBelanja> {
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
      body: Container(
        padding: EdgeInsets.all(20),
        child: Row(
          children: <Widget>[
            Card(
              child: Image.network(widget.groceries.productImageUrls[0],
                width: 200,
                height: 200,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Text("Pricess = ", ),
                    SizedBox(width: 8.0),
                    Text(widget.groceries.price,),
                  ],
                ),
                Row(
                  children: [
                    Text("Stock = ", style: Theme.of(context).textTheme.headline6),
                    SizedBox(width: 8.0),
                    Text(widget.groceries.stock, style: Theme.of(context).textTheme.headline6),
                  ],
                ),
                Row(
                  children: [
                    Text("Discount = ", style: Theme.of(context).textTheme.headline6),
                    SizedBox(width: 8.0),
                    Text(widget.groceries.discount, style: Theme.of(context).textTheme.headline6),
                  ],
                ),
                Row(
                  children: [
                    Text("Store Name = ", style: Theme.of(context).textTheme.headline6),
                    SizedBox(width: 8.0),
                    Text(widget.groceries.storeName, style: Theme.of(context).textTheme.headline6),
                  ],
                ),
              ],
            )
          ],
        ),
      )
    );
  }
}