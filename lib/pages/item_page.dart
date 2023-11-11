import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../widgets/item_appbar.dart';

class ItemPage extends StatelessWidget {
  ItemPage({Key? key, required this.itemData}) : super(key: key);

  final Map<String, String> itemData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          ItemAppBar(title: 'Product'),
          Padding(
            padding: EdgeInsets.all(16),
            child: Container(
              height:300,
              width: 300,
              child: Image.asset(itemData["images"] ?? 'images/Item_Photo/NoImageAvailable.jpg'),
              ),
          ),
          Column(
            children: [
              Padding(
                padding: EdgeInsets.only(
                //top: 50,
                bottom: 20,
                  left: 20
              ),
                child: Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    itemData["ProductTitle"] ?? "Product Title",
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 5, bottom: 10,left: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RatingBar.builder(
                        itemBuilder: (context,_) => Icon(
                          Icons.favorite,
                          color: Colors.blue,
                        ),
                        onRatingUpdate: (index){},
                      initialRating: 5,
                      minRating: 1,
                      direction: Axis.horizontal,
                      itemCount: 5,
                      itemSize: 20,
                      itemPadding: EdgeInsets.symmetric(horizontal: 4),

                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}




