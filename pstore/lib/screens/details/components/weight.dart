import 'package:flutter/material.dart';
import 'package:pstore/models/Product.dart';

import '../../../constants.dart';

class Weight extends StatelessWidget {
  const Weight({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        // Column(
        //   children: <Widget>[
        //     Text("Color"),
        //     Container(
        //       margin: EdgeInsets.only(
        //         top: kDefaultPaddin / 4,
        //         right: kDefaultPaddin / 2,
        //       ),
        //       padding: EdgeInsets.all(2.5),
        //       height: 24,
        //       width: 24,
        //       decoration: BoxDecoration(
        //         shape: BoxShape.circle,
        //         border: Border.all(
        //           color: Color(0xFF356C95),
        //         ),
        //       ),
        //       child: DecoratedBox(
        //         decoration: BoxDecoration(
        //           color: Color(0xFF356C95),
        //           shape: BoxShape.circle,
        //         ),
        //       ),
        //     )
        //   ],
        // ),
        Expanded(
          child: RichText(
            text: TextSpan(
              style: TextStyle(color: kTextColor),
              children: [
                TextSpan(text: "Peso\n"),
                TextSpan(
                  text: "${product.weight}",
                  style: Theme.of(context)
                      .textTheme
                      .headline5
                      .copyWith(fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
