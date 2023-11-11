import 'package:ecommerce_app_ui/pages/item_page.dart';
import 'package:flutter/material.dart';

class ItemsWidgets extends StatelessWidget {
  ItemsWidgets({
    Key? key
    // required this.images,
    // required this.ProductTitle,
    // required this.Description,
    // required this.Price,
    // required this.DiscountPercentages,
  }) : super(key: key);

  // String images;
  // String ProductTitle;
  // String Description;
  // int Price;
  // int DiscountPercentages ;



  final DataSet =[
    {
      "images" : "images/wepik-export-20231108100018DNB7.png",
      "ProductTitle" : "Analog Watch",
      "Description" : "Classic Series Watches.",
      "Price" : "10000",
      "DiscountPercentages" : "25"
    },
    {
      "images" : "images/Item_Photo/t-shirt.jpg",
      "ProductTitle" : "T-shirt",
      "Description" : "Black cotton t-shirt",
      "Price" : "300",
      "DiscountPercentages" : "20"
    },
    {
      "images" : "images/Item_Photo/Tv.jpg",
      "ProductTitle" : "Walton TV",
      "Description" : "42 inch smart TV",
      "Price" : "42000",
      "DiscountPercentages" : "10"
    },
    {
      "images" : "images/Item_Photo/jewellery.jpg",
      "ProductTitle" : "Golden Jewellery",
      "Description" : "24 carte gold",
      "Price" : "120000",
      "DiscountPercentages" : "5"
    },
    {
      "images" : "images/Item_Photo/Sofa1.jpg",
      "ProductTitle" : "Red Sofa",
      "Description" : "Very Comfortable & cosy",
      "Price" : "25000",
      "DiscountPercentages" : "10"
    },
    {
      "images" : "images/Item_Photo/smart_watches.jpg",
      "ProductTitle" : "Smart Watch",
      "Description" : "A fitness smart Watch",
      "Price" : "5500",
      "DiscountPercentages" : "15"
    },
    {
      "images" : "images/Item_Photo/rerazator.jpg",
      "ProductTitle" : "Walton freezer",
      "Description" : "24 hours support",
      "Price" : "35000",
      "DiscountPercentages" : "12"
    },
    {
      "images" : "images/Item_Photo/pink-handbags.jpg",
      "ProductTitle" : "Pink Hand Bags",
      "Description" : "Styles Hand Bags",
      "Price" : "3300",
      "DiscountPercentages" : "50"
    },
    {
      "images" : "images/Item_Photo/ac.jpeg",
      "ProductTitle" : "Air Conditioner",
      "Description" : "Stay cool and comfortable",
      "Price" : "15000",
      "DiscountPercentages" : "14"
    },
    {
      "images" : "images/Item_Photo/phone2.png",
      "ProductTitle" : "Vivo 20 pro",
      "Description" : "64 mp camera",
      "Price" : "25000",
      "DiscountPercentages" : "18"
    },
    {
      "images" : "images/Item_Photo/jewellery2.jpg",
      "ProductTitle" : "Bracelet",
      "Description" : "Styles women's Bracelet",
      "Price" : "6000",
      "DiscountPercentages" : "30"
    },
    {
      "images" : "images/Item_Photo/Hand_Bag1.jpg",
      "ProductTitle" : "Hand bag",
      "Description" : "Green hand bag",
      "Price" : "6500",
      "DiscountPercentages" : "50"
    },
    {
      "images" : "images/Item_Photo/Football.jpg",
      "ProductTitle" : "Football",
      "Description" : "Sports leather footBall",
      "Price" : "4000",
      "DiscountPercentages" : "30"
    },
  ];

  @override
  Widget build(BuildContext context) {

    

    return GridView.count(
      //gridDelegate: gridDelegate,
      childAspectRatio: 0.68,
      physics: NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      shrinkWrap: true,
      children:  DataSet.map((value) =>
          Container(
            padding: EdgeInsets.only(left: 15, right: 15,top: 10),
            margin: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        "-${value['DiscountPercentages'] ?? 0 }%",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Icon(
                      Icons.favorite_border,
                      color: Colors.red,
                    ),
                  ],
                ),

                InkWell(
                  onTap: (){
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => ItemPage(itemData: value),
                      ),
                    );
                  },


                  child: Column(
                    children: [
                      //Image
                      Container(
                        margin: EdgeInsets.all(10),
                        child: Image.asset(
                          value["images"] ?? 'images/Item_Photo/NoImageAvailable.jpg',
                          //"images/wepik-export-20231108100018DNB7.png",
                          height: 120,
                          width: 120,
                        ),
                      ),

                      //Title
                      Container(
                        //padding: EdgeInsets.only(bottom: 8),
                        alignment: Alignment.centerLeft,
                        child: Text(
                          value["ProductTitle"] ?? "Product Title",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.blue,
                          ),
                        ),
                      ),

                      //Description
                      Container(
                        //padding: EdgeInsets.only(bottom: 8),
                        alignment: Alignment.centerLeft,
                        child: Text(
                          value["Description"] ?? "Description" ,
                          style: TextStyle(
                            //fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.blue,
                          ),
                        ),
                      ),

                      //price
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 6),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "৳${value["Price"] ?? "0"}",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                  color: Colors.blue,
                                ),
                              ),
                            ),
                            Icon(
                              Icons.shopping_cart_checkout,
                              color: Colors.blue,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

              ],
            ),
          ),
      ).toList(),
    );
  }
}
