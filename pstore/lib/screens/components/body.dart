import 'package:flutter/material.dart';
import 'package:pstore/constants.dart';
import 'package:pstore/models/Product.dart';
import 'categories.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
          child: Text(
            "Produtos",
            style: Theme.of(context)
                .textTheme
                .headline5
                .copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        Categories(),
        Column(children: <Widget>[
          Container(
            padding: EdgeInsets.all(kDefaultPaddin),
            height: 180,
            width: 160,
            decoration: BoxDecoration(
              color: products[0].color,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Image.asset(products[0].image),
          ),
          Text(products[0].title)
        ])
      ],
    );
  }
}
