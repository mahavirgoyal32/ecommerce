import 'package:flutter/material.dart';
import 'package:flutter_ui/constants/global_variables.dart';
import 'package:flutter_ui/features/account/widgets/single_product.dart';

class Orders extends StatefulWidget {
  const Orders({Key? key}) : super(key: key);

  @override
  State<Orders> createState() => _OrdersState();
}

class _OrdersState extends State<Orders> {
  // temporary List
  List list = [
    'https://www.google.com/search?q=washing+machine+png&tbm=isch&ved=2ahUKEwimz4iL2J35AhWR_DgGHSlcC8sQ2-cCegQIABAA&oq=wash&gs_lcp=CgNpbWcQARgAMgoIABCxAxCDARBDMgcIABCxAxBDMgcIABCxAxBDMgQIABBDMgQIABBDMgQIABBDMgQIABBDMgQIABBDMgQIABBDMgQIABBDOgUIABCABDoGCAAQHhAHOgQIIxAnOgYIABAeEAU6BggAEB4QCDoHCCMQ6gIQJ1C2Ali1FmCEHmgBcAB4BIAB2QGIAc4OkgEFMC44LjKYAQCgAQGqAQtnd3Mtd2l6LWltZ7ABCsABAQ&sclient=img&ei=XJvjYqaxJpH54-EPqbit2Aw&bih=714&biw=1536&rlz=1C1CHBF_enIN975IN975#imgrc=wKORhmhNoCiYQM',
    'https://www.google.com/search?q=washing+machine+png&tbm=isch&ved=2ahUKEwimz4iL2J35AhWR_DgGHSlcC8sQ2-cCegQIABAA&oq=wash&gs_lcp=CgNpbWcQARgAMgoIABCxAxCDARBDMgcIABCxAxBDMgcIABCxAxBDMgQIABBDMgQIABBDMgQIABBDMgQIABBDMgQIABBDMgQIABBDMgQIABBDOgUIABCABDoGCAAQHhAHOgQIIxAnOgYIABAeEAU6BggAEB4QCDoHCCMQ6gIQJ1C2Ali1FmCEHmgBcAB4BIAB2QGIAc4OkgEFMC44LjKYAQCgAQGqAQtnd3Mtd2l6LWltZ7ABCsABAQ&sclient=img&ei=XJvjYqaxJpH54-EPqbit2Aw&bih=714&biw=1536&rlz=1C1CHBF_enIN975IN975#imgrc=wKORhmhNoCiYQM',
    'https://www.google.com/search?q=washing+machine+png&tbm=isch&ved=2ahUKEwimz4iL2J35AhWR_DgGHSlcC8sQ2-cCegQIABAA&oq=wash&gs_lcp=CgNpbWcQARgAMgoIABCxAxCDARBDMgcIABCxAxBDMgcIABCxAxBDMgQIABBDMgQIABBDMgQIABBDMgQIABBDMgQIABBDMgQIABBDMgQIABBDOgUIABCABDoGCAAQHhAHOgQIIxAnOgYIABAeEAU6BggAEB4QCDoHCCMQ6gIQJ1C2Ali1FmCEHmgBcAB4BIAB2QGIAc4OkgEFMC44LjKYAQCgAQGqAQtnd3Mtd2l6LWltZ7ABCsABAQ&sclient=img&ei=XJvjYqaxJpH54-EPqbit2Aw&bih=714&biw=1536&rlz=1C1CHBF_enIN975IN975#imgrc=wKORhmhNoCiYQM',
    'https://www.google.com/search?q=washing+machine+png&tbm=isch&ved=2ahUKEwimz4iL2J35AhWR_DgGHSlcC8sQ2-cCegQIABAA&oq=wash&gs_lcp=CgNpbWcQARgAMgoIABCxAxCDARBDMgcIABCxAxBDMgcIABCxAxBDMgQIABBDMgQIABBDMgQIABBDMgQIABBDMgQIABBDMgQIABBDMgQIABBDOgUIABCABDoGCAAQHhAHOgQIIxAnOgYIABAeEAU6BggAEB4QCDoHCCMQ6gIQJ1C2Ali1FmCEHmgBcAB4BIAB2QGIAc4OkgEFMC44LjKYAQCgAQGqAQtnd3Mtd2l6LWltZ7ABCsABAQ&sclient=img&ei=XJvjYqaxJpH54-EPqbit2Aw&bih=714&biw=1536&rlz=1C1CHBF_enIN975IN975#imgrc=wKORhmhNoCiYQM'
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: const EdgeInsets.only(left: 15),
              child: const Text(
                'Your Orders',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(right: 15),
              child: const Text('See all',
                  style: TextStyle(color: GlobalVariables.selectedNavBarColor)),
            ),
          ],
        ),
        Container(
          height: 170,
          padding: const EdgeInsets.only(left: 10, right: 0, top: 20),
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: list.length,
              itemBuilder: ((context, index) {
                return SingleProduct(
                  image: list[index],
                );
              })),
        )
      ],
    );
  }
}
