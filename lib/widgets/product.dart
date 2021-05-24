import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Product extends StatelessWidget {
  final imageUrl;
  final title;
  final price;

  Product({this.imageUrl, this.title, this.price});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Card(
          elevation: 3,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 15),
                child: Image.network(
                  imageUrl,
                  fit: BoxFit.fill,
                  width: 100,
                  height: 100,
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 240,
                    child: Text(
                      title,
                      overflow: TextOverflow.clip,
                    ),
                  ),
                  Text(
                    price.toString() + '\$',
                    style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              )
            ],
          )),
    );
  }
}
