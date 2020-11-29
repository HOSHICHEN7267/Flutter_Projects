import 'package:flutter/material.dart';
import 'Uhome.dart';
import 'Thome.dart';
import 'profile.dart';

class Umajor extends StatefulWidget {

  @override
  UmajorState createState() => UmajorState();
}

class UmajorState extends State<Umajor>{
  int _currentIndex = 0;

  final _Pages = <Widget>[
    UniversityPage(),
    TransportationPage(),
    SplashProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(47, 75, 110, 1),
        title: Text('學群查詢'),
      ),
      body: _ListView(context),
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
  Widget _ListView(BuildContext context){
    final _Majors = ['資訊', '工程', '數理化學', '醫藥衛生', '生命科學', '生物資源',
      '管理', '財經', '法政', '社會與心理', '外語', '文史哲',
      '建築與設計', '藝術', '教育', '大眾傳播', '遊憩與運動', '地球與環境'];

    return ListView.builder(
      itemCount: _Majors.length,
      itemBuilder: (context, index){
        return Card(
          child: ListTile(
            title: Text(_Majors[index]),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: (){},
          ),
        );
      },
    );
  }
}