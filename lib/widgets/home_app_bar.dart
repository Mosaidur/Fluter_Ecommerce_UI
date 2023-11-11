import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
class HomeAppBar extends StatelessWidget {
  HomeAppBar({super.key, required this.shopName, required this.TotalAddToCart});


  String shopName = "My Shop";
  int TotalAddToCart = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(25),
      child: Row (
        children: [
          Icon(
            Icons.sort,
            size: 30,
            color: Colors.blue,
          ),
          Padding(
              padding: EdgeInsets.only(left: 20,),
          child: Text(
            shopName!,
            style: TextStyle (
              fontWeight: FontWeight.bold,
              fontSize: 23,
              color: Colors.blue,
            ),
          ),
          ),
          Spacer(),
          badges.Badge(
           badgeContent: Text(
             "$TotalAddToCart",
           ),
            child: InkWell(
              onTap: (){
                Navigator.pushNamed(context, "cartPage");
              },
              child: Icon(
                Icons.shopping_bag_outlined,
                size: 32,
                color: Colors.blue,
              ),
            ),
          )


        ],
      ),
    );
  }
}
