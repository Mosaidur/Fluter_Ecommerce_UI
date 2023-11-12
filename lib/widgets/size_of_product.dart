import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SizeOfProduct extends StatelessWidget {
  SizeOfProduct ({super.key});

  @override
  Widget build(BuildContext context) {

    var Size = [
      1,2,3,4,5,6,7
    ] ;
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      //physics: PageScrollPhysics,
      child: Row(
        children: Size.map((value) =>
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 30,
                //width: 30,
                alignment: Alignment.center,
                margin: EdgeInsets.symmetric(horizontal: 5),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 8,
                    )],
                ),
                child:Text(
                  value.toString(),
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.blue,
                  ),
                ),
              ),
            ),
        ).toList(),
      ),
    );
  }
}
