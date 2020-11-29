import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:intl/intl.dart';
import 'Uhome.dart';
import 'Thome.dart';
import 'profile.dart';
import 'SThsr.dart';

class Thsr extends StatefulWidget {
  @override
  ThsrState createState() => ThsrState();
}

class ThsrState extends State<Thsr> {
  int _currentIndex = 1;

  final _Pages = <Widget>[
    UniversityPage(),
    TransportationPage(),
    SplashProfilePage(),
  ];

  @override
  void initState() {
    super.initState();
  }

  String _date1 = "Not set";
  String DateTo = '';

  String _value1;
  String _value2;

  Map<String, String> valueToStation = {
    'one': "南港",
    'two': "臺北",
    'three': "板橋",
    'four': "桃園",
    'five': "新竹",
    'six': "苗栗",
    'seven': "臺中",
    'eight': "彰化",
    'nine': "雲林",
    'ten': "嘉義",
    'eleven': "臺南",
    'twelve': "左營",
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(191, 62, 255, 1),
        title: Text('高鐵'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex:
            _currentIndex, // this will be set when a new tab is tapped
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
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            //mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 75),
              Column(children: <Widget>[
                Text(
                  '出發日期',
                  style: TextStyle(fontSize: 30),
                ),
                SizedBox(height: 20),
                RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0)),
                  elevation: 4.0,
                  onPressed: () {
                    DatePicker.showDatePicker(context,
                        theme: DatePickerTheme(
                          containerHeight: 210.0,
                        ),
                        showTitleActions: true,
                        minTime: DateTime(DateTime.now().year,
                            DateTime.now().month, DateTime.now().day),
                        maxTime: DateTime(
                            DateTime.now().year,
                            DateTime.now().month + 1,
                            DateTime.now().day), onConfirm: (date) {
                      _date1 = '${date.year} - ${date.month} - ${date.day}';
                      setState(() {
                        DateTime now = DateTime.now();
                        DateTo = DateFormat('yyyy-MM-dd').format(now);
                      });
                    }, currentTime: DateTime.now(), locale: LocaleType.en);
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: 65.0,
                    width: 200.0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          child: Row(
                            children: <Widget>[
                              Icon(
                                Icons.date_range,
                                size: 18.0,
                                color: Color.fromRGBO(191, 62, 255, 1),
                              ),
                              Text(
                                " $_date1",
                                style: TextStyle(
                                    color: Color.fromRGBO(191, 62, 255, 1),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25.0),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  color: Colors.white,
                ),
              ]),
              SizedBox(
                height: 50.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Text(
                        '出發車站',
                        style: TextStyle(fontSize: 30),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      DropdownButton<String>(
                        items: [
                          DropdownMenuItem<String>(
                            child: Text(
                              '南港',
                              style: TextStyle(fontSize: 25),
                            ),
                            value: 'one',
                          ),
                          DropdownMenuItem<String>(
                            child: Text(
                              '臺北',
                              style: TextStyle(fontSize: 25),
                            ),
                            value: 'two',
                          ),
                          DropdownMenuItem<String>(
                            child: Text(
                              '板橋',
                              style: TextStyle(fontSize: 25),
                            ),
                            value: 'three',
                          ),
                          DropdownMenuItem<String>(
                            child: Text(
                              '桃園',
                              style: TextStyle(fontSize: 25),
                            ),
                            value: 'four',
                          ),
                          DropdownMenuItem<String>(
                            child: Text(
                              '新竹',
                              style: TextStyle(fontSize: 25),
                            ),
                            value: 'five',
                          ),
                          DropdownMenuItem<String>(
                            child: Text(
                              '苗栗',
                              style: TextStyle(fontSize: 25),
                            ),
                            value: 'six',
                          ),
                          DropdownMenuItem<String>(
                            child: Text(
                              '臺中',
                              style: TextStyle(fontSize: 25),
                            ),
                            value: 'seven',
                          ),
                          DropdownMenuItem<String>(
                            child: Text(
                              '彰化',
                              style: TextStyle(fontSize: 25),
                            ),
                            value: 'eight',
                          ),
                          DropdownMenuItem<String>(
                            child: Text(
                              '雲林',
                              style: TextStyle(fontSize: 25),
                            ),
                            value: 'nine',
                          ),
                          DropdownMenuItem<String>(
                            child: Text(
                              '嘉義',
                              style: TextStyle(fontSize: 25),
                            ),
                            value: 'ten',
                          ),
                          DropdownMenuItem<String>(
                            child: Text(
                              '臺南',
                              style: TextStyle(fontSize: 25),
                            ),
                            value: 'eleven',
                          ),
                          DropdownMenuItem<String>(
                            child: Text(
                              '左營',
                              style: TextStyle(fontSize: 25),
                            ),
                            value: 'twelve',
                          ),
                        ],
                        onChanged: (String value) {
                          setState(() {
                            _value1 = value;
                          });
                        },
                        hint: Text(
                          '選擇車站',
                          style: TextStyle(fontSize: 25),
                        ),
                        value: _value1,
                      )
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Text(
                        '抵達車站',
                        style: TextStyle(fontSize: 30),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      DropdownButton<String>(
                        items: [
                          DropdownMenuItem<String>(
                            child: Text(
                              '南港',
                              style: TextStyle(fontSize: 25),
                            ),
                            value: 'one',
                          ),
                          DropdownMenuItem<String>(
                            child: Text(
                              '臺北',
                              style: TextStyle(fontSize: 25),
                            ),
                            value: 'two',
                          ),
                          DropdownMenuItem<String>(
                            child: Text(
                              '板橋',
                              style: TextStyle(fontSize: 25),
                            ),
                            value: 'three',
                          ),
                          DropdownMenuItem<String>(
                            child: Text(
                              '桃園',
                              style: TextStyle(fontSize: 25),
                            ),
                            value: 'four',
                          ),
                          DropdownMenuItem<String>(
                            child: Text(
                              '新竹',
                              style: TextStyle(fontSize: 25),
                            ),
                            value: 'five',
                          ),
                          DropdownMenuItem<String>(
                            child: Text(
                              '苗栗',
                              style: TextStyle(fontSize: 25),
                            ),
                            value: 'six',
                          ),
                          DropdownMenuItem<String>(
                            child: Text(
                              '臺中',
                              style: TextStyle(fontSize: 25),
                            ),
                            value: 'seven',
                          ),
                          DropdownMenuItem<String>(
                            child: Text(
                              '彰化',
                              style: TextStyle(fontSize: 25),
                            ),
                            value: 'eight',
                          ),
                          DropdownMenuItem<String>(
                            child: Text(
                              '雲林',
                              style: TextStyle(fontSize: 25),
                            ),
                            value: 'nine',
                          ),
                          DropdownMenuItem<String>(
                            child: Text(
                              '嘉義',
                              style: TextStyle(fontSize: 25),
                            ),
                            value: 'ten',
                          ),
                          DropdownMenuItem<String>(
                            child: Text(
                              '臺南',
                              style: TextStyle(fontSize: 25),
                            ),
                            value: 'eleven',
                          ),
                          DropdownMenuItem<String>(
                            child: Text(
                              '左營',
                              style: TextStyle(fontSize: 25),
                            ),
                            value: 'twelve',
                          ),
                        ],
                        onChanged: (String value) {
                          setState(() {
                            _value2 = value;
                          });
                        },
                        hint: Text(
                          '選擇車站',
                          style: TextStyle(fontSize: 25),
                        ),
                        value: _value2,
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: EdgeInsets.only(left: 60, right: 60, top: 15),
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0)),
                  elevation: 4.0,
                  onPressed: () {
                    _sendData(context);
                  },
                  child: Container(
                      alignment: Alignment.center,
                      height: 55.0,
                      child: Container(
                        child: Text(
                          '確定',
                          style: TextStyle(fontSize: 30, color: Colors.white),
                        ),
                      )),
                  color: Color.fromRGBO(191, 62, 255, 1),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void onTabTapped(int index) {
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

  void _sendData(BuildContext context) {
    String Sdate = DateTo;
    String DStation = valueToStation[_value1];
    String AStation = valueToStation[_value2];

    Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => SThsr(
              Sdate: Sdate,
              DStation: DStation,
              AStation: AStation,
            )));
  }
}
