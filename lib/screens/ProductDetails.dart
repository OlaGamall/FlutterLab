import 'package:flutter/material.dart';

class ProductDetails extends StatelessWidget {
  static const routeName = "/productdetails";

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context).settings.arguments as Map;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 200,
                child: Padding(
                  padding: const EdgeInsets.only(top:10),
                  child: Image.network(
                    args['image'],
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  args['description'],
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                    height: 1.3,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
