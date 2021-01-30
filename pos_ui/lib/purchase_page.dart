import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';
import 'data.dart';

List<ItemData> parseItemData(String responseBody){
  final parsed =  jsonDecode(responseBody).cast<Map<String, dynamic>>();

  return parsed.map<ItemData>((json) => ItemData.fromJson(json)).toList();
}

Future<List<ItemData>> getItemData(http.Client client) async{
  final response = await client.get('https://script.google.com/macros/s/AKfycbwxguFPRzpT9P18nLcFQD5tO41J5l9svQ8RhWnGDL2__1-jn1VjgUorMA/exec');

  if(response.statusCode == 200){
    return compute(parseItemData, response.body);
  }
  else{
    throw Exception('Failed to load item data');
  }
}

class PurchasePage extends StatefulWidget {
  PurchasePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  PurchasePageState createState() => PurchasePageState();
}

class PurchasePageState extends State<PurchasePage> {

  Color themeColor = Color(0xff11EEB7);

  List<ItemData> inCartDatas = [];
  int total = 0;
  Future<List<ItemData>> itemDatas;

  @override
  void initState(){
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    double leftWidth = MediaQuery.of(context).size.width*3/5;
    double rightWidth = MediaQuery.of(context).size.width*2/5;

    return FutureBuilder<List<ItemData>>(
      future: getItemData(http.Client()),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              itemScreen(leftWidth, width, snapshot.data),
              checkoutScreen(rightWidth, width, height),
            ],
          );
        } else if (snapshot.hasError) {
          return Text("${snapshot.error}");
        }

        // By default, show a loading spinner.
        return Center(
          child: SizedBox(
            height: 30.0,
            width: 30.0,
            child: CircularProgressIndicator(),
          ),
        );
      },
    );
  }

  Widget itemScreen(double leftWidth, double width, List<ItemData> itemDatas){
    return SizedBox(
        width: leftWidth,
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(color: Color(0xffE0E0E0)),
          ),
          child: Scaffold(
            appBar: AppBar(
              elevation: 0.4,
              backgroundColor: Colors.white,
              brightness: Brightness.light,
              leading: IconButton(
                icon: Icon(Icons.menu, size: width / 759.27 * 30, color: themeColor,),
                onPressed: (){

                },
              ),
              centerTitle: true,
              title: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("所有商品", style: TextStyle(fontSize: width / 759.27 * 20, color: Colors.black),),
                  SizedBox(width: 10,),
                  Icon(Icons.keyboard_arrow_down, size: width / 759.27 * 30, color: themeColor,),
                ],
              ),
              actions: [
                IconButton(
                  icon: Icon(Icons.add, size: width / 759.27 * 30, color: themeColor,),
                  onPressed: (){

                  },
                ),
                IconButton(
                  icon: Icon(Icons.refresh, size: width / 759.27 * 30, color: themeColor,),
                  onPressed: (){
                    setState(() {

                    });
                  },
                ),
              ],
            ),
            body: SingleChildScrollView(
              child: showItemList(itemDatas),
            ),
          ),
        )
    );
  }

  Widget checkoutScreen(double rightWidth, double width, double height){
    return SizedBox(
      width: rightWidth,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Color(0xffE0E0E0)),
        ),
        child: Scaffold(
          appBar: AppBar(
            elevation: 0.4,
            backgroundColor: Colors.white,
            brightness: Brightness.light,

            leading: IconButton(
              icon: Icon(Icons.delete_forever, size: width / 759.27 * 30, color: themeColor,),
              onPressed: (){

              },
            ),
            centerTitle: true,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("購物車1(5件)", style: TextStyle(fontSize: width / 759.27 * 20, color: Colors.black),),
                SizedBox(width: 10,),
                Icon(Icons.keyboard_arrow_down, size: width / 759.27 * 30, color: themeColor,),
              ],
            ),
            actions: [
              IconButton(
                icon: Icon(Icons.add, size: width / 759.27 * 30, color: themeColor,),
                onPressed: (){

                },
              ),
            ],
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: height / 20),
                Container(
                  height: height / 5,
                  width: rightWidth,
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: height / 50,),
                      Row(
                        children: [
                          SizedBox(width: rightWidth / 40,),
                          CircleAvatar(
                            radius: 23,
                            backgroundColor: Color(0xff11EEB7),
                            child: CircleAvatar(
                              radius: 21,
                              backgroundImage: AssetImage('assets/pic7.jpg'),
                            ),
                          ),
                          SizedBox(width: rightWidth / 33,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text('Hoshi', style: TextStyle(fontSize: width / 759.27 * 14, color: Color(0xff8E8E8E)),),
                                  SizedBox(width: rightWidth / 33,),
                                  Text('0987654321', style: TextStyle(fontSize: width / 759.27 * 14, color: Color(0xff8E8E8E)),),
                                ],
                              ),
                              Text('累積消費: 12000', style: TextStyle(fontSize: width / 759.27 * 14, color: Color(0xff8E8E8E)),),
                            ],
                          ),
                          SizedBox(width: rightWidth / 5,),
                          IconButton(
                            icon: Icon(Icons.do_not_disturb_on),
                            color: Colors.red,
                            onPressed: (){

                            },
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          SizedBox(width: width / 40,),
                          Text('VIP', style: TextStyle(fontSize: width / 759.27 * 14, color: Color(0xff8E8E8E)),),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(height: height / 20),
                for(var i in inCartDatas) showInCartDatas(i),
                SizedBox(height: height / 20),
                showCalculate('小結', ' ', inCartDatas, 0),
                for(var i in discountDatas) showCalculate(i.discountName, '-\$ ${i.discountPrice}', inCartDatas, i.discountPrice),
                Container(
                  height: MediaQuery.of(context).size.height/9.5,
                  width: MediaQuery.of(context).size.width*2/5,
                  alignment: Alignment.center,
                  padding: EdgeInsets.only(left: width / 759.27 * 20.0, right: width / 759.27 * 20.0, top: 0.0, bottom: 0.0),
                  decoration: BoxDecoration(
                    border: Border(
                      top: BorderSide(
                        color: Colors.black,
                        width: 0.1,
                      ),
                      bottom: BorderSide(
                        color: Colors.black,
                        width: 0.1,
                      ),
                    ),
                    color: Colors.white,
                  ),
                  //color: Colors.white,
                  child: ListTile(
                    contentPadding: EdgeInsets.only(left: 0.0, right: 0.0, top: 0.0, bottom: 0.0),
                    visualDensity: VisualDensity.comfortable,
                    dense: true,
                    leading: Text('新增整單折扣', style: TextStyle(fontSize: width / 759.27 * 14, color: Color(0xff8E8E8E)),),
                    trailing: Icon(Icons.add_circle_outline, color: Color(0xff11EEB7),),
                    onTap: (){

                    },
                  ),
                ),
                SizedBox(height: height / 20),
                RaisedButton(
                  padding: EdgeInsets.only(left: width / 759.27 * 80, right: width / 759.27 * 80, top: width / 759.27 * 8, bottom: width / 759.27 * 8),
                  color: Color(0xff11EEB7),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: total >= 0 ? Text('\$ ${total}', style: TextStyle(fontSize: width / 759.27 * 22, color: Colors.white),) : Text('\$ 0', style: TextStyle(fontSize: width / 759.27 * 22, color: Colors.white),),
                  onPressed: (){

                  },
                ),
                SizedBox(height: height / 20),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget showItemList(List<ItemData> itemDatas){
    if(itemDatas.length % 4 == 0){
      return Column(
        children: [
          for(int i = 0 ; i < itemDatas.length / 4; i++)
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                for(int j = i*4 ; j < (i+1)*4 ; j++) showItem(itemDatas[j].id, itemDatas[j].name, j, itemDatas),
              ],
            ),
        ],
      );
    }
    else{
      return Column(
        children: [
          for(int i = 0 ; i < itemDatas.length / 4 + 1; i++)
            i == itemDatas.length / 4 ?
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                for(int j = i*4 ; j < (i+1)*4 ; j++) showItem(itemDatas[j].id, itemDatas[j].name, j, itemDatas),
              ],
            ):
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                for(int j = i*4 ; j < itemDatas.length ; j++) showItem(itemDatas[j].id, itemDatas[j].name, j, itemDatas),
              ],
            ),
        ],
      );
    }
  }

  Widget showItem(String id, String name, int num, List<ItemData> itemDatas){
    return Column(
      children: [
        FlatButton(
          padding: EdgeInsets.all(0.0),
          onPressed: (){
            setState(() {
              itemDatas[num].inCartNum += 1;
              if(itemDatas[num].inCartNum == 1){
                inCartDatas.add(itemDatas[num]);
              }
            });
          },
          child: Container(
            height: MediaQuery.of(context).size.height/4.0,
            width: MediaQuery.of(context).size.width*3/5/4.0 - 0.5,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: CachedNetworkImageProvider('https://drive.google.com/thumbnail?id=${id}'),
                  fit: BoxFit.fill,
                )
            ),
          ),
        ),
        Text(name),
      ],
    );
  }

  Widget showInCartDatas(ItemData inCartData){

    double width = MediaQuery.of(context).size.width;

    return Container(
      height: MediaQuery.of(context).size.height/7,
      width: MediaQuery.of(context).size.width*2/5,
      alignment: Alignment.center,
      padding: EdgeInsets.only(left: width / 759.27 * 20.0, right: width / 759.27 * 20.0, top: 0.0, bottom: 0.0),
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
            color: Colors.black,
            width: 0.1,
          ),
          bottom: BorderSide(
            color: Colors.black,
            width: 0.1,
          ),
        ),
        color: Colors.white,
      ),
      //color: Colors.white,
      child: ListTile(
        contentPadding: EdgeInsets.only(left: 0.0, right: 0.0, top: 0.0, bottom: 0.0),
        visualDensity: VisualDensity.comfortable,
        dense: true,
        leading: Container(
          height: MediaQuery.of(context).size.height/10,
          width: MediaQuery.of(context).size.height/10,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              image: DecorationImage(
                image: CachedNetworkImageProvider('https://drive.google.com/thumbnail?id=${inCartData.id}'),
                fit: BoxFit.fill,
              )
          ),
        ),
        title: Text(inCartData.name, style: TextStyle(fontSize: width / 759.27 * 14, fontWeight: FontWeight.bold),),
        subtitle: Text('目前庫存: ' + inCartData.inventory.toString(), style: TextStyle(fontSize: width / 759.27 * 10),),
        trailing: Text('(${inCartData.inCartNum}) \$' + (inCartData.price * inCartData.inCartNum).toString(), style: TextStyle(fontSize: width / 759.27 * 16, fontWeight: FontWeight.bold),),
      ),
    );
  }

  Widget showCalculate(String lead, String trail, List<ItemData> nowData, int discountPrice){

    double width = MediaQuery.of(context).size.width;

    if(lead == '小結'){
      int priceSum = 0;
      for(int i = 0 ; i < nowData.length ; i++){
        priceSum += nowData[i].price * nowData[i].inCartNum;
      }
      total = priceSum;
      return Container(
        height: MediaQuery.of(context).size.height/9.5,
        width: MediaQuery.of(context).size.width*2/5,
        alignment: Alignment.center,
        padding: EdgeInsets.only(left: width / 759.27 * 20.0, right: width / 759.27 * 20.0, top: 0.0, bottom: 0.0),
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(
              color: Colors.black,
              width: 0.1,
            ),
            bottom: BorderSide(
              color: Colors.black,
              width: 0.1,
            ),
          ),
          color: Colors.white,
        ),
        //color: Colors.white,
        child: ListTile(
          contentPadding: EdgeInsets.only(left: 0.0, right: 0.0, top: 0.0, bottom: 0.0),
          visualDensity: VisualDensity.comfortable,
          dense: true,
          leading: Text(lead, style: TextStyle(fontSize: width / 759.27 * 14),),
          trailing: Text('\$ ${priceSum}', style: TextStyle(fontSize: width / 759.27 * 16, fontWeight: FontWeight.bold),),
        ),
      );
    }
    total -= discountPrice;
    return Container(
      height: MediaQuery.of(context).size.height/9.5,
      width: MediaQuery.of(context).size.width*2/5,
      alignment: Alignment.center,
      padding: EdgeInsets.only(left: width / 759.27 * 20.0, right: width / 759.27 * 20.0, top: 0.0, bottom: 0.0),
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
            color: Colors.black,
            width: 0.1,
          ),
          bottom: BorderSide(
            color: Colors.black,
            width: 0.1,
          ),
        ),
        color: Colors.white,
      ),
      //color: Colors.white,
      child: ListTile(
        contentPadding: EdgeInsets.only(left: 0.0, right: 0.0, top: 0.0, bottom: 0.0),
        visualDensity: VisualDensity.comfortable,
        dense: true,
        leading: Text(lead, style: TextStyle(fontSize: width / 759.27 * 14),),
        trailing: Text(trail, style: TextStyle(fontSize: width / 759.27 * 16, fontWeight: FontWeight.bold),),
      ),
    );
  }
}