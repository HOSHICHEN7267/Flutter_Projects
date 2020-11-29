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


class STtrain extends StatefulWidget{

  String Sdate;
  String DStation;
  String AStation;

  STtrain({this.Sdate, this.DStation, this.AStation,});

  @override
  _STtrainState createState() => _STtrainState(Sdate, DStation, AStation);
}

Uint8List hmacSha1(Uint8List hmacKey, Uint8List data) {
  final hmac = HMac(SHA1Digest(), 64) // for HMAC SHA-256, block length must be 64
    ..init(KeyParameter(hmacKey));

  return hmac.process(data);
}

class _STtrainState extends State<STtrain>{

  String Sdate;
  String DStation;
  String AStation;

  List Numdata = [];

  List<String> CText = [];
  List<String> TrainText = [];
  List<String> DEPTime1Text = [];
  List<String> DEPTime2Text = [];

  _STtrainState(this.Sdate, this.DStation, this.AStation);

  @override
  void initState() {
    super.initState();
  }

  Future getTableData(String Authorization, String xdate) async{
    String DStationNum = '';
    String AStationNum = '';

    final String hostNum = 'http://ods.railway.gov.tw/tra-ods-web/ods/download/dataResource/0518b833e8964d53bfea3f7691aea0ee';
    final response = await http.get(hostNum);
    final GetNumdata = jsonDecode(utf8.decode(response.bodyBytes));

    for(int i = 0 ; i < GetNumdata.length ; i++){
      if(GetNumdata[i]['stationName'] == DStation){
        DStationNum = GetNumdata[i]['stationCode'];
        break;
      }
    }
    for(int i = 0 ; i < GetNumdata.length ; i++){
      if(GetNumdata[i]['stationName'] == AStation){
        AStationNum = GetNumdata[i]['stationCode'];
        break;
      }
    }

    final String hostTable = 'https://ptx.transportdata.tw/MOTC/v2/Rail/TRA/DailyTimetable/OD/$DStationNum/to/$AStationNum/$Sdate?\$orderby=OriginStopTime%2FDepartureTime&\$format=JSON';
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
              Text(DStation, style: TextStyle(fontSize: 20.0),),
              SizedBox(width: 10,),
              Icon(Icons.fast_forward),
              SizedBox(width: 10,),
              Text(AStation, style: TextStyle(fontSize: 20.0),),
            ],
          )
      ),
      body: FutureBuilder(
          future: getTableData(Authorization, xdate),
          builder: (context, snap){
            if(!snap.hasData){
              return Container();
            }else{
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
                  if(datas[index]['DailyTrainInfo']["TrainTypeName"]["Zh_tw"] == '自強(推拉式自強號且無自行車車廂)'){
                    datas[index]['DailyTrainInfo']["TrainTypeName"]["Zh_tw"] = '自強(無自行車車廂)';
                  }else if(datas[index]['DailyTrainInfo']["TrainTypeName"]["Zh_tw"] == '自強(推拉式自強號且有自行車車廂)'){
                    datas[index]['DailyTrainInfo']["TrainTypeName"]["Zh_tw"] = '自強(有自行車車廂)';
                  }else if(datas[index]['DailyTrainInfo']["TrainTypeName"]["Zh_tw"] == '自強(DMU2800 型柴聯)'){
                    datas[index]['DailyTrainInfo']["TrainTypeName"]["Zh_tw"] = '自強';
                  }
                  return Card(
                    child: ListTile(
                      title: Container(
                        child: Row(
                          children: <Widget>[
                            Text(datas[index]['DailyTrainInfo']["TrainTypeName"]["Zh_tw"], style: TextStyle(fontSize: 20.0)),
                            SizedBox(width: 10,),
                            Text(datas[index]['OriginStopTime']["DepartureTime"], style: TextStyle(fontSize: 20),),
                            SizedBox(width: 10,),
                            Icon(Icons.fast_forward),
                            SizedBox(width: 10,),
                            Text(datas[index]['DestinationStopTime']["DepartureTime"], style: TextStyle(fontSize: 20),),
                          ],
                        ),
                      ),
                      subtitle: Text(
                        datas[index]['DailyTrainInfo']["TrainNo"],
                        style: TextStyle(fontSize: 17.5),
                      ),
                    )
                  );
                },
              );
            }
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




























