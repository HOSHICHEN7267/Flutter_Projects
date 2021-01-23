import 'package:flutter/material.dart';

class ProductData{
  String path;
  String name;
  int inventory;
  int price;
  int inCartNum;

  ProductData(this.path, this.name, this.inventory, this.price, this.inCartNum);
}

class DiscountData{
  String discountName;
  int discountPrice;

  DiscountData(this.discountName, this.discountPrice);
}

List<ProductData> productDatas = [
  ProductData('assets/pic1.jpg', 'pic1', 96, 100, 0),
  ProductData('assets/pic2.jpg', 'pic2', 87, 200, 0),
  ProductData('assets/pic3.jpg', 'pic3', 45, 150, 0),
  ProductData('assets/pic4.jpg', 'pic4', 23, 150, 0),
  ProductData('assets/pic5.jpg', 'pic5', 36, 120, 0),
  ProductData('assets/pic6.jpg', 'pic6', 146, 50, 0),
  ProductData('assets/pic7.jpg', 'pic7', 251, 120, 0),
  ProductData('assets/pic8.jpg', 'pic8', 12, 200, 0),
  ProductData('assets/pic9.jpg', 'pic9', 25, 350, 0),
  ProductData('assets/pic10.jpg', 'pic10', 79, 240, 0),
  ProductData('assets/pic11.jpg', 'pic11', 39, 170, 0),
  ProductData('assets/pic12.jpg', 'pic12', 58, 230, 0),
  ProductData('assets/pic13.jpg', 'pic13', 369, 70, 0),
  ProductData('assets/pic14.jpg', 'pic14', 244, 240, 0),
  ProductData('assets/pic15.jpg', 'pic15', 86, 15, 0),
  ProductData('assets/pic16.jpg', 'pic16', 253, 160, 0),
  ProductData('assets/pic17.jpg', 'pic17', 47, 100, 0),
  ProductData('assets/pic18.jpg', 'pic18', 93, 160, 0),
  ProductData('assets/pic19.jpg', 'pic19', 72, 45, 0),
  ProductData('assets/pic20.jpg', 'pic20', 250, 200, 0),
  ProductData('assets/pic21.jpg', 'pic21', 88, 150, 0),
  ProductData('assets/pic22.jpg', 'pic22', 78, 180, 0),
  ProductData('assets/pic23.jpg', 'pic23', 99, 230, 0),
  ProductData('assets/pic24.jpg', 'pic24', 49, 220, 0),
  //ProductData('assets/pic25.jpg', 'pic25', 77, 80, 0),
];

List<DiscountData> discountDatas = [
  DiscountData('生日優惠', 120),
  DiscountData('週年慶優惠', 200),
];