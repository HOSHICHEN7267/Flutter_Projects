import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import "package:pointycastle/export.dart";
import 'package:intl/intl.dart';
import 'dart:convert';
import 'dart:typed_data';
import 'Uhome.dart';
import 'Thome.dart';
import 'profile.dart';


class SThsr extends StatefulWidget{

  String Sdate;
  String DStation;
  String AStation;

  SThsr({this.Sdate, this.DStation, this.AStation,});

  @override
  _SThsrState createState() => _SThsrState(Sdate, DStation, AStation);
}

Uint8List hmacSha1(Uint8List hmacKey, Uint8List data) {
  final hmac = HMac(SHA1Digest(), 64) // for HMAC SHA-256, block length must be 64
    ..init(KeyParameter(hmacKey));

  return hmac.process(data);
}

class _SThsrState extends State<SThsr>{

  String Sdate;
  String DStation;
  String AStation;

  Map<String, String> Numdata = {
    "南港": "0990",
    "臺北": "1000",
    "板橋": "1010",
    "桃園": "1020",
    "新竹": "1030",
    "苗栗": "1035",
    "臺中": "1040",
    "彰化": "1043",
    "雲林": "1047",
    "嘉義": "1050",
    "臺南": "1060",
    "左營": "1070",
  };

  List<String> CText = [];
  List<String> TrainText = [];
  List<String> DEPTime1Text = [];
  List<String> DEPTime2Text = [];

  _SThsrState(this.Sdate, this.DStation, this.AStation);

  @override
  void initState() {
    super.initState();
  }

  getTableData(String Authorization, String xdate){
    String DStationNum = Numdata[DStation];
    String AStationNum = Numdata[AStation];

    final String hostTable = 'https://ptx.transportdata.tw/MOTC/v2/Rail/THSR/DailyTimetable/OD/$DStationNum/to/$AStationNum/$Sdate?\$orderby=OriginStopTime%2FDepartureTime&\$format=JSON';
    print(hostTable);
    return http.get(
      hostTable,
      headers: {"Authorization": Authorization, "x-date": xdate},
    );
  }

  int _currentIndex = 1;

  final _Pages = <Widget>[
    UniversityPage(),
    TransportationPage(),
    SplashProfilePage(),
  ];

  String AppID = 'ae93a4ceff3141ebb8a11132679abf7c';
  String AppKey = 'Shc_DN-yvDMcLPlohQNdx9JeWkE';
  static DateTime now = DateTime.now().toUtc();
  static String xdate = DateFormat('E, dd MMM y HH:mm:ss').format(now) + ' GMT';
  String SignDate = 'x-date: ' + xdate;


  @override
  Widget build(BuildContext context) {

    final key = utf8.encode(AppKey);
    final hmac = hmacSha1(key, utf8.encode(SignDate));
    final base64HmacString = base64Encode(hmac);

    final Authorization = "hmac username=\"" + AppID + "\", algorithm=\"hmac-sha1\", headers=\"x-date\", signature=\"" + base64HmacString + "\"";

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(191, 62, 255, 1),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text(DStation),
            SizedBox(width: 10,),
            Icon(Icons.fast_forward),
            SizedBox(width: 10,),
            Text(AStation),
          ],
        )
      ),
      body: FutureBuilder(
          future: getTableData(Authorization, xdate),
          builder: (context, snap){
            if(!snap.hasData){
              return Container();
            }
            List<dynamic> datas = [];
            datas = jsonDecode(snap.data.body);
            if(datas.length == 0){
              return Container(
                child: Center(
                  child: Text('Oops!\n查無資料', style: TextStyle(fontSize: 30),),
                ),
              );
            }
            return ListView.builder(
              itemCount: datas.length,
              itemBuilder: (context, index){
                return Card(
                  child: ListTile(
                      title: Container(
                        child: Row(
                          children: <Widget>[
                            Text('車號: ' + datas[index]['DailyTrainInfo']["TrainNo"], style: TextStyle(fontSize: 20),),
                            SizedBox(width: 10,),
                            Text(datas[index]['OriginStopTime']["DepartureTime"], style: TextStyle(fontSize: 20),),
                            SizedBox(width: 10,),
                            Icon(Icons.fast_forward),
                            SizedBox(width: 10,),
                            Text(datas[index]['DestinationStopTime']["DepartureTime"], style: TextStyle(fontSize: 20),),
                          ],
                        ),
                      )
                  ),
                );
              },
            );
          }),
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex: _currentIndex, // this will be set when a new tab is tapped
        items: [
          new BottomNavigationBarItem(
            icon: new Icon(Icons.school),
            title: new Text('大學'),
          ),
          new BottomNavigationBarItem(
            icon: new Icon(Icons.directions_subway),
            title: new Text('交通'),
          ),
          new BottomNavigationBarItem(
            icon: new Icon(Icons.person),
            title: new Text('個人'),
          )
        ],
      ),
    );
  }
  void onTabTapped(int index){
    setState(() {
      _currentIndex = index;
      Navigator.push(
        context,
        PageRouteBuilder(
          pageBuilder: (context, animation1, animation2) => _Pages[index],
          transitionDuration: Duration(seconds: 0),
        ),
      );
    });
  }
}




























