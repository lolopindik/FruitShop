import 'package:flutter/material.dart';
import 'package:fruit_shop/preferences/app_theme.dart';
import 'package:fruit_shop/types/product.dart';

class ProductDoubleCard extends StatelessWidget {
  final Product product;
  const ProductDoubleCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppTheme.elemntsBackground,
          borderRadius: BorderRadius.circular(20)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 16, left: 16),
            child: Icon(Icons.favorite_border),
          ),
          Center(
            child: SizedBox(
              width: 100,
              height: 100,
              child: Image.network(
                product.pathPhoto,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: Text(
              product.name,
              style: TextStyles.itemCard,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 10, left: 16),
            child: Text(
              product.type,
              style: TextStyles.itemhintSub,
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 16, bottom: 22.98),
                child: Text(
                  '\$${product.price.toStringAsFixed(2)}',
                  style: TextStyles.itemSub,
                ),
              ),
              const Spacer(),
              InkWell(
                onTap: () {},
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.11,
                  height: MediaQuery.of(context).size.width * 0.11,
                  decoration: const BoxDecoration(
                    color: AppTheme.mainColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20), // Верхний правый угол
                      bottomRight: Radius.circular(20), // Нижний левый угол
                    ),
                  ),
                  child: const Center(
                    child: Text(
                      '+',
                      style: TextStyle(
                        color: AppTheme.elemntsBackground,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

class ProductSoloCard extends StatelessWidget {
  final Product product;

  const ProductSoloCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppTheme.elemntsBackground,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Stack(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: SizedBox(
                  width: 100,
                  height: 100,
                  child: Image.network(
                    product.pathPhoto,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 20, left: 10),
                    child: Text(
                      product.name,
                      style: TextStyles.itemCard,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10, left: 10),
                    child: Text(
                      product.type,
                      style: TextStyles.itemhintSub,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      '\$${product.price.toStringAsFixed(2)}',
                      style: TextStyles.itemSub,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: InkWell(
              onTap: () {},
              child: Container(
                width: MediaQuery.of(context).size.height * 0.07,
                height: MediaQuery.of(context).size.width * 0.11,
                decoration: const BoxDecoration(
                  color: AppTheme.mainColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                ),
                child: const Center(
                  child: Text(
                    '+',
                    style: TextStyle(
                      color: AppTheme.elemntsBackground,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}