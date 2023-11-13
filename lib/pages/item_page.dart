import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../widgets/color_of_product.dart';
import '../widgets/item_appbar.dart';
import '../widgets/item_nav_bar.dart';
import '../widgets/size_of_product.dart';

class ItemPage extends StatelessWidget {
  ItemPage({Key? key, required this.itemData}) : super(key: key);

  final Map<String, String> itemData;

  @override
  Widget build(BuildContext context) {

    String? Price = itemData["Price"];

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
                      initialRating: 4,
                      minRating: 1,
                      direction: Axis.horizontal,
                      itemCount: 5,
                      itemSize: 20,
                      itemPadding: EdgeInsets.symmetric(horizontal: 4),

                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 15.0),
                      child: Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(4),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 1,
                                  blurRadius: 10,
                                ),
                              ],
                            ),
                            child: Icon(
                              CupertinoIcons.plus,
                              size: 18,
                            ),
                          ),

                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 10),
                            child: Text (
                              "01",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.blue,
                              ),
                            ),
                          ),

                          Container(
                            padding: EdgeInsets.all(4),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 1,
                                  blurRadius: 10,
                                ),
                              ],
                            ),
                            child: Icon(
                              CupertinoIcons.minus,
                              size: 18,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),

              //Brought Description of product
              Padding(
                  padding: EdgeInsets.symmetric(vertical: 12),
                child: Container(
                  margin: EdgeInsets.only(left: 10, right: 10),
                  child: Text(
                      itemData["BigDescription"] ?? "Big Description",
                    textAlign: TextAlign.justify,
                    maxLines: 5,
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.indigo
                    ),
                  ),
                ),
              ),
              Padding(
                  padding: EdgeInsets.symmetric(vertical: 8),
                child: Row(
                  children: [
                    Text(
                        "Size",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.blue,
                      ),
                    ),
                    SizedBox(width: 10,),

                    SizeOfProduct(),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 8),
                child: Row(
                  children: [
                    Text(
                      "Colors:",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.blue,
                      ),
                    ),
                    SizedBox(width: 10,),

                    ColorsOfProduct(),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: ItemNavBar(
        price: itemData["Price"].toString() ?? "0",
      ),
    );
  }
}




