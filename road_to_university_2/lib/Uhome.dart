import 'package:flutter/material.dart';
import 'Uschool.dart';
import 'Umajor.dart';
import 'Uarea.dart';
import 'Ufeature.dart';
import 'Thome.dart';
import 'profile.dart';

class UniversityPage extends StatefulWidget {

  @override
  UniversityPageState createState() => UniversityPageState();
}

class UniversityPageState extends State<UniversityPage> {

  int _currentIndex = 0;

  final _Pages = <Widget>[
    UniversityPage(),
    TransportationPage(),
    SplashProfilePage(),
  ];

  bool colorSwitched = false;
  var logoImage = 'images/SchoolTitle.jpg';
  List<IconData> _Icons = [
    Icons.school,
    Icons.location_on,
    /*Icons.directions_bus,
    Icons.directions_subway*/
  ];

  List<Color> selectionButtonsColor = [Colors.redAccent, Colors.blueAccent, Colors.indigo, Colors.greenAccent];
  List<String> selectionLabelText = ['校名\n查詢', '地區\n查詢'];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: SafeArea(
        child: Container( //background & upper box
          height: MediaQuery
              .of(context)
              .size
              .height,
          width: MediaQuery
              .of(context)
              .size
              .width,
          color: Colors.white,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Image.asset(
                logoImage,
                fit: BoxFit.contain,
                //height: 260.0,
                width: MediaQuery.of(context).size.width,
              ),
              Text(
                '全台大學入學攻略',
                style: TextStyle(
                    fontSize: 40,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              Container( //beneath box
                height: 300.0,
                width: MediaQuery
                    .of(context)
                    .size
                    .width,
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    selectionButtons(0),
                    selectionButtons(1),
                  ],
                ),
              ),
              SizedBox(height: 20.0,),
            ],
          ),
        ),
      ),
    );
  }

  FlatButton selectionButtons(int num){
    return FlatButton(
        onPressed: (){
          if(num == 0){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Uschool()),
            );
          }else if(num == 1){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Uarea()),
            );
          }
        },
        child: Container(
          width: 155.0,
          child: Stack(
            alignment: AlignmentDirectional.centerStart,
            overflow: Overflow.clip,
            children: <Widget>[
              Container(
                width: 155.0,
                padding: const EdgeInsets.all(12.0),
                decoration: BoxDecoration(
                  color: selectionButtonsColor[num],
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
              Row(
                children: <Widget>[
                  SizedBox(width: 20,),
                  Container(
                    width: 135.0,
                    child: Opacity(
                        opacity: 0.3,
                        child: Icon(
                          _Icons[num],
                          size: 250,
                          color: Colors.white,
                        )),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    _Icons[num],
                    color: Colors.white,
                    size: 60.0,
                  ),
                  const SizedBox(height: 6.0),
                  Text(
                    selectionLabelText[num],
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 35.0
                    ),
                  ),
                ],
              ),
            ],
          ),
        )
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