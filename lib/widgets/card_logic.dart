import 'package:flutter/material.dart';
import 'package:fruit_shop/types/product.dart';
import 'package:fruit_shop/widgets/product_cards.dart';

Widget buildDoubleCardLogic(BuildContext context) {
  return Center(
    child: SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
      width: MediaQuery.of(context).size.width * 0.95,
      child: PageView.builder(
        itemCount: 2,
        itemBuilder: (context, index) {
          final startIndex = index * 2;
          final endIndex = startIndex + 1;
          return Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: ProductDoubleCard(product: productList[startIndex]),
                ),
              ),
              if (endIndex < productList.length)
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: ProductDoubleCard(product: productList[endIndex]),
                  ),
                ),
            ],
          );
        },
      ),
    ),
  );
}

Widget singleCardPageView(BuildContext context) {
  return Center(
    child: SizedBox(
      height: MediaQuery.of(context).size.height * 0.15,
      width: MediaQuery.of(context).size.width * 0.95,
      child: PageView.builder(
        itemCount: productList.length,
        itemBuilder: (context, index) {
          final product = productList[index];
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: ProductSoloCard(product: product),
          );
        },
      ),
    ),
  );
}
