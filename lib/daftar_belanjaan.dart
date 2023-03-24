import 'package:flutter/material.dart';
import 'detail_belanjaan.dart';
import 'groceries.dart';

class DaftarBelanjaan extends StatefulWidget {
  const DaftarBelanjaan({Key? key}) : super(key: key);

  @override
  State<DaftarBelanjaan> createState() => _DaftarBelanjaanState();
}

class _DaftarBelanjaanState extends State<DaftarBelanjaan> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Daftar Belanjaan',),
      ),
      body: ListView.builder(
        itemBuilder: (context, index){
          final Groceries groceries = groceryList[index];
          return InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(
                  builder: (context) => DetailBelanjaan(groceries:groceries)
              )
              );
            },
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Card(
                child: Column(
                  children: <Widget>[
                    Card(
                      child: Image.network(groceries.productImageUrls[0],
                        width: 200,
                        height: 200,
                      ),
                    ),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(height: 5.0),
                          Text(
                            groceries.name,
                            style: Theme.of(context).textTheme.headline6
                          ),
                          SizedBox(height: 8.0),
                          Text(
                              groceries.storeName,
                              style: Theme.of(context).textTheme.subtitle1
                          ), SizedBox(height: 5.0),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        },
        itemCount: groceryList.length,

      ),
    );
  }
}