class ItemData{
  String pic;
  String name;
  int price;
  int oz;
  String origin;
  int inventory;
  String id;
  int inCartNum;

  ItemData({this.pic, this.name, this.price, this.oz, this.origin, this.inventory, this.id, this.inCartNum});

  factory ItemData.fromJson(Map<String, dynamic> json){
    return ItemData(
      pic: json['pic'] as String,
      name: json['name'] as String,
      price: json['price'] as int,
      oz: json['oz'] as int,
      origin: json['origin'] as String,
      inventory: json['inventory'] as int,
      id: json['id'] as String,
      inCartNum: 0,
    );
  }
}

class DiscountData{
  String discountName;
  int discountPrice;

  DiscountData(this.discountName, this.discountPrice);
}

List<DiscountData> discountDatas = [
  DiscountData('生日優惠', 120),
  DiscountData('週年慶優惠', 200),
];