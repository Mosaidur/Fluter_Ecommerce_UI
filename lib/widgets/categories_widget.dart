import 'package:flutter/material.dart';

class CategoriesWidget extends StatelessWidget {
      CategoriesWidget ({super.key});


      var CategoryList =[
        {
          "name" : "Just For You",
          "image" : "images/user.png"
        },
        {
          "name" : "Women,s & Girls' Fashion",
          "image" : "images/clothes.png"
        },
        {
          "name" : "Health & Beauty",
          "image" : "images/make-up.png"
        },
        {
          "name" : "Electronics Devices & Accessories",
          "image" : "images/gadgets.png"
        },
        {
          "name" : "Men's & Boys' Fashion",
          "image" : "images/shirt.png"
        },
        {
          "name" : "Groceries",
          "image" : "images/grocery.png"
        },
        {
          "name" : "Sports & Outdoors",
          "image" : "images/sports.png"
        },
        {
        "name" : "Watches, Bags & Jewellery",
        "image" : "images/womens-bag.png"
        },
        {
          "name" : "Mother & Baby",
          "image" : "images/baby-boy.png"
        },
        {
          "name" : "Home & Lifestyle",
          "image" : "images/sofa.png"
        },
        {
          "name" : "TV & Home Appliance",
          "image" : "images/television.png"
        }
      ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row (
        children: CategoryList.map((value) =>
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              padding: EdgeInsets.symmetric(vertical: 5,horizontal: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    value["image"]!,
                    width: 40,
                    height: 40,
                  ),
                  Text(
                    value["name"]!,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
            ),
        ).toList(),
      ),
    );
  }
}
