import 'Uhome.dart';
import 'Thome.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashProfilePage extends StatefulWidget {
  @override
  _SplashProfilePageState createState() => _SplashProfilePageState();
}

bool logined;
int GetUserNum;
String _StorageLogined = "Logined";
String _StorageUserNum = "UserNum";

class _SplashProfilePageState extends State<SplashProfilePage> {
  Future LoginedCheck() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    bool logined = prefs.getBool(_StorageLogined) ?? false;
    int GetUserNum = prefs.getInt(_StorageUserNum) ?? 0;

    return [logined,GetUserNum];
  }

  int _currentIndex = 2;

  final _Pages = <Widget>[
    UniversityPage(),
    TransportationPage(),
    SplashProfilePage(),
  ];

  List<Color> _backgroundColor;
  Color _iconColor;
  Color _textColor;
  List<Color> _actionContainerColor;
  Color _borderContainer;
  bool colorSwitched = false;
  var LogoIcon;
  List<String> Titles = ['就讀學校', '年級', '目標大學', '目標科系'];

  void changeTheme() async {
    if (colorSwitched) {
      // dark theme
      setState(() {
        LogoIcon = Icons.person;
        _backgroundColor = [
          Color.fromRGBO(0, 255, 207, 1),
          Color.fromRGBO(0, 245, 197, 1),
          Color.fromRGBO(0, 235, 187, 1),
          Color.fromRGBO(0, 225, 177, 1),
        ];
        _iconColor = Colors.white;
        _textColor = Color.fromRGBO(0, 255, 255, 1);
        _borderContainer = Color.fromRGBO(34, 58, 90, 0.2);
        _actionContainerColor = [
          Color.fromRGBO(0, 161, 225, 1),
          Color.fromRGBO(0, 151, 215, 1),
          Color.fromRGBO(0, 141, 205, 1),
          Color.fromRGBO(0, 131, 195, 1),
        ];
      });
    } else {
      // bright theme
      setState(() {
        LogoIcon = Icons.person;
        _borderContainer = Color.fromRGBO(252, 233, 187, 1);
        _backgroundColor = [
          Color.fromRGBO(249, 249, 249, 1),
          Color.fromRGBO(232, 232, 232, 1),
          Color.fromRGBO(216, 216, 216, 1),
          Color.fromRGBO(200, 200, 200, 1),
        ];
        _iconColor = Colors.black;
        _textColor = Colors.black;
        _actionContainerColor = [
          Color.fromRGBO(0, 235, 177, 1),
          Color.fromRGBO(0, 225, 167, 1),
          Color.fromRGBO(0, 215, 157, 1),
          Color.fromRGBO(0, 205, 147, 1),
        ];
      });
    }
  }

  bool logined;
  int GetUserNum;
  @override
  void initState() {
    changeTheme();
    super.initState();

    LoginedCheck().then((results){
      setState((){
        logined = results[0];
        GetUserNum = results[1];
      });

      if(logined == true){
        Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => ShowProfile(UserNum: GetUserNum))
        );
      } else{
        Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => ProfilePage())
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: GestureDetector(
          onLongPress: () {
            if (colorSwitched) {
              colorSwitched = false;
            } else {
              colorSwitched = true;
            }
            changeTheme();
          },
          child: Container(
            //background & upper box
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    stops: [0.2, 0.3, 0.5, 0.8],
                    colors: _backgroundColor)),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                SizedBox(
                  height: 20.0,
                ),
                Icon(
                  LogoIcon,
                  color: Colors.black,
                  size: 100.0,
                ),
                Text(
                  '個人檔案',
                  style: TextStyle(
                      fontSize: 35,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                Container(
                  //beneath box
                  height: 300.0,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: _borderContainer,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15))),
                  child: Container(
                    padding: const EdgeInsets.all(5.0),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15),
                              topRight: Radius.circular(15)),
                          gradient: LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              stops: [0.2, 0.4, 0.6, 0.8],
                              colors: _actionContainerColor)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(height: 70,),
                          Divider(
                            height: 0.5,
                            color: Colors.grey,
                          ),
                          Table(
                            border: TableBorder.symmetric(
                              inside: BorderSide(
                                  color: Colors.grey,
                                  style: BorderStyle.solid,
                                  width: 0.5),
                            ),
                            children: [
                              TableRow(children: [
                                _actionList0(0, ''),
                                _actionList1(1, ''),
                              ]),
                              TableRow(children: [
                                _actionList2(2, ''),
                                _actionList3(3, ''),
                              ])
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        // this will be set when a new tab is tapped
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

  Widget _actionList0(int num, String desc) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            Titles[0],
            style: TextStyle(fontSize: 15.0, color: _iconColor),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            desc,
            style: TextStyle(
                fontSize: 30.0, color: _iconColor, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }

  Widget _actionList1(int num, String desc) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            Titles[1],
            style: TextStyle(fontSize: 15.0, color: _iconColor),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            desc,
            style: TextStyle(
                fontSize: 30.0, color: _iconColor, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }

  Widget _actionList2(int num, String desc) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            Titles[2],
            style: TextStyle(fontSize: 15.0, color: _iconColor),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            desc,
            style: TextStyle(
                fontSize: 30.0, color: _iconColor, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }

  Widget _actionList3(int num, String desc) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            Titles[3],
            style: TextStyle(fontSize: 15.0, color: _iconColor),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            desc,
            style: TextStyle(
                fontSize: 30.0, color: _iconColor, fontWeight: FontWeight.bold),
          )
        ],
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
}

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  int _currentIndex = 2;

  final _Pages = <Widget>[
    UniversityPage(),
    TransportationPage(),
    SplashProfilePage(),
  ];

  var _LtextFieldAccount = new TextEditingController();
  var _LtextFieldID = new TextEditingController();
  final _StorageUsername = 'Username';
  final _StorageAccount = 'Account';
  final _StorageID = 'ID';
  final _StorageLogined = 'Logined';
  final _StorageUserNum = 'UserNum';
  String LoginedUsername = '';
  int UserNum = 0;

  Future Login() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    bool checked = false;

    String InsertAccount = _LtextFieldAccount.value.text.toString();
    String InsertID = _LtextFieldID.value.text.toString();

    List<String> GetAccountList =
        (prefs.getStringList(_StorageAccount) ?? List<String>());
    List<String> GetIDList =
        (prefs.getStringList(_StorageID) ?? List<String>());

    for (int i = 0; i < GetAccountList.length; i++) {
      if (GetAccountList[i] == InsertAccount && GetIDList[i] == InsertID) {
        List<String> GetUsernameList =
            (prefs.getStringList(_StorageUsername) ?? List<String>());
        checked = true;
        UserNum = i;
        LoginedUsername = GetUsernameList[i];
        break;
      }
    }

    if (checked == true) {
      prefs.setBool(_StorageLogined, true);
      prefs.setInt(_StorageUserNum, UserNum);
      Navigator.of(context).push(MaterialPageRoute(
          builder: (context) =>
              ShowProfile(UserNum: UserNum))); // Navigate to profile page
    } else {
      prefs.setBool(_StorageLogined, false);
      Alert(context); // stay at the same page
    }
  }

  Future LoginedCheck() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    bool logined = prefs.getBool(_StorageLogined) ?? false;
    int GetUserNum = prefs.getInt(_StorageUserNum) ?? 0;

    /*if(logined == true) {
      Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => ShowProfile(UserNum: GetUserNum,)));
    }*/

    return [logined, GetUserNum];
  }

  void Alert(BuildContext context) {
    AlertDialog dialog = AlertDialog(
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(15)),
      ),
      content: Container(
        padding: EdgeInsets.only(left: 5, top: 5, bottom: 5),
        child: Row(
          children: <Widget>[
            Icon(
              Icons.warning,
              color: Colors.black54,
              size: 30,
            ),
            Padding(padding: EdgeInsets.only(right: 10)),
            Text(
              "帳號或密碼輸入錯誤",
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
      actions: <Widget>[
        FlatButton(
          onPressed: () {
            Navigator.pop(context, true);
          },
          child: Text(
            "確定",
            style: TextStyle(color: Colors.blueAccent),
          ),
        ),
      ],
    );

    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (BuildContext context) => dialog,
    );
  }

  /*Future ClearAllData() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.clear();
  }*/

  bool logined;
  int GetUserNum;
  @override
  void initState() {
    super.initState();

    LoginedCheck().then((results) {
      setState(() {
        logined = results[0];
        GetUserNum = results[1];
      });

      if (logined == true)
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => ShowProfile(UserNum: GetUserNum)));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Stack(
        children: <Widget>[
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
                gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xFF73AEF5),
                Color(0xFF61A4F1),
                Color(0xFF478DE0),
                Color(0xFF398AE5),
              ],
              stops: [0.1, 0.4, 0.7, 0.9],
            )),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: 10,
                  ),
                  Icon(
                    Icons.account_circle,
                    size: 150.0,
                  ),
                  SizedBox(height: 30),
                  Container(
                    width: 300,
                    child: Theme(
                        data: ThemeData(
                          primaryColor: Colors.white,
                          primaryColorDark: Colors.yellowAccent,
                        ),
                        child: TextField(
                          controller: _LtextFieldAccount,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: '請輸入帳號',
                              prefixIcon: const Icon(Icons.person)),
                        )),
                  ),
                  SizedBox(height: 20),
                  Container(
                    width: 300,
                    child: Theme(
                        data: ThemeData(
                          primaryColor: Colors.white,
                          primaryColorDark: Colors.yellowAccent,
                        ),
                        child: TextField(
                          controller: _LtextFieldID,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: '請輸入密碼',
                              prefixIcon: const Icon(Icons.lock)),
                        )),
                  ),
                  SizedBox(height: 30),
                  RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25.0)),
                    elevation: 4.0,
                    color: Colors.white,
                    child: Container(
                      padding: EdgeInsets.only(
                          left: 10, right: 10, top: 10, bottom: 10),
                      child: Text(
                        '登入',
                        style:
                            TextStyle(fontSize: 25, color: Colors.blueAccent),
                      ),
                    ),
                    onPressed: Login,
                  ),
                  SizedBox(height: 20),
                  RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.0)),
                      elevation: 4.0,
                      color: Colors.white,
                      child: Container(
                        padding: EdgeInsets.only(
                            left: 10, right: 10, top: 10, bottom: 10),
                        child: Text(
                          '新用戶註冊',
                          style:
                              TextStyle(fontSize: 25, color: Colors.blueAccent),
                        ),
                      ),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => RegisterPage()));
                      })
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex: _currentIndex, //thiswillbesetwhenanewtabistapped
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
}

// RegisterPage-----------------------------------------------------------------------------------------------------------------------------------------------------------------

class RegisterPage extends StatefulWidget {
  RegisterPageState createState() => RegisterPageState();
}

class RegisterPageState extends State<RegisterPage> {
  List<String> Username;
  List<String> Account;
  List<String> ID;
  List<String> School;
  List<String> Grade;
  List<String> University;
  List<String> Major;

  int _currentIndex = 2;

  final _Pages = <Widget>[
    UniversityPage(),
    TransportationPage(),
    SplashProfilePage(),
  ];

  var _RtextFieldUsername = new TextEditingController();
  var _RtextFieldAccount = new TextEditingController();
  var _RtextFieldID = new TextEditingController();
  var _RtextFieldSchool = new TextEditingController();
  var _RtextFieldGrade = new TextEditingController();
  var _RtextFieldUniversity = new TextEditingController();
  var _RtextFieldMajor = new TextEditingController();

  final _StorageUsername = 'Username';
  final _StorageAccount = 'Account';
  final _StorageID = 'ID';
  final _StorageSchool = 'School';
  final _StorageGrade = 'Grade';
  final _StorageUniversity = 'University';
  final _StorageMajor = 'Major';

  // register & store data
  Future Register() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    Username = (prefs.getStringList(_StorageUsername) ?? List<String>());
    Account = (prefs.getStringList(_StorageAccount) ?? List<String>());
    ID = (prefs.getStringList(_StorageID) ?? List<String>());
    School = (prefs.getStringList(_StorageSchool) ?? List<String>());
    Grade = (prefs.getStringList(_StorageGrade) ?? List<String>());
    University = (prefs.getStringList(_StorageUniversity) ?? List<String>());
    Major = (prefs.getStringList(_StorageMajor) ?? List<String>());

    Username.add(_RtextFieldUsername.value.text.toString());
    Account.add(_RtextFieldAccount.value.text.toString());
    ID.add(_RtextFieldID.value.text.toString());
    School.add(_RtextFieldSchool.value.text.toString());
    Grade.add(_RtextFieldGrade.value.text.toString());
    University.add(_RtextFieldUniversity.value.text.toString());
    Major.add(_RtextFieldMajor.value.text.toString());

    await prefs.setStringList(_StorageUsername, Username);
    await prefs.setStringList(_StorageAccount, Account);
    await prefs.setStringList(_StorageID, ID);
    await prefs.setStringList(_StorageSchool, School);
    await prefs.setStringList(_StorageGrade, Grade);
    await prefs.setStringList(_StorageUniversity, University);
    await prefs.setStringList(_StorageMajor, Major);
  }

  void Alert(BuildContext context) {
    AlertDialog dialog = AlertDialog(
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(15)),
      ),
      content: Container(
        padding: EdgeInsets.only(left: 5, top: 5, bottom: 5),
        child: Row(
          children: <Widget>[
            Icon(
              Icons.check,
              color: Colors.black54,
              size: 30,
            ),
            Padding(padding: EdgeInsets.only(right: 10)),
            Text(
              "註冊成功! =D\n請重新登入",
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
      actions: <Widget>[
        FlatButton(
          onPressed: () {
            Navigator.pop(context, true);
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => ProfilePage()));
          },
          child: Text(
            "確定",
            style: TextStyle(color: Colors.blueAccent),
          ),
        ),
      ],
    );

    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (BuildContext context) => dialog,
    );
  }

  void RegisterAlert(BuildContext context, int num) {
    List<String> AlertText = ['欄位不可為空', '帳號需至少8個字元', '密碼需至少8個字元'];

    AlertDialog dialog = AlertDialog(
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(15)),
      ),
      content: Container(
        padding: EdgeInsets.only(left: 5, top: 5, bottom: 5),
        child: Row(
          children: <Widget>[
            Icon(
              Icons.warning,
              color: Colors.black54,
              size: 30,
            ),
            Padding(padding: EdgeInsets.only(right: 10)),
            Text(
              AlertText[num],
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
      actions: <Widget>[
        FlatButton(
          onPressed: () {
            Navigator.pop(context, true);
          },
          child: Text(
            "確定",
            style: TextStyle(color: Colors.blueAccent),
          ),
        ),
      ],
    );

    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (BuildContext context) => dialog,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
                gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xFF73AEF5),
                Color(0xFF61A4F1),
                Color(0xFF478DE0),
                Color(0xFF398AE5),
              ],
              stops: [0.1, 0.4, 0.7, 0.9],
            )),
            child: SingleChildScrollView(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      height: 10,
                    ),
                    Icon(
                      Icons.person_add,
                      size: 150.0,
                    ),
                    SizedBox(height: 30),
                    Container(
                      width: 300,
                      child: Theme(
                          data: ThemeData(
                            primaryColor: Colors.white,
                            primaryColorDark: Colors.yellowAccent,
                          ),
                          child: TextField(
                            controller: _RtextFieldUsername,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: '請輸入用戶名',
                                prefixIcon: const Icon(Icons.face)),
                          )),
                    ),
                    SizedBox(height: 20),
                    Container(
                      width: 300,
                      child: Theme(
                          data: ThemeData(
                            primaryColor: Colors.white,
                            primaryColorDark: Colors.yellowAccent,
                          ),
                          child: TextField(
                            controller: _RtextFieldAccount,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: '請輸入註冊帳號',
                                prefixIcon: const Icon(Icons.person)),
                          )),
                    ),
                    SizedBox(height: 20),
                    Container(
                      width: 300,
                      child: Theme(
                          data: ThemeData(
                            primaryColor: Colors.white,
                            primaryColorDark: Colors.yellowAccent,
                          ),
                          child: TextField(
                            controller: _RtextFieldID,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: '請輸入註冊密碼',
                                prefixIcon: const Icon(Icons.lock)),
                          )),
                    ),
                    SizedBox(height: 20),
                    Container(
                      width: 300,
                      child: Theme(
                          data: ThemeData(
                            primaryColor: Colors.white,
                            primaryColorDark: Colors.yellowAccent,
                          ),
                          child: TextField(
                            controller: _RtextFieldSchool,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: '請輸入在學學校',
                                prefixIcon: const Icon(Icons.assistant_photo)),
                          )),
                    ),
                    SizedBox(height: 20),
                    Container(
                      width: 300,
                      child: Theme(
                          data: ThemeData(
                            primaryColor: Colors.white,
                            primaryColorDark: Colors.yellowAccent,
                          ),
                          child: TextField(
                            controller: _RtextFieldGrade,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: '請輸入在學年級',
                                prefixIcon: const Icon(Icons.contacts)),
                          )),
                    ),
                    SizedBox(height: 20),
                    Container(
                      width: 300,
                      child: Theme(
                          data: ThemeData(
                            primaryColor: Colors.white,
                            primaryColorDark: Colors.yellowAccent,
                          ),
                          child: TextField(
                            controller: _RtextFieldUniversity,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: '請輸入目標大學',
                                prefixIcon: const Icon(Icons.school)),
                          )),
                    ),
                    SizedBox(height: 20),
                    Container(
                      width: 300,
                      child: Theme(
                          data: ThemeData(
                            primaryColor: Colors.white,
                            primaryColorDark: Colors.yellowAccent,
                          ),
                          child: TextField(
                            controller: _RtextFieldMajor,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: '請輸入目標科系',
                                prefixIcon: const Icon(Icons.library_books)),
                          )),
                    ),
                    SizedBox(height: 30),
                    RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.0)),
                      elevation: 4.0,
                      color: Colors.white,
                      child: Container(
                        padding: EdgeInsets.only(
                            left: 10, right: 10, top: 10, bottom: 10),
                        child: Text(
                          '註冊',
                          style:
                              TextStyle(fontSize: 25, color: Colors.blueAccent),
                        ),
                      ),
                      onPressed: () {
                        if (_RtextFieldUsername.value.text.toString() == '' ||
                            _RtextFieldAccount.value.text.toString() == '' ||
                            _RtextFieldID.value.text.toString() == '' ||
                            _RtextFieldSchool.value.text.toString() == '' ||
                            _RtextFieldGrade.value.text.toString() == '' ||
                            _RtextFieldUniversity.value.text.toString() == '' ||
                            _RtextFieldMajor.value.text.toString() == '') {
                          RegisterAlert(context, 0);
                        } else if (_RtextFieldAccount.value.text
                                .toString()
                                .length <
                            8) {
                          RegisterAlert(context, 1);
                        } else if (_RtextFieldID.value.text.toString().length <
                            8) {
                          RegisterAlert(context, 2);
                        } else {
                          Register();
                          Alert(context);
                        }
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        // this will be set when a new tab is tapped
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
}

// show profile----------------------------------------------------------------------------------------------------------------------------------------------------------------------

class ShowProfile extends StatefulWidget {
  int UserNum;

  ShowProfile({this.UserNum});

  ShowProfileState createState() => ShowProfileState();
}

class ShowProfileState extends State<ShowProfile> {
  List<String> Username;
  List<String> Account;
  List<String> ID;
  List<String> School = [];
  List<String> Grade = [];
  List<String> University = [];
  List<String> Major = [];

  String NowUsername = '';
  String NowAccount = '';
  String NowID = '';
  String NowSchool = '';
  String NowGrade = '';
  String NowUniversity = '';
  String NowMajor = '';

  int check = 1;

  final _StorageUsername = 'Username';
  final _StorageAccount = 'Account';
  final _StorageID = 'ID';
  final _StorageSchool = 'School';
  final _StorageGrade = 'Grade';
  final _StorageUniversity = 'University';
  final _StorageMajor = 'Major';
  final _StorageLogined = 'Logined';
  final _StorageUserNum = 'UserNum';

  List<Color> _backgroundColor;
  Color _iconColor;
  Color _textColor;
  List<Color> _actionContainerColor;
  Color _borderContainer;
  bool colorSwitched = false;
  var LogoIcon;
  List<String> Titles = ['就讀學校', '年級', '目標大學', '目標科系'];

  int _currentIndex = 2;

  final _Pages = <Widget>[
    UniversityPage(),
    TransportationPage(),
    SplashProfilePage(),
  ];

  void changeTheme() async {
    if (colorSwitched) {
      // dark theme
      setState(() {
        LogoIcon = Icons.person;
        _backgroundColor = [
          Color.fromRGBO(0, 255, 207, 1),
          Color.fromRGBO(0, 245, 197, 1),
          Color.fromRGBO(0, 235, 187, 1),
          Color.fromRGBO(0, 225, 177, 1),
        ];
        _iconColor = Colors.white;
        _textColor = Color.fromRGBO(0, 255, 255, 1);
        _borderContainer = Color.fromRGBO(34, 58, 90, 0.2);
        _actionContainerColor = [
          Color.fromRGBO(0, 161, 225, 1),
          Color.fromRGBO(0, 151, 215, 1),
          Color.fromRGBO(0, 141, 205, 1),
          Color.fromRGBO(0, 131, 195, 1),
        ];
      });
    } else {
      // bright theme
      setState(() {
        LogoIcon = Icons.person;
        _borderContainer = Color.fromRGBO(252, 233, 187, 1);
        _backgroundColor = [
          Color.fromRGBO(249, 249, 249, 1),
          Color.fromRGBO(232, 232, 232, 1),
          Color.fromRGBO(216, 216, 216, 1),
          Color.fromRGBO(200, 200, 200, 1),
        ];
        _iconColor = Colors.black;
        _textColor = Colors.black;
        _actionContainerColor = [
          Color.fromRGBO(0, 235, 177, 1),
          Color.fromRGBO(0, 225, 167, 1),
          Color.fromRGBO(0, 215, 157, 1),
          Color.fromRGBO(0, 205, 147, 1),
        ];
      });
    }
  }

  @override
  void initState() {
    changeTheme();
    super.initState();
  }

  Future UserData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    Username = (prefs.getStringList(_StorageUsername) ?? List<String>());
    Account = (prefs.getStringList(_StorageAccount) ?? List<String>());
    ID = (prefs.getStringList(_StorageID) ?? List<String>());
    School = (prefs.getStringList(_StorageSchool) ?? List<String>());
    Grade = (prefs.getStringList(_StorageGrade) ?? List<String>());
    University = (prefs.getStringList(_StorageUniversity) ?? List<String>());
    Major = (prefs.getStringList(_StorageMajor) ?? List<String>());

    setState(() {
      NowUsername = Username[widget.UserNum];
      NowAccount = Account[widget.UserNum];
      NowID = ID[widget.UserNum];
      NowSchool = School[widget.UserNum];
      NowGrade = Grade[widget.UserNum];
      NowUniversity = University[widget.UserNum];
      NowMajor = Major[widget.UserNum];
    });
  }

  @override
  Widget build(BuildContext context) {
    UserData();
    return Scaffold(
      body: SafeArea(
        child: GestureDetector(
          onLongPress: () {
            if (colorSwitched) {
              colorSwitched = false;
            } else {
              colorSwitched = true;
            }
            changeTheme();
          },
          child: Container(
            //background & upper box
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    stops: [0.2, 0.3, 0.5, 0.8],
                    colors: _backgroundColor)),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                SizedBox(
                  height: 20.0,
                ),
                Icon(
                  LogoIcon,
                  color: Colors.black,
                  size: 100.0,
                ),
                Text(
                  '個人檔案',
                  style: TextStyle(
                      fontSize: 35,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0)),
                  elevation: 4.0,
                  onPressed: () {
                    Logout();
                  },
                  child: Container(
                      alignment: Alignment.center,
                      height: 40.0,
                      width: 50.0,
                      child: Container(
                        child: Text(
                          '登出',
                          style: TextStyle(fontSize: 20, color: Colors.black),
                        ),
                      )),
                  color: Colors.white,
                ),
                Container(
                  //beneath box
                  height: 300.0,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: _borderContainer,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15))),
                  child: Container(
                    padding: const EdgeInsets.all(5.0),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15),
                              topRight: Radius.circular(15)),
                          gradient: LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              stops: [0.2, 0.4, 0.6, 0.8],
                              colors: _actionContainerColor)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            height: 70,
                            child: Center(
                              child: ListView(
                                children: <Widget>[
                                  Text(
                                    NowUsername,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: _textColor,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 30),
                                  ),
                                  Text(
                                    '你好',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: _iconColor, fontSize: 16),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Divider(
                            height: 0.5,
                            color: Colors.grey,
                          ),
                          Table(
                            border: TableBorder.symmetric(
                              inside: BorderSide(
                                  color: Colors.grey,
                                  style: BorderStyle.solid,
                                  width: 0.5),
                            ),
                            children: [
                              TableRow(children: [
                                _actionList0(0, NowSchool),
                                _actionList1(1, NowGrade),
                              ]),
                              TableRow(children: [
                                _actionList2(2, NowUniversity),
                                _actionList3(3, NowMajor),
                              ])
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        // this will be set when a new tab is tapped
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

  void Logout() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    prefs.setBool(_StorageLogined, false);
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => ProfilePage()));
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

  Widget _actionList0(int num, String desc) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            Titles[0],
            style: TextStyle(fontSize: 15.0, color: _iconColor),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            desc,
            style: TextStyle(
                fontSize: 30.0, color: _iconColor, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }

  Widget _actionList1(int num, String desc) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            Titles[1],
            style: TextStyle(fontSize: 15.0, color: _iconColor),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            desc,
            style: TextStyle(
                fontSize: 30.0, color: _iconColor, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }

  Widget _actionList2(int num, String desc) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            Titles[2],
            style: TextStyle(fontSize: 15.0, color: _iconColor),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            desc,
            style: TextStyle(
                fontSize: 30.0, color: _iconColor, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }

  Widget _actionList3(int num, String desc) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            Titles[3],
            style: TextStyle(fontSize: 15.0, color: _iconColor),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            desc,
            style: TextStyle(
                fontSize: 30.0, color: _iconColor, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
