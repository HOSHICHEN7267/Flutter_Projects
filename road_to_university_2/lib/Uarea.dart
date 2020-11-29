import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:gsheets/gsheets.dart';
import 'Uhome.dart';
import 'Thome.dart';
import 'profile.dart';

class Uarea extends StatefulWidget {

  @override
  UareaState createState() => UareaState();
}

class UareaState extends State<Uarea>{
  int _currentIndex = 0;

  final _Pages = <Widget>[
    UniversityPage(),
    TransportationPage(),
    SplashProfilePage(),
  ];

  final primary = Color(0xff696b9e);
  final secondary = Color(0xfff29a94);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff0f0f0),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Stack(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(top: 125, bottom: 70),
                width: double.infinity,
                child: _ListView(context),
              ),
              Container(
                height: 120,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: primary,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30))),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "地區查詢",
                        style: TextStyle(color: Colors.white, fontSize: 24),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.favorite,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
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
    final _Areas = ['基隆市', '台北市', '新北市', '桃園市', '新竹市', '苗栗縣', '台中市', '彰化縣市',
      '南投縣', '嘉義縣市', '台南市', '高雄市', '屏東市', '宜蘭縣市', '花蓮縣市', '台東市', '金門縣'];

    return ListView.builder(
      itemCount: _Areas.length,
      itemBuilder: (context, index){
        return FlatButton(
          onPressed: (){
            Navigator.push(
              context,
              PageRouteBuilder(
                pageBuilder: (context, animation1, animation2) => SUarea(index: index, AreaName: _Areas[index],),
                transitionDuration: Duration(seconds: 0),
              ),
            );
          },
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: Colors.white,
            ),
            width: double.infinity,
            height: 80,
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                SizedBox(width: 5,),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 30,
                  color: secondary,
                ),
                SizedBox(width: 10,),
                Text(
                  _Areas[index],
                  style: TextStyle(
                    color: primary,
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

//SUarea----------------------------------------------------------------------------------------------------------------------------------------------------------------

class SUarea extends StatefulWidget{
  int index;
  String AreaName;
  SUarea({this.index, this.AreaName});

  SUareaState createState() => SUareaState();
}

class SchoolData{
  String name;
  String num;
  String area;
  String address;

  SchoolData(this.name, this.num, this.area, this.address);
}

const _credentials = r'''
{
  "type": "service_account",
  "project_id": "roadtouniversity",
  "private_key_id": "3eb01f71ae3a1fcbec9538d7afcf15ede2895851",
  "private_key": "-----BEGIN PRIVATE KEY-----\nMIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQC86Ppxn5fOVIRF\nXzluf91L7n14kfllf+3IKh6UalDP0zyFpjxx9RcYXmje4qibXflkeK4NTrkV6V1c\nPvE15pSw2E9tFl58kPhqisNUfLkssGuugREbzciI6bKSYWRTawqQeWuU7YMLqxLl\n0SrfrnQERBsHEfApjvlSOpac4kxPYlWqtQdCAnEEfckntZddObV0VR8WCsx9eLl/\nnnvq1dvVUuZosjQKi5xtFNzq/aocxKNbfhT52gJMZZafMNQhPPBfchFto56VZ57Y\nvNIo7yLUI8so3WJj9+/qD8xwM2EhtcdeoAApK/hdgcAgeceK9tKO+meVl3RnqkcV\nKisi5CMdAgMBAAECggEAAVuWCF6IUJwB+KeHcxvCqPUWro/FviYM/P/rEiI5oNMN\nYfxjEHlUYXyQguVO8CPKvEO8yM0O8NppbUMyaETymkilcBFjaYluNMtCBxMbIOXZ\nSNroRMA2Ixc1evekltkKpFxnDN4U3VyRqU9FBPBWKMZnicEmNzWuCdpMBS9t6eiR\nYG2x3oXw0IBtnhKOm9QFPiPZ6YCcISwf6FNYCgzYX1qqShwf7pVMRcfEsdjeSLSF\nGsz4EbMWqC220zrSKiYaz9JWvxCZHJCwsKlUBqj+sZSwJTlmjrvWe/PZcQLsRhSa\nFQDw2o8MkBjPDQwtXDMeOtcuiNsFgsZ+dMA5Rh89qQKBgQD4YoKq/kwUgcxM0+U6\nEZE5dM+/JnTKJQ+IQ+dW9xJ5EnkvYjwcXPpj8IkhOa5KB5JhqvbiuHT7w6DK0it9\nxqFBY0i41d7rIqn1UkzW1KUTVPoPC41p3tfvRniUd9+3c1thMql9PnqqzA7b+5YI\nm9RiXN7oBu7CZMWmdhRpH9wluQKBgQDCs6ulzrHtUmepl2byWZUm8+vBEOaz8yVj\nYJMOiGkS4JD3JIQVd/yjEE/svMk4DtvUZEO4SafCAdxgnCABh1t6EwDC6mJ8qWkR\n72W6d4vN7VJLpEjjYxQLPAMAnEK8zFTqLkebUMPU7r7NKbcYMMWeWyZMx47u4BaP\ncj85Sw3ahQKBgCA0HX7wA4sxHPzlCDZUKsEJTRoacU/4KCBhtW/IDuQVqhKjqOmA\ngJJOkGj3YoqEms0A7ouMoNY3kfRZ9XuUMjoZFkeoqwNPdjuxVPcRkOmFvfoPZGFS\nnCqQt3eAZ0gQs8tRVzo+zIayeEa7QsOQ+KNcKSZqJ7CaginH63OJxvA5AoGBALl4\nqkSSt4/ZdgJpxZmLmLe4mJYb4Yj+UFlwf+XSMDXZUn77fA9vc2xqd5iO5ifOj76t\nnI0LLRF08FffoeWS6aNKQulqmVMjloGNSZztkHIkZsbDwuNJWKizDDEiqbhr9V/3\noiLkNwi6PWv3FwGmRDprnfp6B0CqmxMew/dx9cp5AoGAUKiOIV75BhAZ7dyPvk1M\nDN7msNbZuECY9nDdtIh9igyZaU56LjePeA7nMLFdREZSkshntzFJyAbQYH97A9Ih\nmAe2ivSE9Hn4KiNOCOhRjjmwaAvD3eSKdE9g74Zoai6aaR0g0qtWgFO00Jw5qIuF\nfkH6h4ipVJNj4DFP8Zr/0AY=\n-----END PRIVATE KEY-----\n",
  "client_email": "roadtouniversity@roadtouniversity.iam.gserviceaccount.com",
  "client_id": "106199981609892921381",
  "auth_uri": "https://accounts.google.com/o/oauth2/auth",
  "token_uri": "https://oauth2.googleapis.com/token",
  "auth_provider_x509_cert_url": "https://www.googleapis.com/oauth2/v1/certs",
  "client_x509_cert_url": "https://www.googleapis.com/robot/v1/metadata/x509/roadtouniversity%40roadtouniversity.iam.gserviceaccount.com"
}
''';

class SUareaState extends State<SUarea>{
  int _currentIndex = 0;

  final _Pages = <Widget>[
    UniversityPage(),
    TransportationPage(),
    SplashProfilePage(),
  ];

  final primary = Color(0xff696b9e);
  final secondary = Color(0xfff29a94);

  Future<List<SchoolData>> getSchoolData() async{
    const _spreadsheetId = '1EnBL7x96KD3JugUP2rQBQlJXylULVCcKH9rMAVO7l2I';
    const start_row = 2;
    const end_row = 69;
    print('aha');

    // init GSheets
    final gsheets = GSheets(_credentials);
    // fetch spreadsheet by its id
    final ss = await gsheets.spreadsheet(_spreadsheetId);
    // get worksheet by its title
    final sheet = await ss.worksheetByTitle('Datas');

    List<SchoolData> data = new List<SchoolData>();

    print(await sheet.values.row(3));

    for(int i = start_row ; i <= end_row ; i++){
      final now = await sheet.values.row(i);
      if(now[2] == widget.AreaName){
        data.add(SchoolData(now[0], now[1], now[2], now[3]));
      }
    }

    return data;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: getSchoolData(),
        builder: (context, snap){
          if(!snap.hasData){
            print('hi');
            return Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: 120,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: primary,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(30),
                            bottomRight: Radius.circular(30))),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: Icon(
                              Icons.arrow_back,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            widget.AreaName,
                            style: TextStyle(color: Colors.white, fontSize: 24),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.favorite,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 250,),
                  SizedBox(
                    height: 50,
                    width: 50,
                    child: CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation<Color>(secondary),
                      strokeWidth: 6.0,
                    ),
                  ),
                  SizedBox(height: 50,),
                  Text('Loading...', style: TextStyle(fontSize: 25, color: primary, fontWeight: FontWeight.bold),),
                ],
              ),
            );
          }
          print('ho');
          List<SchoolData> schoolDatas = snap.data;
          return SingleChildScrollView(
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Stack(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(top: 125, bottom: 70),
                    //height: MediaQuery.of(context).size.height,
                    width: double.infinity,
                    child: _ListView(context, schoolDatas),
                  ),
                  Container(
                    height: 120,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: primary,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(30),
                            bottomRight: Radius.circular(30))),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: Icon(
                              Icons.arrow_back,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            widget.AreaName,
                            style: TextStyle(color: Colors.white, fontSize: 24),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.favorite,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
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

  Widget _ListView(BuildContext context, List<SchoolData> schooldatas){
    return ListView.builder(
      itemCount: schooldatas.length,
      itemBuilder: (context, index){
        return FlatButton(
          onPressed: (){
            Navigator.push(
              context,
              PageRouteBuilder(
                pageBuilder: (context, animation1, animation2) => WebUarea(SchoolCode: schooldatas[index].num, AreaName: widget.AreaName, SchoolName: schooldatas[index].name,),
                transitionDuration: Duration(seconds: 0),
              ),
            );
          },
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: Colors.white,
            ),
            width: double.infinity,
            height: 110,
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  width: 30,
                  height: 30,
                  margin: EdgeInsets.only(right: 15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(width: 3, color: secondary),
                    image: DecorationImage(
                      image: ExactAssetImage('images/university.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        schooldatas[index].name,
                        style: TextStyle(
                          color: primary,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Row(
                        children: <Widget>[
                          Icon(
                            Icons.location_on,
                            color: secondary,
                            size: 20,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            schooldatas[index].address,
                            style: TextStyle(
                              color: primary,
                              fontSize: 14.0,
                              letterSpacing: .3,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Row(
                        children: <Widget>[
                          Icon(
                            Icons.search,
                            color: secondary,
                            size: 20,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            schooldatas[index].num,
                            style: TextStyle(
                              color: primary,
                              fontSize: 14,
                              letterSpacing: .3,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

//WebUarea-------------------------------------------------------------------------------------------------------------------------------------------------------------------


class WebUarea extends StatefulWidget{
  String SchoolCode;
  String AreaName;
  String SchoolName;
  WebUarea({this.SchoolCode, this.AreaName, this.SchoolName});

  WebUareaState createState() => WebUareaState();
}

class WebUareaState extends State<WebUarea>{

  final AreaSchoolCode = {
    '基隆市':['021'],
    '台北市':['001', '002', '005', '006', '013', '014', '017', '019', '025', '028', '032', '035', '046', '047', '050', '099', '109', '112'],
    '新北市':['002', '014', '020', '044', '056', '079', '099', '152'],
    '桃園市':['008', '016', '030', '039', '046)', '040', '110'],
    '新竹市':['011', '013', '043', '065'],
    '苗栗縣':['151'],
    '台中市':['003', '009', '012', '015', '018', '026', '031', '060', '134'],
    '彰化縣市':['023', '042', '133'],
    '南投縣':['058'],
    '嘉義縣市':['041', '059', '100'],
    '台南市':['004', '033', '051', '063', '079', '111', '112', '113'],
    '高雄市':['007', '022', '027', '045', '050', '101'],
    '屏東市':['036'],
    '宜蘭縣市':['014', '130', '150'],
    '花蓮縣市':['034', '108'],
    '台東市':['038'],
    '金門縣':['046', '153'],
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(47, 75, 110, 1),
        title: Text(widget.SchoolName),
      ),
      body: WebView(
        initialUrl: 'https://university-tw.ldkrsi.men/caac/${widget.SchoolCode}/#gsc.tab=0',
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}


























