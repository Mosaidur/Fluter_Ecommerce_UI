import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemNavBar extends StatelessWidget {
  ItemNavBar({Key? key, required this.price});

  String price;

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Container(
        height: 70,
        padding: EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(35),
          //shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 3,
              blurRadius: 10,
              //offset: Offset(0, 3),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "৳${price.toString()}",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
            ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(
                CupertinoIcons.cart_badge_plus,
                color: Colors.white,
                size: 18,
              ),
              label: Text(
                "Add to cart",
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                  color: Colors.white
                ),
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.blue),
                padding: MaterialStateProperty.all(
                  EdgeInsets.symmetric(vertical: 13, horizontal: 13),
                ),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)
                  ),
                ),
              ),
            ),
            ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(
                CupertinoIcons.bag_fill_badge_plus,
                color: Colors.white,
                size: 18,
              ),
              label: Text(
                "Buy Now",
                style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                ),
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.blue),
                padding: MaterialStateProperty.all(
                  EdgeInsets.symmetric(vertical: 13, horizontal: 13),
                ),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
