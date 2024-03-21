import 'package:flutter/material.dart';
import 'package:fruit_shop/preferences/app_theme.dart';

Widget buildContentBottomBar(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 10, left: 20, right: 20),
    child: Container(
      height: MediaQuery.of(context).size.height * 0.095,
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width * 0.2,
            height: MediaQuery.of(context).size.height * 0.2,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: AppTheme.mainColor, width: 2)),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.shopping_cart_outlined,
                size: 30,
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            child: Container(
                width: MediaQuery.of(context).size.width * 0.55,
                height: MediaQuery.of(context).size.height * 0.2,
                decoration: BoxDecoration(
                  color: AppTheme.mainColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(right: 10),
                      child: Text(
                        'Buy Now',
                        style: TextStyles.itemBasketSub,
                      ),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.arrow_forward_ios_sharp,
                          color: AppTheme.elemntsBackground,
                        ),
                        Icon(Icons.arrow_forward_ios_sharp,
                            color: Colors.white70),
                        Icon(Icons.arrow_forward_ios_sharp,
                            color: Colors.white30),
                      ],
                    ),
                  ],
                )),
          )
        ],
      ),
    ),
  );
}
