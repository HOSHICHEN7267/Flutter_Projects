import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'Uhome.dart';
import 'Thome.dart';
import 'STtrain.dart';
import 'profile.dart';
import 'package:intl/intl.dart';

class Ttrain extends StatefulWidget {
  @override
  TtrainState createState() => TtrainState();
}

enum Areas {
  Taipei,
  Taoyuan,
  Xinchu,
  Miaoli,
  Taichung,
  Zhanghua,
  Nantou,
  Yunlin,
  Chiayi,
  Tainan,
  Kaohsiung,
  Pindong,
  Yilang,
  Hwalien,
  Taidong,
  PS,
  NL,
  Gigi,
  Shalung
}
enum TP {
  Fulong,
  Gongliao,
  Shuangxi,
  Mudan,
  Sandiaoling,
  Houtong,
  Ruifang,
  Sijiaoting,
  Nuannuan,
  Keelung,
  Sankeng,
  Badu,
  Qidu,
  Baifu,
  Wudu,
  Xizhi,
  Xike,
  Nangang,
  Songshan,
  Taipei,
  Wanhua,
  Banqiao,
  Fuzhou,
  Shulin,
  SouthShulin,
  Shanjia,
  Yingge
}
enum TY { Taoyuan, Neili, Zhongli, Puxin, Yangmei, Fugang, Xinfu }
enum XC {
  Beihu,
  Hukou,
  Xinfeng,
  Zhubei,
  NorthHsinchu,
  Hsinchu,
  Sanxingqiao,
  Xiangshan
}
enum ML {
  Qiding,
  Zhunan,
  Tanwen,
  Dashan,
  Houlong,
  Longgang,
  Baishatun,
  Xinpu,
  Tongxiao,
  Yuanli,
  Zaoqiao,
  Fengfu,
  Miaoli,
  Nanshi,
  Tongluo,
  Sanyi
}
enum TC {
  Rinan,
  Dajia,
  TaichungPort,
  Qingshui,
  Shalu,
  Longjing,
  Dadu,
  Zhuifen,
  Taian,
  Houli,
  Fengyuan,
  Lilin,
  Tanzi,
  Toujiacuo,
  Songzhu,
  Taiyuan,
  Jingwu,
  Taichung,
  Wuquan,
  Daqing,
  Wuri,
  Xinwuri,
  Chenggong
}
enum ZH {
  Changhua,
  Huatan,
  Dacun,
  Yuanlin,
  Yongjing,
  Shetou,
  Tianzhong,
  Ershui
}
enum NT { Yuanquan, Zhuoshui, Longquan, Jiji, Shuili, Checheng }
enum YLN { Linnei, Shiliu, Douliu, Dounan, Shigui }
enum CY { Dalin, Minxiong, Jiabei, Chiayi, Shuishang, Nanjing }
enum TN {
  Houbi,
  Xinying,
  Liuying,
  Linfengying,
  Longtian,
  Balin,
  Shanhua,
  Nanke,
  Xinshi,
  Yongkang,
  Daqiao,
  Tainan,
  Baoan,
  Rende,
  Zhongzhou,
  ChangJungChristianUniversity,
  Shalun
}
enum KS {
  Dahu,
  Luzhu,
  Gangshan,
  Qiaotou,
  Nanzi,
  Xinzuoying,
  Zuoying,
  Neiwei,
  MuseumofFineArts,
  Gushan,
  Sankuaicuo,
  Kaohsiung,
  Minzu,
  ScienceAndTechnologyMuseum,
  Zhengyi,
  Fengshan,
  Houzhuang,
  Jiuqutang
}
enum PD {
  Liukuaicuo,
  Pingtung,
  Guilai,
  Linluo,
  Xishi,
  Zhutian,
  Chaozhou,
  Kanding,
  Nanzhou,
  Zhenan,
  Linbian,
  Jiadong,
  Donghai,
  Fangliao,
  Jialu,
  Neishi,
  Fangshan
}
enum YLG {
  Hanben,
  Wuta,
  Nanao,
  Dongao,
  Yongle,
  Suao,
  Suaoxin,
  Xinma,
  Dongshan,
  Luodong,
  Zhongli,
  Erjie,
  Yilan,
  Sicheng,
  Jiaoxi,
  Dingpu,
  Toucheng,
  Waiao,
  Guishan,
  Daxi,
  Dali,
  Shicheng
}
enum HL {
  Fuli,
  Dongzhu,
  Dongli,
  Yuli,
  Sanmin,
  Ruisui,
  Fuyuan,
  Dafu,
  Guangfu,
  Wanrong,
  Fenglin,
  Nanping,
  LinrongShinKong,
  Fengtian,
  Shoufeng,
  Pinghe,
  Zhixue,
  Jian,
  Hualien,
  Beipu,
  Jingmei,
  Xincheng,
  Chongde,
  Heren,
  Heping
}
enum TD {
  Dawu,
  Longxi,
  Jinlun,
  Taimali,
  Zhiben,
  Kangle,
  Taitung,
  Shanli,
  Luye,
  Ruiyuan,
  Ruihe,
  Guanshan,
  Haiduan,
  Chishang
}
enum EPS {
  Ruifang,
  Houtong,
  Sandiaoling,
  Jingtong,
  Pingxi,
  Lingjiao,
  Wanggu,
  Shifen,
  Dahua,
  Haikeguan,
  Badouzi
}
enum ENL {
  Hsinchu,
  NorthHsinchu,
  Qianjia,
  Xinzhuang,
  Zhuzhong,
  Liujia,
  Shangyuan,
  Ronghua,
  Zhudong,
  Hengshan,
  Jiuzantou,
  Hexing,
  Fugui,
  Neiwan
}
enum GG { Ershui, Yuanquan, Zhuoshui, Longquan, Jiji, Shuili, Checheng }
enum SL { Zhongzhou, ChangJungChristianUniversity, Shalun }
const double Fontsize = 17.5;
const double Padding = 20.0;

/*class Search{
  String Sdate = '2020 - 06 - 17';
  String Stime = '12 : 20 : 20';
  bool isDeparture = true;
  String DStation = '板橋';
  String AStation = '清水';

  Search({this.Sdate, this.Stime, this.isDeparture, this.DStation, this.AStation});
}*/

class TtrainState extends State<Ttrain> {
  String DStationText = '請選擇車站';
  String AStationText = '請選擇車站';

  //TP------------------------------------------------------------------------------------------------------------------------------------------------------------------

  Future<void> TPDOpenDialog() async {
    return await showDialog(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            title: const Text("請選擇車站"),
            children: <Widget>[
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TP.Fulong);
                  setState(() {
                    DStationText = "福隆";
                  });
                },
                child: const Text(
                  "福隆",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TP.Gongliao);
                  setState(() {
                    DStationText = "貢寮";
                  });
                },
                child: const Text(
                  "貢寮",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TP.Shuangxi);
                  setState(() {
                    DStationText = "雙溪";
                  });
                },
                child: const Text(
                  "雙溪",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TP.Mudan);
                  setState(() {
                    DStationText = "牡丹";
                  });
                },
                child: const Text(
                  "牡丹",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TP.Sandiaoling);
                  setState(() {
                    DStationText = "三貂嶺";
                  });
                },
                child: const Text(
                  "三貂嶺",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TP.Houtong);
                  setState(() {
                    DStationText = "猴硐";
                  });
                },
                child: const Text(
                  "猴硐",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TP.Ruifang);
                  setState(() {
                    DStationText = "瑞芳";
                  });
                },
                child: const Text(
                  "瑞芳",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TP.Sijiaoting);
                  setState(() {
                    DStationText = "四腳亭";
                  });
                },
                child: const Text(
                  "四腳亭",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TP.Nuannuan);
                  setState(() {
                    DStationText = "暖暖";
                  });
                },
                child: const Text(
                  "暖暖",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TP.Keelung);
                  setState(() {
                    DStationText = "基隆";
                  });
                },
                child: const Text(
                  "基隆",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TP.Sankeng);
                  setState(() {
                    DStationText = "三坑";
                  });
                },
                child: const Text(
                  "三坑",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TP.Badu);
                  setState(() {
                    DStationText = "八堵";
                  });
                },
                child: const Text(
                  "八堵",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TP.Qidu);
                  setState(() {
                    DStationText = "七堵";
                  });
                },
                child: const Text(
                  "七堵",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TP.Baifu);
                  setState(() {
                    DStationText = "百福";
                  });
                },
                child: const Text(
                  "百福",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TP.Wudu);
                  setState(() {
                    DStationText = "五堵";
                  });
                },
                child: const Text(
                  "五堵",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TP.Xizhi);
                  setState(() {
                    DStationText = "汐止";
                  });
                },
                child: const Text(
                  "汐止",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TP.Xike);
                  setState(() {
                    DStationText = "汐科";
                  });
                },
                child: const Text(
                  "汐科",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TP.Nangang);
                  setState(() {
                    DStationText = "南港";
                  });
                },
                child: const Text(
                  "南港",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TP.Songshan);
                  setState(() {
                    DStationText = "松山";
                  });
                },
                child: const Text(
                  "松山",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TP.Taipei);
                  setState(() {
                    DStationText = "臺北";
                  });
                },
                child: const Text(
                  "臺北",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TP.Wanhua);
                  setState(() {
                    DStationText = "萬華";
                  });
                },
                child: const Text(
                  "萬華",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TP.Banqiao);
                  setState(() {
                    DStationText = "板橋";
                  });
                },
                child: const Text(
                  "板橋",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TP.Fuzhou);
                  setState(() {
                    DStationText = "浮洲";
                  });
                },
                child: const Text(
                  "浮洲",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TP.Shulin);
                  setState(() {
                    DStationText = "樹林";
                  });
                },
                child: const Text(
                  "樹林",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TP.SouthShulin);
                  setState(() {
                    DStationText = "南樹林";
                  });
                },
                child: const Text(
                  "南樹林",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TP.Shanjia);
                  setState(() {
                    DStationText = "山佳";
                  });
                },
                child: const Text(
                  "山佳",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TP.Yingge);
                  setState(() {
                    DStationText = "鶯歌";
                  });
                },
                child: const Text(
                  "鶯歌",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
            ],
          );
        });
  }

  Future<void> TPAOpenDialog() async {
    return await showDialog(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            title: const Text("請選擇車站"),
            children: <Widget>[
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TP.Fulong);
                  setState(() {
                    AStationText = "福隆";
                  });
                },
                child: const Text(
                  "福隆",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TP.Gongliao);
                  setState(() {
                    AStationText = "貢寮";
                  });
                },
                child: const Text(
                  "貢寮",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TP.Shuangxi);
                  setState(() {
                    AStationText = "雙溪";
                  });
                },
                child: const Text(
                  "雙溪",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TP.Mudan);
                  setState(() {
                    AStationText = "牡丹";
                  });
                },
                child: const Text(
                  "牡丹",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TP.Sandiaoling);
                  setState(() {
                    AStationText = "三貂嶺";
                  });
                },
                child: const Text(
                  "三貂嶺",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TP.Houtong);
                  setState(() {
                    AStationText = "猴硐";
                  });
                },
                child: const Text(
                  "猴硐",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TP.Ruifang);
                  setState(() {
                    AStationText = "瑞芳";
                  });
                },
                child: const Text(
                  "瑞芳",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TP.Sijiaoting);
                  setState(() {
                    AStationText = "四腳亭";
                  });
                },
                child: const Text(
                  "四腳亭",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TP.Nuannuan);
                  setState(() {
                    AStationText = "暖暖";
                  });
                },
                child: const Text(
                  "暖暖",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TP.Keelung);
                  setState(() {
                    AStationText = "基隆";
                  });
                },
                child: const Text(
                  "基隆",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TP.Sankeng);
                  setState(() {
                    AStationText = "三坑";
                  });
                },
                child: const Text(
                  "三坑",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TP.Badu);
                  setState(() {
                    AStationText = "八堵";
                  });
                },
                child: const Text(
                  "八堵",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TP.Qidu);
                  setState(() {
                    AStationText = "七堵";
                  });
                },
                child: const Text(
                  "七堵",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TP.Baifu);
                  setState(() {
                    AStationText = "百福";
                  });
                },
                child: const Text(
                  "百福",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TP.Wudu);
                  setState(() {
                    AStationText = "五堵";
                  });
                },
                child: const Text(
                  "五堵",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TP.Xizhi);
                  setState(() {
                    AStationText = "汐止";
                  });
                },
                child: const Text(
                  "汐止",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TP.Xike);
                  setState(() {
                    AStationText = "汐科";
                  });
                },
                child: const Text(
                  "汐科",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TP.Nangang);
                  setState(() {
                    AStationText = "南港";
                  });
                },
                child: const Text(
                  "南港",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TP.Songshan);
                  setState(() {
                    AStationText = "松山";
                  });
                },
                child: const Text(
                  "松山",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TP.Taipei);
                  setState(() {
                    AStationText = "臺北";
                  });
                },
                child: const Text(
                  "臺北",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TP.Wanhua);
                  setState(() {
                    AStationText = "萬華";
                  });
                },
                child: const Text(
                  "萬華",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TP.Banqiao);
                  setState(() {
                    AStationText = "板橋";
                  });
                },
                child: const Text(
                  "板橋",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TP.Fuzhou);
                  setState(() {
                    AStationText = "浮洲";
                  });
                },
                child: const Text(
                  "浮洲",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TP.Shulin);
                  setState(() {
                    AStationText = "樹林";
                  });
                },
                child: const Text(
                  "樹林",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TP.SouthShulin);
                  setState(() {
                    AStationText = "南樹林";
                  });
                },
                child: const Text(
                  "南樹林",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TP.Shanjia);
                  setState(() {
                    AStationText = "山佳";
                  });
                },
                child: const Text(
                  "山佳",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TP.Yingge);
                  setState(() {
                    AStationText = "鶯歌";
                  });
                },
                child: const Text(
                  "鶯歌",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
            ],
          );
        });
  }

  //TY------------------------------------------------------------------------------------------------------------------------------------------------------------------

  Future<void> TYDOpenDialog() async {
    return await showDialog(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            title: const Text("請選擇車站"),
            children: <Widget>[
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TY.Taoyuan);
                  setState(() {
                    DStationText = "桃園";
                  });
                },
                child: const Text(
                  "桃園",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TY.Neili);
                  setState(() {
                    DStationText = "內壢";
                  });
                },
                child: const Text(
                  "內壢",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TY.Zhongli);
                  setState(() {
                    DStationText = "中壢";
                  });
                },
                child: const Text(
                  "中壢",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TY.Puxin);
                  setState(() {
                    DStationText = "埔心";
                  });
                },
                child: const Text(
                  "埔心",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TY.Yangmei);
                  setState(() {
                    DStationText = "楊梅";
                  });
                },
                child: const Text(
                  "楊梅",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TY.Fugang);
                  setState(() {
                    DStationText = "富岡";
                  });
                },
                child: const Text(
                  "富岡",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TY.Xinfu);
                  setState(() {
                    DStationText = "新富";
                  });
                },
                child: const Text(
                  "新富",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
            ],
          );
        });
  }

  Future<void> TYAOpenDialog() async {
    return await showDialog(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            title: const Text("請選擇車站"),
            children: <Widget>[
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TY.Taoyuan);
                  setState(() {
                    AStationText = "桃園";
                  });
                },
                child: const Text(
                  "桃園",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TY.Neili);
                  setState(() {
                    AStationText = "內壢";
                  });
                },
                child: const Text(
                  "內壢",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TY.Zhongli);
                  setState(() {
                    AStationText = "中壢";
                  });
                },
                child: const Text(
                  "中壢",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TY.Puxin);
                  setState(() {
                    AStationText = "埔心";
                  });
                },
                child: const Text(
                  "埔心",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TY.Yangmei);
                  setState(() {
                    AStationText = "楊梅";
                  });
                },
                child: const Text(
                  "楊梅",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TY.Fugang);
                  setState(() {
                    AStationText = "富岡";
                  });
                },
                child: const Text(
                  "富岡",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TY.Xinfu);
                  setState(() {
                    AStationText = "新富";
                  });
                },
                child: const Text(
                  "新富",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
            ],
          );
        });
  }

  //XC---------------------------------------------------------------------------------------------------------------------------------------------------------------

  Future<void> XCDOpenDialog() async {
    return await showDialog(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            title: const Text("請選擇車站"),
            children: <Widget>[
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, XC.Beihu);
                  setState(() {
                    DStationText = "北湖";
                  });
                },
                child: const Text(
                  "北湖",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, XC.Hukou);
                  setState(() {
                    DStationText = "湖口";
                  });
                },
                child: const Text(
                  "湖口",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, XC.Xinfeng);
                  setState(() {
                    DStationText = "新豐";
                  });
                },
                child: const Text(
                  "新豐",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, XC.Zhubei);
                  setState(() {
                    DStationText = "竹北";
                  });
                },
                child: const Text(
                  "竹北",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, XC.NorthHsinchu);
                  setState(() {
                    DStationText = "北新竹";
                  });
                },
                child: const Text(
                  "北新竹",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, XC.Hsinchu);
                  setState(() {
                    DStationText = "新竹";
                  });
                },
                child: const Text(
                  "新竹",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, XC.Sanxingqiao);
                  setState(() {
                    DStationText = "三姓橋";
                  });
                },
                child: const Text(
                  "三姓橋",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, XC.Xiangshan);
                  setState(() {
                    DStationText = "香山";
                  });
                },
                child: const Text(
                  "香山",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
            ],
          );
        });
  }

  Future<void> XCAOpenDialog() async {
    return await showDialog(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            title: const Text("請選擇車站"),
            children: <Widget>[
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, XC.Beihu);
                  setState(() {
                    AStationText = "北湖";
                  });
                },
                child: const Text(
                  "北湖",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, XC.Hukou);
                  setState(() {
                    AStationText = "湖口";
                  });
                },
                child: const Text(
                  "湖口",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, XC.Xinfeng);
                  setState(() {
                    AStationText = "新豐";
                  });
                },
                child: const Text(
                  "新豐",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, XC.Zhubei);
                  setState(() {
                    AStationText = "竹北";
                  });
                },
                child: const Text(
                  "竹北",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, XC.NorthHsinchu);
                  setState(() {
                    AStationText = "北新竹";
                  });
                },
                child: const Text(
                  "北新竹",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, XC.Hsinchu);
                  setState(() {
                    AStationText = "新竹";
                  });
                },
                child: const Text(
                  "新竹",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, XC.Sanxingqiao);
                  setState(() {
                    AStationText = "三姓橋";
                  });
                },
                child: const Text(
                  "三姓橋",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, XC.Xiangshan);
                  setState(() {
                    AStationText = "香山";
                  });
                },
                child: const Text(
                  "香山",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
            ],
          );
        });
  }

  //ML---------------------------------------------------------------------------------------------------------------------------------------------------------------

  Future<void> MLDOpenDialog() async {
    return await showDialog(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            title: const Text("請選擇車站"),
            children: <Widget>[
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, ML.Qiding);
                  setState(() {
                    DStationText = "崎頂";
                  });
                },
                child: const Text(
                  "崎頂",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, ML.Zhunan);
                  setState(() {
                    DStationText = "竹南";
                  });
                },
                child: const Text(
                  "竹南",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, ML.Tanwen);
                  setState(() {
                    DStationText = "談文";
                  });
                },
                child: const Text(
                  "談文",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, ML.Dashan);
                  setState(() {
                    DStationText = "大山";
                  });
                },
                child: const Text(
                  "大山",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, ML.Houlong);
                  setState(() {
                    DStationText = "後龍";
                  });
                },
                child: const Text(
                  "後龍",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, ML.Longgang);
                  setState(() {
                    DStationText = "龍港";
                  });
                },
                child: const Text(
                  "龍港",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, ML.Baishatun);
                  setState(() {
                    DStationText = "白沙屯";
                  });
                },
                child: const Text(
                  "白沙屯",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, ML.Xinpu);
                  setState(() {
                    DStationText = "新埔";
                  });
                },
                child: const Text(
                  "新埔",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, ML.Tongxiao);
                  setState(() {
                    DStationText = "通霄";
                  });
                },
                child: const Text(
                  "通霄",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, ML.Yuanli);
                  setState(() {
                    DStationText = "苑裡";
                  });
                },
                child: const Text(
                  "苑裡",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, ML.Zaoqiao);
                  setState(() {
                    DStationText = "造橋";
                  });
                },
                child: const Text(
                  "造橋",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, ML.Fengfu);
                  setState(() {
                    DStationText = "豐富";
                  });
                },
                child: const Text(
                  "豐富",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, ML.Miaoli);
                  setState(() {
                    DStationText = "苗栗";
                  });
                },
                child: const Text(
                  "苗栗",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, ML.Nanshi);
                  setState(() {
                    DStationText = "南勢";
                  });
                },
                child: const Text(
                  "南勢",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, ML.Tongluo);
                  setState(() {
                    DStationText = "銅鑼";
                  });
                },
                child: const Text(
                  "銅鑼",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, ML.Sanyi);
                  setState(() {
                    DStationText = "三義";
                  });
                },
                child: const Text(
                  "三義",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
            ],
          );
        });
  }

  Future<void> MLAOpenDialog() async {
    return await showDialog(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            title: const Text("請選擇車站"),
            children: <Widget>[
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, ML.Qiding);
                  setState(() {
                    AStationText = "崎頂";
                  });
                },
                child: const Text(
                  "崎頂",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, ML.Zhunan);
                  setState(() {
                    AStationText = "竹南";
                  });
                },
                child: const Text(
                  "竹南",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, ML.Tanwen);
                  setState(() {
                    AStationText = "談文";
                  });
                },
                child: const Text(
                  "談文",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, ML.Dashan);
                  setState(() {
                    AStationText = "大山";
                  });
                },
                child: const Text(
                  "大山",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, ML.Houlong);
                  setState(() {
                    AStationText = "後龍";
                  });
                },
                child: const Text(
                  "後龍",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, ML.Longgang);
                  setState(() {
                    AStationText = "龍港";
                  });
                },
                child: const Text(
                  "龍港",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, ML.Baishatun);
                  setState(() {
                    AStationText = "白沙屯";
                  });
                },
                child: const Text(
                  "白沙屯",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, ML.Xinpu);
                  setState(() {
                    AStationText = "新埔";
                  });
                },
                child: const Text(
                  "新埔",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, ML.Tongxiao);
                  setState(() {
                    AStationText = "通霄";
                  });
                },
                child: const Text(
                  "通霄",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, ML.Yuanli);
                  setState(() {
                    AStationText = "苑裡";
                  });
                },
                child: const Text(
                  "苑裡",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, ML.Zaoqiao);
                  setState(() {
                    AStationText = "造橋";
                  });
                },
                child: const Text(
                  "造橋",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, ML.Fengfu);
                  setState(() {
                    AStationText = "豐富";
                  });
                },
                child: const Text(
                  "豐富",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, ML.Miaoli);
                  setState(() {
                    AStationText = "苗栗";
                  });
                },
                child: const Text(
                  "苗栗",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, ML.Nanshi);
                  setState(() {
                    AStationText = "南勢";
                  });
                },
                child: const Text(
                  "南勢",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, ML.Tongluo);
                  setState(() {
                    AStationText = "銅鑼";
                  });
                },
                child: const Text(
                  "銅鑼",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, ML.Sanyi);
                  setState(() {
                    AStationText = "三義";
                  });
                },
                child: const Text(
                  "三義",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
            ],
          );
        });
  }

  //TC---------------------------------------------------------------------------------------------------------------------------------------------------------------

  Future<void> TCDOpenDialog() async {
    return await showDialog(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            title: const Text("請選擇車站"),
            children: <Widget>[
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TC.Rinan);
                  setState(() {
                    DStationText = "日南";
                  });
                },
                child: const Text(
                  "日南",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TC.Dajia);
                  setState(() {
                    DStationText = "大甲";
                  });
                },
                child: const Text(
                  "大甲",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TC.TaichungPort);
                  setState(() {
                    DStationText = "臺中港";
                  });
                },
                child: const Text(
                  "臺中港",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TC.Qingshui);
                  setState(() {
                    DStationText = "清水";
                  });
                },
                child: const Text(
                  "清水",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TC.Shalu);
                  setState(() {
                    DStationText = "沙鹿";
                  });
                },
                child: const Text(
                  "沙鹿",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TC.Longjing);
                  setState(() {
                    DStationText = "龍井";
                  });
                },
                child: const Text(
                  "龍井",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TC.Dadu);
                  setState(() {
                    DStationText = "大肚";
                  });
                },
                child: const Text(
                  "大肚",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TC.Zhuifen);
                  setState(() {
                    DStationText = "追分";
                  });
                },
                child: const Text(
                  "追分",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TC.Taian);
                  setState(() {
                    DStationText = "泰安";
                  });
                },
                child: const Text(
                  "泰安",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TC.Houli);
                  setState(() {
                    DStationText = "后里";
                  });
                },
                child: const Text(
                  "后里",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TC.Fengyuan);
                  setState(() {
                    DStationText = "豐原";
                  });
                },
                child: const Text(
                  "豐原",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TC.Lilin);
                  setState(() {
                    DStationText = "栗林";
                  });
                },
                child: const Text(
                  "栗林",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TC.Tanzi);
                  setState(() {
                    DStationText = "潭子";
                  });
                },
                child: const Text(
                  "潭子",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TC.Toujiacuo);
                  setState(() {
                    DStationText = "頭家厝";
                  });
                },
                child: const Text(
                  "頭家厝",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TC.Songzhu);
                  setState(() {
                    DStationText = "松竹";
                  });
                },
                child: const Text(
                  "松竹",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TC.Taiyuan);
                  setState(() {
                    DStationText = "太原";
                  });
                },
                child: const Text(
                  "太原",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TC.Jingwu);
                  setState(() {
                    DStationText = "精武";
                  });
                },
                child: const Text(
                  "精武",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TC.Taichung);
                  setState(() {
                    DStationText = "臺中";
                  });
                },
                child: const Text(
                  "臺中",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TC.Wuquan);
                  setState(() {
                    DStationText = "五權";
                  });
                },
                child: const Text(
                  "五權",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TC.Daqing);
                  setState(() {
                    DStationText = "大慶";
                  });
                },
                child: const Text(
                  "大慶",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TC.Wuri);
                  setState(() {
                    DStationText = "烏日";
                  });
                },
                child: const Text(
                  "烏日",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TC.Xinwuri);
                  setState(() {
                    DStationText = "新烏日";
                  });
                },
                child: const Text(
                  "新烏日",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TC.Chenggong);
                  setState(() {
                    DStationText = "成功";
                  });
                },
                child: const Text(
                  "成功",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
            ],
          );
        });
  }

  Future<void> TCAOpenDialog() async {
    return await showDialog(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            title: const Text("請選擇車站"),
            children: <Widget>[
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TC.Rinan);
                  setState(() {
                    AStationText = "日南";
                  });
                },
                child: const Text(
                  "日南",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TC.Dajia);
                  setState(() {
                    AStationText = "大甲";
                  });
                },
                child: const Text(
                  "大甲",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TC.TaichungPort);
                  setState(() {
                    AStationText = "臺中港";
                  });
                },
                child: const Text(
                  "臺中港",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TC.Qingshui);
                  setState(() {
                    AStationText = "清水";
                  });
                },
                child: const Text(
                  "清水",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TC.Shalu);
                  setState(() {
                    AStationText = "沙鹿";
                  });
                },
                child: const Text(
                  "沙鹿",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TC.Longjing);
                  setState(() {
                    AStationText = "龍井";
                  });
                },
                child: const Text(
                  "龍井",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TC.Dadu);
                  setState(() {
                    AStationText = "大肚";
                  });
                },
                child: const Text(
                  "大肚",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TC.Zhuifen);
                  setState(() {
                    AStationText = "追分";
                  });
                },
                child: const Text(
                  "追分",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TC.Taian);
                  setState(() {
                    AStationText = "泰安";
                  });
                },
                child: const Text(
                  "泰安",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TC.Houli);
                  setState(() {
                    AStationText = "后里";
                  });
                },
                child: const Text(
                  "后里",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TC.Fengyuan);
                  setState(() {
                    AStationText = "豐原";
                  });
                },
                child: const Text(
                  "豐原",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TC.Lilin);
                  setState(() {
                    AStationText = "栗林";
                  });
                },
                child: const Text(
                  "栗林",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TC.Tanzi);
                  setState(() {
                    AStationText = "潭子";
                  });
                },
                child: const Text(
                  "潭子",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TC.Toujiacuo);
                  setState(() {
                    AStationText = "頭家厝";
                  });
                },
                child: const Text(
                  "頭家厝",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TC.Songzhu);
                  setState(() {
                    AStationText = "松竹";
                  });
                },
                child: const Text(
                  "松竹",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TC.Taiyuan);
                  setState(() {
                    AStationText = "太原";
                  });
                },
                child: const Text(
                  "太原",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TC.Jingwu);
                  setState(() {
                    AStationText = "精武";
                  });
                },
                child: const Text(
                  "精武",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TC.Taichung);
                  setState(() {
                    AStationText = "臺中";
                  });
                },
                child: const Text(
                  "臺中",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TC.Wuquan);
                  setState(() {
                    AStationText = "五權";
                  });
                },
                child: const Text(
                  "五權",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TC.Daqing);
                  setState(() {
                    AStationText = "大慶";
                  });
                },
                child: const Text(
                  "大慶",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TC.Wuri);
                  setState(() {
                    AStationText = "烏日";
                  });
                },
                child: const Text(
                  "烏日",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TC.Xinwuri);
                  setState(() {
                    AStationText = "新烏日";
                  });
                },
                child: const Text(
                  "新烏日",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TC.Chenggong);
                  setState(() {
                    AStationText = "成功";
                  });
                },
                child: const Text(
                  "成功",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
            ],
          );
        });
  }

  //ZH---------------------------------------------------------------------------------------------------------------------------------------------------------------

  Future<void> ZHDOpenDialog() async {
    return await showDialog(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            title: const Text("請選擇車站"),
            children: <Widget>[
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, ZH.Changhua);
                  setState(() {
                    DStationText = "彰化";
                  });
                },
                child: const Text(
                  "彰化",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, ZH.Huatan);
                  setState(() {
                    DStationText = "花壇";
                  });
                },
                child: const Text(
                  "花壇",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, ZH.Dacun);
                  setState(() {
                    DStationText = "大村";
                  });
                },
                child: const Text(
                  "大村",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, ZH.Yuanlin);
                  setState(() {
                    DStationText = "員林";
                  });
                },
                child: const Text(
                  "員林",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, ZH.Yongjing);
                  setState(() {
                    DStationText = "永靖";
                  });
                },
                child: const Text(
                  "永靖",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, ZH.Shetou);
                  setState(() {
                    DStationText = "社頭";
                  });
                },
                child: const Text(
                  "社頭",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, ZH.Tianzhong);
                  setState(() {
                    DStationText = "田中";
                  });
                },
                child: const Text(
                  "田中",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, ZH.Ershui);
                  setState(() {
                    DStationText = "二水";
                  });
                },
                child: const Text(
                  "二水",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
            ],
          );
        });
  }

  Future<void> ZHAOpenDialog() async {
    return await showDialog(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            title: const Text("請選擇車站"),
            children: <Widget>[
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, ZH.Changhua);
                  setState(() {
                    AStationText = "彰化";
                  });
                },
                child: const Text(
                  "彰化",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, ZH.Huatan);
                  setState(() {
                    AStationText = "花壇";
                  });
                },
                child: const Text(
                  "花壇",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, ZH.Dacun);
                  setState(() {
                    AStationText = "大村";
                  });
                },
                child: const Text(
                  "大村",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, ZH.Yuanlin);
                  setState(() {
                    AStationText = "員林";
                  });
                },
                child: const Text(
                  "員林",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, ZH.Yongjing);
                  setState(() {
                    AStationText = "永靖";
                  });
                },
                child: const Text(
                  "永靖",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, ZH.Shetou);
                  setState(() {
                    AStationText = "社頭";
                  });
                },
                child: const Text(
                  "社頭",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, ZH.Tianzhong);
                  setState(() {
                    AStationText = "田中";
                  });
                },
                child: const Text(
                  "田中",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, ZH.Ershui);
                  setState(() {
                    AStationText = "二水";
                  });
                },
                child: const Text(
                  "二水",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
            ],
          );
        });
  }

  //NT---------------------------------------------------------------------------------------------------------------------------------------------------------------

  Future<void> NTDOpenDialog() async {
    return await showDialog(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            title: const Text("請選擇車站"),
            children: <Widget>[
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, NT.Yuanquan);
                  setState(() {
                    DStationText = "源泉";
                  });
                },
                child: const Text(
                  "源泉",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, NT.Zhuoshui);
                  setState(() {
                    DStationText = "濁水";
                  });
                },
                child: const Text(
                  "濁水",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, NT.Longquan);
                  setState(() {
                    DStationText = "龍泉";
                  });
                },
                child: const Text(
                  "龍泉",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, NT.Jiji);
                  setState(() {
                    DStationText = "集集";
                  });
                },
                child: const Text(
                  "集集",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, NT.Shuili);
                  setState(() {
                    DStationText = "水里";
                  });
                },
                child: const Text(
                  "水里",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, NT.Checheng);
                  setState(() {
                    DStationText = "車埕";
                  });
                },
                child: const Text(
                  "車埕",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
            ],
          );
        });
  }

  Future<void> NTAOpenDialog() async {
    return await showDialog(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            title: const Text("請選擇車站"),
            children: <Widget>[
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, NT.Yuanquan);
                  setState(() {
                    AStationText = "源泉";
                  });
                },
                child: const Text(
                  "源泉",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, NT.Zhuoshui);
                  setState(() {
                    AStationText = "濁水";
                  });
                },
                child: const Text(
                  "濁水",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, NT.Longquan);
                  setState(() {
                    AStationText = "龍泉";
                  });
                },
                child: const Text(
                  "龍泉",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, NT.Jiji);
                  setState(() {
                    AStationText = "集集";
                  });
                },
                child: const Text(
                  "集集",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, NT.Shuili);
                  setState(() {
                    AStationText = "水里";
                  });
                },
                child: const Text(
                  "水里",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, NT.Checheng);
                  setState(() {
                    AStationText = "車埕";
                  });
                },
                child: const Text(
                  "車埕",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
            ],
          );
        });
  }

  //YLN---------------------------------------------------------------------------------------------------------------------------------------------------------------

  Future<void> YLNDOpenDialog() async {
    return await showDialog(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            title: const Text("請選擇車站"),
            children: <Widget>[
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, YLN.Linnei);
                  setState(() {
                    DStationText = "林內";
                  });
                },
                child: const Text(
                  "林內",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, YLN.Shiliu);
                  setState(() {
                    DStationText = "石榴";
                  });
                },
                child: const Text(
                  "石榴",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, YLN.Douliu);
                  setState(() {
                    DStationText = "斗六";
                  });
                },
                child: const Text(
                  "斗六",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, YLN.Dounan);
                  setState(() {
                    DStationText = "斗南";
                  });
                },
                child: const Text(
                  "斗南",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, YLN.Shigui);
                  setState(() {
                    DStationText = "石龜";
                  });
                },
                child: const Text(
                  "石龜",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
            ],
          );
        });
  }

  Future<void> YLNAOpenDialog() async {
    return await showDialog(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            title: const Text("請選擇車站"),
            children: <Widget>[
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, YLN.Linnei);
                  setState(() {
                    AStationText = "林內";
                  });
                },
                child: const Text(
                  "林內",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, YLN.Shiliu);
                  setState(() {
                    AStationText = "石榴";
                  });
                },
                child: const Text(
                  "石榴",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, YLN.Douliu);
                  setState(() {
                    AStationText = "斗六";
                  });
                },
                child: const Text(
                  "斗六",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, YLN.Dounan);
                  setState(() {
                    AStationText = "斗南";
                  });
                },
                child: const Text(
                  "斗南",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, YLN.Shigui);
                  setState(() {
                    AStationText = "石龜";
                  });
                },
                child: const Text(
                  "石龜",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
            ],
          );
        });
  }

  //CY---------------------------------------------------------------------------------------------------------------------------------------------------------------

  Future<void> CYDOpenDialog() async {
    return await showDialog(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            title: const Text("請選擇車站"),
            children: <Widget>[
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, CY.Dalin);
                  setState(() {
                    DStationText = "大林";
                  });
                },
                child: const Text(
                  "大林",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, CY.Minxiong);
                  setState(() {
                    DStationText = "民雄";
                  });
                },
                child: const Text(
                  "民雄",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, CY.Jiabei);
                  setState(() {
                    DStationText = "嘉北";
                  });
                },
                child: const Text(
                  "嘉北",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, CY.Chiayi);
                  setState(() {
                    DStationText = "嘉義";
                  });
                },
                child: const Text(
                  "嘉義",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, CY.Shuishang);
                  setState(() {
                    DStationText = "水上";
                  });
                },
                child: const Text(
                  "水上",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, CY.Nanjing);
                  setState(() {
                    DStationText = "南靖";
                  });
                },
                child: const Text(
                  "南靖",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
            ],
          );
        });
  }

  Future<void> CYAOpenDialog() async {
    return await showDialog(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            title: const Text("請選擇車站"),
            children: <Widget>[
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, CY.Dalin);
                  setState(() {
                    AStationText = "大林";
                  });
                },
                child: const Text(
                  "大林",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, CY.Minxiong);
                  setState(() {
                    AStationText = "民雄";
                  });
                },
                child: const Text(
                  "民雄",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, CY.Jiabei);
                  setState(() {
                    AStationText = "嘉北";
                  });
                },
                child: const Text(
                  "嘉北",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, CY.Chiayi);
                  setState(() {
                    AStationText = "嘉義";
                  });
                },
                child: const Text(
                  "嘉義",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, CY.Shuishang);
                  setState(() {
                    AStationText = "水上";
                  });
                },
                child: const Text(
                  "水上",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, CY.Nanjing);
                  setState(() {
                    AStationText = "南靖";
                  });
                },
                child: const Text(
                  "南靖",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
            ],
          );
        });
  }

  //TN---------------------------------------------------------------------------------------------------------------------------------------------------------------

  Future<void> TNDOpenDialog() async {
    return await showDialog(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            title: const Text("請選擇車站"),
            children: <Widget>[
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TN.Houbi);
                  setState(() {
                    DStationText = "後壁";
                  });
                },
                child: const Text(
                  "後壁",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TN.Xinying);
                  setState(() {
                    DStationText = "新營";
                  });
                },
                child: const Text(
                  "新營",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TN.Liuying);
                  setState(() {
                    DStationText = "柳營";
                  });
                },
                child: const Text(
                  "柳營",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TN.Linfengying);
                  setState(() {
                    DStationText = "林鳳營";
                  });
                },
                child: const Text(
                  "林鳳營",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TN.Longtian);
                  setState(() {
                    DStationText = "隆田";
                  });
                },
                child: const Text(
                  "隆田",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TN.Balin);
                  setState(() {
                    DStationText = "拔林";
                  });
                },
                child: const Text(
                  "拔林",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TN.Shanhua);
                  setState(() {
                    DStationText = "善化";
                  });
                },
                child: const Text(
                  "善化",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TN.Nanke);
                  setState(() {
                    DStationText = "南科";
                  });
                },
                child: const Text(
                  "南科",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TN.Xinshi);
                  setState(() {
                    DStationText = "新市";
                  });
                },
                child: const Text(
                  "新市",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TN.Yongkang);
                  setState(() {
                    DStationText = "永康";
                  });
                },
                child: const Text(
                  "永康",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TN.Daqiao);
                  setState(() {
                    DStationText = "大橋";
                  });
                },
                child: const Text(
                  "大橋",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TN.Tainan);
                  setState(() {
                    DStationText = "臺南";
                  });
                },
                child: const Text(
                  "臺南",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TN.Baoan);
                  setState(() {
                    DStationText = "保安";
                  });
                },
                child: const Text(
                  "保安",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TN.Rende);
                  setState(() {
                    DStationText = "仁德";
                  });
                },
                child: const Text(
                  "仁德",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TN.Zhongzhou);
                  setState(() {
                    DStationText = "中洲";
                  });
                },
                child: const Text(
                  "中洲",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TN.ChangJungChristianUniversity);
                  setState(() {
                    DStationText = "長榮大學";
                  });
                },
                child: const Text(
                  "長榮大學",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TN.Shalun);
                  setState(() {
                    DStationText = "沙崙";
                  });
                },
                child: const Text(
                  "沙崙",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
            ],
          );
        });
  }

  Future<void> TNAOpenDialog() async {
    return await showDialog(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            title: const Text("請選擇車站"),
            children: <Widget>[
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TN.Houbi);
                  setState(() {
                    AStationText = "後壁";
                  });
                },
                child: const Text(
                  "後壁",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TN.Xinying);
                  setState(() {
                    AStationText = "新營";
                  });
                },
                child: const Text(
                  "新營",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TN.Liuying);
                  setState(() {
                    AStationText = "柳營";
                  });
                },
                child: const Text(
                  "柳營",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TN.Linfengying);
                  setState(() {
                    AStationText = "林鳳營";
                  });
                },
                child: const Text(
                  "林鳳營",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TN.Longtian);
                  setState(() {
                    AStationText = "隆田";
                  });
                },
                child: const Text(
                  "隆田",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TN.Balin);
                  setState(() {
                    AStationText = "拔林";
                  });
                },
                child: const Text(
                  "拔林",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TN.Shanhua);
                  setState(() {
                    AStationText = "善化";
                  });
                },
                child: const Text(
                  "善化",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TN.Nanke);
                  setState(() {
                    AStationText = "南科";
                  });
                },
                child: const Text(
                  "南科",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TN.Xinshi);
                  setState(() {
                    AStationText = "新市";
                  });
                },
                child: const Text(
                  "新市",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TN.Yongkang);
                  setState(() {
                    AStationText = "永康";
                  });
                },
                child: const Text(
                  "永康",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TN.Daqiao);
                  setState(() {
                    AStationText = "大橋";
                  });
                },
                child: const Text(
                  "大橋",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TN.Tainan);
                  setState(() {
                    AStationText = "臺南";
                  });
                },
                child: const Text(
                  "臺南",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TN.Baoan);
                  setState(() {
                    AStationText = "保安";
                  });
                },
                child: const Text(
                  "保安",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TN.Rende);
                  setState(() {
                    AStationText = "仁德";
                  });
                },
                child: const Text(
                  "仁德",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TN.Zhongzhou);
                  setState(() {
                    AStationText = "中洲";
                  });
                },
                child: const Text(
                  "中洲",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TN.ChangJungChristianUniversity);
                  setState(() {
                    AStationText = "長榮大學";
                  });
                },
                child: const Text(
                  "長榮大學",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TN.Shalun);
                  setState(() {
                    AStationText = "沙崙";
                  });
                },
                child: const Text(
                  "沙崙",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
            ],
          );
        });
  }

  //KS---------------------------------------------------------------------------------------------------------------------------------------------------------------

  Future<void> KSDOpenDialog() async {
    return await showDialog(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            title: const Text("請選擇車站"),
            children: <Widget>[
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, KS.Dahu);
                  setState(() {
                    DStationText = "大湖";
                  });
                },
                child: const Text(
                  "大湖",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, KS.Luzhu);
                  setState(() {
                    DStationText = "路竹";
                  });
                },
                child: const Text(
                  "路竹",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, KS.Gangshan);
                  setState(() {
                    DStationText = "岡山";
                  });
                },
                child: const Text(
                  "岡山",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, KS.Qiaotou);
                  setState(() {
                    DStationText = "橋頭";
                  });
                },
                child: const Text(
                  "橋頭",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, KS.Nanzi);
                  setState(() {
                    DStationText = "楠梓";
                  });
                },
                child: const Text(
                  "楠梓",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, KS.Xinzuoying);
                  setState(() {
                    DStationText = "新左營";
                  });
                },
                child: const Text(
                  "新左營",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, KS.Zuoying);
                  setState(() {
                    DStationText = "左營";
                  });
                },
                child: const Text(
                  "左營",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, KS.Neiwei);
                  setState(() {
                    DStationText = "內惟";
                  });
                },
                child: const Text(
                  "內惟",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, KS.MuseumofFineArts);
                  setState(() {
                    DStationText = "美術館";
                  });
                },
                child: const Text(
                  "美術館",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, KS.Gushan);
                  setState(() {
                    DStationText = "鼓山";
                  });
                },
                child: const Text(
                  "鼓山",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, KS.Sankuaicuo);
                  setState(() {
                    DStationText = "三塊厝";
                  });
                },
                child: const Text(
                  "三塊厝",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, KS.Kaohsiung);
                  setState(() {
                    DStationText = "高雄";
                  });
                },
                child: const Text(
                  "高雄",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, KS.Minzu);
                  setState(() {
                    DStationText = "民族";
                  });
                },
                child: const Text(
                  "民族",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, KS.ScienceAndTechnologyMuseum);
                  setState(() {
                    DStationText = "科工館";
                  });
                },
                child: const Text(
                  "科工館",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, KS.Zhengyi);
                  setState(() {
                    DStationText = "正義";
                  });
                },
                child: const Text(
                  "正義",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, KS.Fengshan);
                  setState(() {
                    DStationText = "鳳山";
                  });
                },
                child: const Text(
                  "鳳山",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, KS.Houzhuang);
                  setState(() {
                    DStationText = "後庄";
                  });
                },
                child: const Text(
                  "後庄",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, KS.Jiuqutang);
                  setState(() {
                    DStationText = "九曲堂";
                  });
                },
                child: const Text(
                  "九曲堂",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
            ],
          );
        });
  }

  Future<void> KSAOpenDialog() async {
    return await showDialog(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            title: const Text("請選擇車站"),
            children: <Widget>[
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, KS.Dahu);
                  setState(() {
                    AStationText = "大湖";
                  });
                },
                child: const Text(
                  "大湖",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, KS.Luzhu);
                  setState(() {
                    AStationText = "路竹";
                  });
                },
                child: const Text(
                  "路竹",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, KS.Gangshan);
                  setState(() {
                    AStationText = "岡山";
                  });
                },
                child: const Text(
                  "岡山",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, KS.Qiaotou);
                  setState(() {
                    AStationText = "橋頭";
                  });
                },
                child: const Text(
                  "橋頭",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, KS.Nanzi);
                  setState(() {
                    AStationText = "楠梓";
                  });
                },
                child: const Text(
                  "楠梓",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, KS.Xinzuoying);
                  setState(() {
                    AStationText = "新左營";
                  });
                },
                child: const Text(
                  "新左營",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, KS.Zuoying);
                  setState(() {
                    AStationText = "左營";
                  });
                },
                child: const Text(
                  "左營",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, KS.Neiwei);
                  setState(() {
                    AStationText = "內惟";
                  });
                },
                child: const Text(
                  "內惟",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, KS.MuseumofFineArts);
                  setState(() {
                    AStationText = "美術館";
                  });
                },
                child: const Text(
                  "美術館",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, KS.Gushan);
                  setState(() {
                    AStationText = "鼓山";
                  });
                },
                child: const Text(
                  "鼓山",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, KS.Sankuaicuo);
                  setState(() {
                    AStationText = "三塊厝";
                  });
                },
                child: const Text(
                  "三塊厝",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, KS.Kaohsiung);
                  setState(() {
                    AStationText = "高雄";
                  });
                },
                child: const Text(
                  "高雄",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, KS.Minzu);
                  setState(() {
                    AStationText = "民族";
                  });
                },
                child: const Text(
                  "民族",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, KS.ScienceAndTechnologyMuseum);
                  setState(() {
                    AStationText = "科工館";
                  });
                },
                child: const Text(
                  "科工館",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, KS.Zhengyi);
                  setState(() {
                    AStationText = "正義";
                  });
                },
                child: const Text(
                  "正義",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, KS.Fengshan);
                  setState(() {
                    AStationText = "鳳山";
                  });
                },
                child: const Text(
                  "鳳山",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, KS.Houzhuang);
                  setState(() {
                    AStationText = "後庄";
                  });
                },
                child: const Text(
                  "後庄",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, KS.Jiuqutang);
                  setState(() {
                    AStationText = "九曲堂";
                  });
                },
                child: const Text(
                  "九曲堂",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
            ],
          );
        });
  }

  //PD---------------------------------------------------------------------------------------------------------------------------------------------------------------

  Future<void> PDDOpenDialog() async {
    return await showDialog(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            title: const Text("請選擇車站"),
            children: <Widget>[
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, PD.Liukuaicuo);
                  setState(() {
                    DStationText = "六塊厝";
                  });
                },
                child: const Text(
                  "六塊厝",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, PD.Pingtung);
                  setState(() {
                    DStationText = "屏東";
                  });
                },
                child: const Text(
                  "屏東",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, PD.Guilai);
                  setState(() {
                    DStationText = "歸來";
                  });
                },
                child: const Text(
                  "歸來",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, PD.Linluo);
                  setState(() {
                    DStationText = "麟洛";
                  });
                },
                child: const Text(
                  "麟洛",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, PD.Xishi);
                  setState(() {
                    DStationText = "西勢";
                  });
                },
                child: const Text(
                  "西勢",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, PD.Zhutian);
                  setState(() {
                    DStationText = "竹田";
                  });
                },
                child: const Text(
                  "竹田",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, PD.Chaozhou);
                  setState(() {
                    DStationText = "潮州";
                  });
                },
                child: const Text(
                  "潮州",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, PD.Kanding);
                  setState(() {
                    DStationText = "崁頂";
                  });
                },
                child: const Text(
                  "崁頂",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, PD.Nanzhou);
                  setState(() {
                    DStationText = "南州";
                  });
                },
                child: const Text(
                  "南州",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, PD.Zhenan);
                  setState(() {
                    DStationText = "鎮安";
                  });
                },
                child: const Text(
                  "鎮安",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, PD.Linbian);
                  setState(() {
                    DStationText = "林邊";
                  });
                },
                child: const Text(
                  "林邊",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, PD.Jiadong);
                  setState(() {
                    DStationText = "佳冬";
                  });
                },
                child: const Text(
                  "佳冬",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, PD.Donghai);
                  setState(() {
                    DStationText = "東海";
                  });
                },
                child: const Text(
                  "東海",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, PD.Fangliao);
                  setState(() {
                    DStationText = "枋寮";
                  });
                },
                child: const Text(
                  "枋寮",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, PD.Jialu);
                  setState(() {
                    DStationText = "加祿";
                  });
                },
                child: const Text(
                  "加祿",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, PD.Neishi);
                  setState(() {
                    DStationText = "內獅";
                  });
                },
                child: const Text(
                  "內獅",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, PD.Fangshan);
                  setState(() {
                    DStationText = "枋山";
                  });
                },
                child: const Text(
                  "枋山",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
            ],
          );
        });
  }

  Future<void> PDAOpenDialog() async {
    return await showDialog(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            title: const Text("請選擇車站"),
            children: <Widget>[
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, PD.Liukuaicuo);
                  setState(() {
                    AStationText = "六塊厝";
                  });
                },
                child: const Text(
                  "六塊厝",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, PD.Pingtung);
                  setState(() {
                    AStationText = "屏東";
                  });
                },
                child: const Text(
                  "屏東",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, PD.Guilai);
                  setState(() {
                    AStationText = "歸來";
                  });
                },
                child: const Text(
                  "歸來",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, PD.Linluo);
                  setState(() {
                    AStationText = "麟洛";
                  });
                },
                child: const Text(
                  "麟洛",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, PD.Xishi);
                  setState(() {
                    AStationText = "西勢";
                  });
                },
                child: const Text(
                  "西勢",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, PD.Zhutian);
                  setState(() {
                    AStationText = "竹田";
                  });
                },
                child: const Text(
                  "竹田",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, PD.Chaozhou);
                  setState(() {
                    AStationText = "潮州";
                  });
                },
                child: const Text(
                  "潮州",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, PD.Kanding);
                  setState(() {
                    AStationText = "崁頂";
                  });
                },
                child: const Text(
                  "崁頂",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, PD.Nanzhou);
                  setState(() {
                    AStationText = "南州";
                  });
                },
                child: const Text(
                  "南州",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, PD.Zhenan);
                  setState(() {
                    AStationText = "鎮安";
                  });
                },
                child: const Text(
                  "鎮安",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, PD.Linbian);
                  setState(() {
                    AStationText = "林邊";
                  });
                },
                child: const Text(
                  "林邊",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, PD.Jiadong);
                  setState(() {
                    AStationText = "佳冬";
                  });
                },
                child: const Text(
                  "佳冬",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, PD.Donghai);
                  setState(() {
                    AStationText = "東海";
                  });
                },
                child: const Text(
                  "東海",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, PD.Fangliao);
                  setState(() {
                    AStationText = "枋寮";
                  });
                },
                child: const Text(
                  "枋寮",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, PD.Jialu);
                  setState(() {
                    AStationText = "加祿";
                  });
                },
                child: const Text(
                  "加祿",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, PD.Neishi);
                  setState(() {
                    AStationText = "內獅";
                  });
                },
                child: const Text(
                  "內獅",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, PD.Fangshan);
                  setState(() {
                    AStationText = "枋山";
                  });
                },
                child: const Text(
                  "枋山",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
            ],
          );
        });
  }

  //YLG---------------------------------------------------------------------------------------------------------------------------------------------------------------

  Future<void> YLGDOpenDialog() async {
    return await showDialog(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            title: const Text("請選擇車站"),
            children: <Widget>[
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, YLG.Hanben);
                  setState(() {
                    DStationText = "漢本";
                  });
                },
                child: const Text(
                  "漢本",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, YLG.Wuta);
                  setState(() {
                    DStationText = "武塔";
                  });
                },
                child: const Text(
                  "武塔",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, YLG.Nanao);
                  setState(() {
                    DStationText = "南澳";
                  });
                },
                child: const Text(
                  "南澳",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, YLG.Dongao);
                  setState(() {
                    DStationText = "東澳";
                  });
                },
                child: const Text(
                  "東澳",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, YLG.Yongle);
                  setState(() {
                    DStationText = "永樂";
                  });
                },
                child: const Text(
                  "永樂",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, YLG.Suao);
                  setState(() {
                    DStationText = "蘇澳";
                  });
                },
                child: const Text(
                  "蘇澳",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, YLG.Suaoxin);
                  setState(() {
                    DStationText = "蘇澳新";
                  });
                },
                child: const Text(
                  "蘇澳新",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, YLG.Xinma);
                  setState(() {
                    DStationText = "新馬";
                  });
                },
                child: const Text(
                  "新馬",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, YLG.Dongshan);
                  setState(() {
                    DStationText = "冬山";
                  });
                },
                child: const Text(
                  "冬山",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, YLG.Luodong);
                  setState(() {
                    DStationText = "羅東";
                  });
                },
                child: const Text(
                  "羅東",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, YLG.Zhongli);
                  setState(() {
                    DStationText = "中里";
                  });
                },
                child: const Text(
                  "中里",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, YLG.Erjie);
                  setState(() {
                    DStationText = "二結";
                  });
                },
                child: const Text(
                  "二結",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, YLG.Yilan);
                  setState(() {
                    DStationText = "宜蘭";
                  });
                },
                child: const Text(
                  "宜蘭",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, YLG.Shicheng);
                  setState(() {
                    DStationText = "四城";
                  });
                },
                child: const Text(
                  "四城",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, YLG.Jiaoxi);
                  setState(() {
                    DStationText = "礁溪";
                  });
                },
                child: const Text(
                  "礁溪",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, YLG.Dingpu);
                  setState(() {
                    DStationText = "頂埔";
                  });
                },
                child: const Text(
                  "頂埔",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, YLG.Toucheng);
                  setState(() {
                    DStationText = "頭城";
                  });
                },
                child: const Text(
                  "頭城",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, YLG.Waiao);
                  setState(() {
                    DStationText = "外澳";
                  });
                },
                child: const Text(
                  "外澳",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, YLG.Guishan);
                  setState(() {
                    DStationText = "龜山";
                  });
                },
                child: const Text(
                  "龜山",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, YLG.Daxi);
                  setState(() {
                    DStationText = "大溪";
                  });
                },
                child: const Text(
                  "大溪",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, YLG.Dali);
                  setState(() {
                    DStationText = "大里";
                  });
                },
                child: const Text(
                  "大里",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, YLG.Shicheng);
                  setState(() {
                    DStationText = "石城";
                  });
                },
                child: const Text(
                  "石城",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
            ],
          );
        });
  }

  Future<void> YLGAOpenDialog() async {
    return await showDialog(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            title: const Text("請選擇車站"),
            children: <Widget>[
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, YLG.Hanben);
                  setState(() {
                    AStationText = "漢本";
                  });
                },
                child: const Text(
                  "漢本",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, YLG.Wuta);
                  setState(() {
                    AStationText = "武塔";
                  });
                },
                child: const Text(
                  "武塔",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, YLG.Nanao);
                  setState(() {
                    AStationText = "南澳";
                  });
                },
                child: const Text(
                  "南澳",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, YLG.Dongao);
                  setState(() {
                    AStationText = "東澳";
                  });
                },
                child: const Text(
                  "東澳",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, YLG.Yongle);
                  setState(() {
                    AStationText = "永樂";
                  });
                },
                child: const Text(
                  "永樂",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, YLG.Suao);
                  setState(() {
                    AStationText = "蘇澳";
                  });
                },
                child: const Text(
                  "蘇澳",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, YLG.Suaoxin);
                  setState(() {
                    AStationText = "蘇澳新";
                  });
                },
                child: const Text(
                  "蘇澳新",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, YLG.Xinma);
                  setState(() {
                    AStationText = "新馬";
                  });
                },
                child: const Text(
                  "新馬",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, YLG.Dongshan);
                  setState(() {
                    AStationText = "冬山";
                  });
                },
                child: const Text(
                  "冬山",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, YLG.Luodong);
                  setState(() {
                    AStationText = "羅東";
                  });
                },
                child: const Text(
                  "羅東",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, YLG.Zhongli);
                  setState(() {
                    AStationText = "中里";
                  });
                },
                child: const Text(
                  "中里",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, YLG.Erjie);
                  setState(() {
                    AStationText = "二結";
                  });
                },
                child: const Text(
                  "二結",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, YLG.Yilan);
                  setState(() {
                    AStationText = "宜蘭";
                  });
                },
                child: const Text(
                  "宜蘭",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, YLG.Shicheng);
                  setState(() {
                    AStationText = "四城";
                  });
                },
                child: const Text(
                  "四城",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, YLG.Jiaoxi);
                  setState(() {
                    AStationText = "礁溪";
                  });
                },
                child: const Text(
                  "礁溪",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, YLG.Dingpu);
                  setState(() {
                    AStationText = "頂埔";
                  });
                },
                child: const Text(
                  "頂埔",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, YLG.Toucheng);
                  setState(() {
                    AStationText = "頭城";
                  });
                },
                child: const Text(
                  "頭城",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, YLG.Waiao);
                  setState(() {
                    AStationText = "外澳";
                  });
                },
                child: const Text(
                  "外澳",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, YLG.Guishan);
                  setState(() {
                    AStationText = "龜山";
                  });
                },
                child: const Text(
                  "龜山",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, YLG.Daxi);
                  setState(() {
                    AStationText = "大溪";
                  });
                },
                child: const Text(
                  "大溪",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, YLG.Dali);
                  setState(() {
                    AStationText = "大里";
                  });
                },
                child: const Text(
                  "大里",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, YLG.Shicheng);
                  setState(() {
                    AStationText = "石城";
                  });
                },
                child: const Text(
                  "石城",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
            ],
          );
        });
  }

  //HL---------------------------------------------------------------------------------------------------------------------------------------------------------------

  Future<void> HLDOpenDialog() async {
    return await showDialog(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            title: const Text("請選擇車站"),
            children: <Widget>[
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, HL.Fuli);
                  setState(() {
                    DStationText = "富里";
                  });
                },
                child: const Text(
                  "富里",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, HL.Dongzhu);
                  setState(() {
                    DStationText = "東竹";
                  });
                },
                child: const Text(
                  "東竹",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, HL.Dongli);
                  setState(() {
                    DStationText = "東里";
                  });
                },
                child: const Text(
                  "東里",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, HL.Yuli);
                  setState(() {
                    DStationText = "玉里";
                  });
                },
                child: const Text(
                  "玉里",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, HL.Sanmin);
                  setState(() {
                    DStationText = "三民";
                  });
                },
                child: const Text(
                  "三民",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, HL.Ruisui);
                  setState(() {
                    DStationText = "瑞穗";
                  });
                },
                child: const Text(
                  "瑞穗",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, HL.Fuyuan);
                  setState(() {
                    DStationText = "富源";
                  });
                },
                child: const Text(
                  "富源",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, HL.Dafu);
                  setState(() {
                    DStationText = "大富";
                  });
                },
                child: const Text(
                  "大富",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, HL.Guangfu);
                  setState(() {
                    DStationText = "光復";
                  });
                },
                child: const Text(
                  "光復",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, HL.Wanrong);
                  setState(() {
                    DStationText = "萬榮";
                  });
                },
                child: const Text(
                  "萬榮",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, HL.Fenglin);
                  setState(() {
                    DStationText = "鳳林";
                  });
                },
                child: const Text(
                  "鳳林",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, HL.Nanping);
                  setState(() {
                    DStationText = "南平";
                  });
                },
                child: const Text(
                  "南平",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, HL.LinrongShinKong);
                  setState(() {
                    DStationText = "林榮新光";
                  });
                },
                child: const Text(
                  "林榮新光",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, HL.Fengtian);
                  setState(() {
                    DStationText = "豐田";
                  });
                },
                child: const Text(
                  "豐田",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, HL.Shoufeng);
                  setState(() {
                    DStationText = "壽豐";
                  });
                },
                child: const Text(
                  "壽豐",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, HL.Pinghe);
                  setState(() {
                    DStationText = "平和";
                  });
                },
                child: const Text(
                  "平和",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, HL.Zhixue);
                  setState(() {
                    DStationText = "志學";
                  });
                },
                child: const Text(
                  "志學",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, HL.Jian);
                  setState(() {
                    DStationText = "吉安";
                  });
                },
                child: const Text(
                  "吉安",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, HL.Hualien);
                  setState(() {
                    DStationText = "花蓮";
                  });
                },
                child: const Text(
                  "花蓮",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, HL.Beipu);
                  setState(() {
                    DStationText = "北埔";
                  });
                },
                child: const Text(
                  "北埔",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, HL.Jingmei);
                  setState(() {
                    DStationText = "景美";
                  });
                },
                child: const Text(
                  "景美",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, HL.Xincheng);
                  setState(() {
                    DStationText = "新城";
                  });
                },
                child: const Text(
                  "新城",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, HL.Chongde);
                  setState(() {
                    DStationText = "崇德";
                  });
                },
                child: const Text(
                  "崇德",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, HL.Heren);
                  setState(() {
                    DStationText = "和仁";
                  });
                },
                child: const Text(
                  "和仁",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, HL.Heping);
                  setState(() {
                    DStationText = "和平";
                  });
                },
                child: const Text(
                  "和平",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
            ],
          );
        });
  }

  Future<void> HLAOpenDialog() async {
    return await showDialog(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            title: const Text("請選擇車站"),
            children: <Widget>[
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, HL.Fuli);
                  setState(() {
                    AStationText = "富里";
                  });
                },
                child: const Text(
                  "富里",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, HL.Dongzhu);
                  setState(() {
                    AStationText = "東竹";
                  });
                },
                child: const Text(
                  "東竹",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, HL.Dongli);
                  setState(() {
                    AStationText = "東里";
                  });
                },
                child: const Text(
                  "東里",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, HL.Yuli);
                  setState(() {
                    AStationText = "玉里";
                  });
                },
                child: const Text(
                  "玉里",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, HL.Sanmin);
                  setState(() {
                    AStationText = "三民";
                  });
                },
                child: const Text(
                  "三民",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, HL.Ruisui);
                  setState(() {
                    AStationText = "瑞穗";
                  });
                },
                child: const Text(
                  "瑞穗",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, HL.Fuyuan);
                  setState(() {
                    AStationText = "富源";
                  });
                },
                child: const Text(
                  "富源",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, HL.Dafu);
                  setState(() {
                    AStationText = "大富";
                  });
                },
                child: const Text(
                  "大富",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, HL.Guangfu);
                  setState(() {
                    AStationText = "光復";
                  });
                },
                child: const Text(
                  "光復",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, HL.Wanrong);
                  setState(() {
                    AStationText = "萬榮";
                  });
                },
                child: const Text(
                  "萬榮",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, HL.Fenglin);
                  setState(() {
                    AStationText = "鳳林";
                  });
                },
                child: const Text(
                  "鳳林",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, HL.Nanping);
                  setState(() {
                    AStationText = "南平";
                  });
                },
                child: const Text(
                  "南平",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, HL.LinrongShinKong);
                  setState(() {
                    AStationText = "林榮新光";
                  });
                },
                child: const Text(
                  "林榮新光",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, HL.Fengtian);
                  setState(() {
                    AStationText = "豐田";
                  });
                },
                child: const Text(
                  "豐田",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, HL.Shoufeng);
                  setState(() {
                    AStationText = "壽豐";
                  });
                },
                child: const Text(
                  "壽豐",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, HL.Pinghe);
                  setState(() {
                    AStationText = "平和";
                  });
                },
                child: const Text(
                  "平和",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, HL.Zhixue);
                  setState(() {
                    AStationText = "志學";
                  });
                },
                child: const Text(
                  "志學",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, HL.Jian);
                  setState(() {
                    AStationText = "吉安";
                  });
                },
                child: const Text(
                  "吉安",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, HL.Hualien);
                  setState(() {
                    AStationText = "花蓮";
                  });
                },
                child: const Text(
                  "花蓮",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, HL.Beipu);
                  setState(() {
                    AStationText = "北埔";
                  });
                },
                child: const Text(
                  "北埔",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, HL.Jingmei);
                  setState(() {
                    AStationText = "景美";
                  });
                },
                child: const Text(
                  "景美",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, HL.Xincheng);
                  setState(() {
                    AStationText = "新城";
                  });
                },
                child: const Text(
                  "新城",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, HL.Chongde);
                  setState(() {
                    AStationText = "崇德";
                  });
                },
                child: const Text(
                  "崇德",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, HL.Heren);
                  setState(() {
                    AStationText = "和仁";
                  });
                },
                child: const Text(
                  "和仁",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, HL.Heping);
                  setState(() {
                    AStationText = "和平";
                  });
                },
                child: const Text(
                  "和平",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
            ],
          );
        });
  }

  //TD---------------------------------------------------------------------------------------------------------------------------------------------------------------

  Future<void> TDDOpenDialog() async {
    return await showDialog(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            title: const Text("請選擇車站"),
            children: <Widget>[
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TD.Dawu);
                  setState(() {
                    DStationText = "大武";
                  });
                },
                child: const Text(
                  "大武",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TD.Longxi);
                  setState(() {
                    DStationText = "瀧溪";
                  });
                },
                child: const Text(
                  "瀧溪",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TD.Jinlun);
                  setState(() {
                    DStationText = "金崙";
                  });
                },
                child: const Text(
                  "金崙",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TD.Taimali);
                  setState(() {
                    DStationText = "太麻里";
                  });
                },
                child: const Text(
                  "太麻里",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TD.Zhiben);
                  setState(() {
                    DStationText = "知本";
                  });
                },
                child: const Text(
                  "知本",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TD.Kangle);
                  setState(() {
                    DStationText = "康樂";
                  });
                },
                child: const Text(
                  "康樂",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TD.Taitung);
                  setState(() {
                    DStationText = "臺東";
                  });
                },
                child: const Text(
                  "臺東",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TD.Shanli);
                  setState(() {
                    DStationText = "山里";
                  });
                },
                child: const Text(
                  "山里",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TD.Luye);
                  setState(() {
                    DStationText = "鹿野";
                  });
                },
                child: const Text(
                  "鹿野",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TD.Ruiyuan);
                  setState(() {
                    DStationText = "瑞源";
                  });
                },
                child: const Text(
                  "瑞源",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TD.Ruihe);
                  setState(() {
                    DStationText = "瑞和";
                  });
                },
                child: const Text(
                  "瑞和",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TD.Guanshan);
                  setState(() {
                    DStationText = "關山";
                  });
                },
                child: const Text(
                  "關山",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TD.Haiduan);
                  setState(() {
                    DStationText = "海端";
                  });
                },
                child: const Text(
                  "海端",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TD.Chishang);
                  setState(() {
                    DStationText = "池上";
                  });
                },
                child: const Text(
                  "池上",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
            ],
          );
        });
  }

  Future<void> TDAOpenDialog() async {
    return await showDialog(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            title: const Text("請選擇車站"),
            children: <Widget>[
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TD.Dawu);
                  setState(() {
                    AStationText = "大武";
                  });
                },
                child: const Text(
                  "大武",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TD.Longxi);
                  setState(() {
                    AStationText = "瀧溪";
                  });
                },
                child: const Text(
                  "瀧溪",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TD.Jinlun);
                  setState(() {
                    AStationText = "金崙";
                  });
                },
                child: const Text(
                  "金崙",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TD.Taimali);
                  setState(() {
                    AStationText = "太麻里";
                  });
                },
                child: const Text(
                  "太麻里",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TD.Zhiben);
                  setState(() {
                    AStationText = "知本";
                  });
                },
                child: const Text(
                  "知本",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TD.Kangle);
                  setState(() {
                    AStationText = "康樂";
                  });
                },
                child: const Text(
                  "康樂",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TD.Taitung);
                  setState(() {
                    AStationText = "臺東";
                  });
                },
                child: const Text(
                  "臺東",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TD.Shanli);
                  setState(() {
                    AStationText = "山里";
                  });
                },
                child: const Text(
                  "山里",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TD.Luye);
                  setState(() {
                    AStationText = "鹿野";
                  });
                },
                child: const Text(
                  "鹿野",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TD.Ruiyuan);
                  setState(() {
                    AStationText = "瑞源";
                  });
                },
                child: const Text(
                  "瑞源",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TD.Ruihe);
                  setState(() {
                    AStationText = "瑞和";
                  });
                },
                child: const Text(
                  "瑞和",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TD.Guanshan);
                  setState(() {
                    AStationText = "關山";
                  });
                },
                child: const Text(
                  "關山",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TD.Haiduan);
                  setState(() {
                    AStationText = "海端";
                  });
                },
                child: const Text(
                  "海端",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, TD.Chishang);
                  setState(() {
                    AStationText = "池上";
                  });
                },
                child: const Text(
                  "池上",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
            ],
          );
        });
  }

  //PS---------------------------------------------------------------------------------------------------------------------------------------------------------------

  Future<void> PSDOpenDialog() async {
    return await showDialog(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            title: const Text("請選擇車站"),
            children: <Widget>[
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, EPS.Ruifang);
                  setState(() {
                    DStationText = "瑞芳";
                  });
                },
                child: const Text(
                  "瑞芳",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, EPS.Houtong);
                  setState(() {
                    DStationText = "猴硐";
                  });
                },
                child: const Text(
                  "猴硐",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, EPS.Sandiaoling);
                  setState(() {
                    DStationText = "三貂嶺";
                  });
                },
                child: const Text(
                  "三貂嶺",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, EPS.Jingtong);
                  setState(() {
                    DStationText = "菁桐";
                  });
                },
                child: const Text(
                  "菁桐",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, EPS.Pingxi);
                  setState(() {
                    DStationText = "平溪";
                  });
                },
                child: const Text(
                  "平溪",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, EPS.Lingjiao);
                  setState(() {
                    DStationText = "嶺腳";
                  });
                },
                child: const Text(
                  "嶺腳",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, EPS.Wanggu);
                  setState(() {
                    DStationText = "望古";
                  });
                },
                child: const Text(
                  "望古",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, EPS.Shifen);
                  setState(() {
                    DStationText = "十分";
                  });
                },
                child: const Text(
                  "十分",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, EPS.Dahua);
                  setState(() {
                    DStationText = "大華";
                  });
                },
                child: const Text(
                  "大華",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, EPS.Haikeguan);
                  setState(() {
                    DStationText = "海科館";
                  });
                },
                child: const Text(
                  "海科館",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, EPS.Badouzi);
                  setState(() {
                    DStationText = "八斗子";
                  });
                },
                child: const Text(
                  "八斗子",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
            ],
          );
        });
  }

  Future<void> PSAOpenDialog() async {
    return await showDialog(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            title: const Text("請選擇車站"),
            children: <Widget>[
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, EPS.Ruifang);
                  setState(() {
                    AStationText = "瑞芳";
                  });
                },
                child: const Text(
                  "瑞芳",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, EPS.Houtong);
                  setState(() {
                    AStationText = "猴硐";
                  });
                },
                child: const Text(
                  "猴硐",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, EPS.Sandiaoling);
                  setState(() {
                    AStationText = "三貂嶺";
                  });
                },
                child: const Text(
                  "三貂嶺",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, EPS.Jingtong);
                  setState(() {
                    AStationText = "菁桐";
                  });
                },
                child: const Text(
                  "菁桐",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, EPS.Pingxi);
                  setState(() {
                    AStationText = "平溪";
                  });
                },
                child: const Text(
                  "平溪",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, EPS.Lingjiao);
                  setState(() {
                    AStationText = "嶺腳";
                  });
                },
                child: const Text(
                  "嶺腳",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, EPS.Wanggu);
                  setState(() {
                    AStationText = "望古";
                  });
                },
                child: const Text(
                  "望古",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, EPS.Shifen);
                  setState(() {
                    AStationText = "十分";
                  });
                },
                child: const Text(
                  "十分",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, EPS.Dahua);
                  setState(() {
                    AStationText = "大華";
                  });
                },
                child: const Text(
                  "大華",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, EPS.Haikeguan);
                  setState(() {
                    AStationText = "海科館";
                  });
                },
                child: const Text(
                  "海科館",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, EPS.Badouzi);
                  setState(() {
                    AStationText = "八斗子";
                  });
                },
                child: const Text(
                  "八斗子",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
            ],
          );
        });
  }

  //NL---------------------------------------------------------------------------------------------------------------------------------------------------------------

  Future<void> NLDOpenDialog() async {
    return await showDialog(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            title: const Text("請選擇車站"),
            children: <Widget>[
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, ENL.Hsinchu);
                  setState(() {
                    DStationText = "新竹";
                  });
                },
                child: const Text(
                  "新竹",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, ENL.NorthHsinchu);
                  setState(() {
                    DStationText = "北新竹";
                  });
                },
                child: const Text(
                  "北新竹",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, ENL.Qianjia);
                  setState(() {
                    DStationText = "千甲";
                  });
                },
                child: const Text(
                  "千甲",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, ENL.Xinzhuang);
                  setState(() {
                    DStationText = "新莊";
                  });
                },
                child: const Text(
                  "新莊",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, ENL.Zhuzhong);
                  setState(() {
                    DStationText = "竹中";
                  });
                },
                child: const Text(
                  "竹中",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, ENL.Liujia);
                  setState(() {
                    DStationText = "六家";
                  });
                },
                child: const Text(
                  "六家",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, ENL.Shangyuan);
                  setState(() {
                    DStationText = "上員";
                  });
                },
                child: const Text(
                  "上員",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, ENL.Ronghua);
                  setState(() {
                    DStationText = "榮華";
                  });
                },
                child: const Text(
                  "榮華",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, ENL.Zhudong);
                  setState(() {
                    DStationText = "竹東";
                  });
                },
                child: const Text(
                  "竹東",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, ENL.Hengshan);
                  setState(() {
                    DStationText = "橫山";
                  });
                },
                child: const Text(
                  "橫山",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, ENL.Jiuzantou);
                  setState(() {
                    DStationText = "九讚頭";
                  });
                },
                child: const Text(
                  "九讚頭",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, ENL.Hexing);
                  setState(() {
                    DStationText = "合興";
                  });
                },
                child: const Text(
                  "合興",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, ENL.Fugui);
                  setState(() {
                    DStationText = "富貴";
                  });
                },
                child: const Text(
                  "富貴",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, ENL.Neiwan);
                  setState(() {
                    DStationText = "內灣";
                  });
                },
                child: const Text(
                  "內灣",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
            ],
          );
        });
  }

  Future<void> NLAOpenDialog() async {
    return await showDialog(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            title: const Text("請選擇車站"),
            children: <Widget>[
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, ENL.Hsinchu);
                  setState(() {
                    AStationText = "新竹";
                  });
                },
                child: const Text(
                  "新竹",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, ENL.NorthHsinchu);
                  setState(() {
                    AStationText = "北新竹";
                  });
                },
                child: const Text(
                  "北新竹",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, ENL.Qianjia);
                  setState(() {
                    AStationText = "千甲";
                  });
                },
                child: const Text(
                  "千甲",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, ENL.Xinzhuang);
                  setState(() {
                    AStationText = "新莊";
                  });
                },
                child: const Text(
                  "新莊",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, ENL.Zhuzhong);
                  setState(() {
                    AStationText = "竹中";
                  });
                },
                child: const Text(
                  "竹中",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, ENL.Liujia);
                  setState(() {
                    AStationText = "六家";
                  });
                },
                child: const Text(
                  "六家",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, ENL.Shangyuan);
                  setState(() {
                    AStationText = "上員";
                  });
                },
                child: const Text(
                  "上員",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, ENL.Ronghua);
                  setState(() {
                    AStationText = "榮華";
                  });
                },
                child: const Text(
                  "榮華",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, ENL.Zhudong);
                  setState(() {
                    AStationText = "竹東";
                  });
                },
                child: const Text(
                  "竹東",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, ENL.Hengshan);
                  setState(() {
                    AStationText = "橫山";
                  });
                },
                child: const Text(
                  "橫山",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, ENL.Jiuzantou);
                  setState(() {
                    AStationText = "九讚頭";
                  });
                },
                child: const Text(
                  "九讚頭",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, ENL.Hexing);
                  setState(() {
                    AStationText = "合興";
                  });
                },
                child: const Text(
                  "合興",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, ENL.Fugui);
                  setState(() {
                    AStationText = "富貴";
                  });
                },
                child: const Text(
                  "富貴",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, ENL.Neiwan);
                  setState(() {
                    AStationText = "內灣";
                  });
                },
                child: const Text(
                  "內灣",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
            ],
          );
        });
  }

  //GG---------------------------------------------------------------------------------------------------------------------------------------------------------------

  Future<void> GGDOpenDialog() async {
    return await showDialog(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            title: const Text("請選擇車站"),
            children: <Widget>[
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, GG.Ershui);
                  setState(() {
                    DStationText = "二水";
                  });
                },
                child: const Text(
                  "二水",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, GG.Yuanquan);
                  setState(() {
                    DStationText = "源泉";
                  });
                },
                child: const Text(
                  "源泉",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, GG.Zhuoshui);
                  setState(() {
                    DStationText = "濁水";
                  });
                },
                child: const Text(
                  "濁水",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, GG.Longquan);
                  setState(() {
                    DStationText = "龍泉";
                  });
                },
                child: const Text(
                  "龍泉",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, GG.Jiji);
                  setState(() {
                    DStationText = "集集";
                  });
                },
                child: const Text(
                  "集集",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, GG.Shuili);
                  setState(() {
                    DStationText = "水里";
                  });
                },
                child: const Text(
                  "水里",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, GG.Checheng);
                  setState(() {
                    DStationText = "車埕";
                  });
                },
                child: const Text(
                  "車埕",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
            ],
          );
        });
  }

  Future<void> GGAOpenDialog() async {
    return await showDialog(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            title: const Text("請選擇車站"),
            children: <Widget>[
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, GG.Ershui);
                  setState(() {
                    AStationText = "二水";
                  });
                },
                child: const Text(
                  "二水",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, GG.Yuanquan);
                  setState(() {
                    AStationText = "源泉";
                  });
                },
                child: const Text(
                  "源泉",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, GG.Zhuoshui);
                  setState(() {
                    AStationText = "濁水";
                  });
                },
                child: const Text(
                  "濁水",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, GG.Longquan);
                  setState(() {
                    AStationText = "龍泉";
                  });
                },
                child: const Text(
                  "龍泉",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, GG.Jiji);
                  setState(() {
                    AStationText = "集集";
                  });
                },
                child: const Text(
                  "集集",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, GG.Shuili);
                  setState(() {
                    AStationText = "水里";
                  });
                },
                child: const Text(
                  "水里",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, GG.Checheng);
                  setState(() {
                    AStationText = "車埕";
                  });
                },
                child: const Text(
                  "車埕",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
            ],
          );
        });
  }

  //SL---------------------------------------------------------------------------------------------------------------------------------------------------------------

  Future<void> SLDOpenDialog() async {
    return await showDialog(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            title: const Text("請選擇車站"),
            children: <Widget>[
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, SL.Zhongzhou);
                  setState(() {
                    DStationText = "中洲";
                  });
                },
                child: const Text(
                  "中洲",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, SL.ChangJungChristianUniversity);
                  setState(() {
                    DStationText = "長榮大學";
                  });
                },
                child: const Text(
                  "長榮大學",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, SL.Shalun);
                  setState(() {
                    DStationText = "沙崙";
                  });
                },
                child: const Text(
                  "沙崙",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
            ],
          );
        });
  }

  Future<void> SLAOpenDialog() async {
    return await showDialog(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            title: const Text("請選擇車站"),
            children: <Widget>[
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, SL.Zhongzhou);
                  setState(() {
                    AStationText = "中洲";
                  });
                },
                child: const Text(
                  "中洲",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, SL.ChangJungChristianUniversity);
                  setState(() {
                    AStationText = "長榮大學";
                  });
                },
                child: const Text(
                  "長榮大學",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, SL.Shalun);
                  setState(() {
                    AStationText = "沙崙";
                  });
                },
                child: const Text(
                  "沙崙",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
            ],
          );
        });
  }

  //DA---------------------------------------------------------------------------------------------------------------------------------------------------------------

  Future<void> DOpenDialog() async {
    return await showDialog(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            title: const Text("請選擇地區"),
            children: <Widget>[
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, Areas.Taipei);
                  TPDOpenDialog();
                },
                child: const Text(
                  "北北基地區",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, Areas.Taoyuan);
                  TYDOpenDialog();
                },
                child: const Text(
                  "桃園地區",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, Areas.Xinchu);
                  XCDOpenDialog();
                },
                child: const Text(
                  "新竹地區",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, Areas.Miaoli);
                  MLDOpenDialog();
                },
                child: const Text(
                  "苗栗地區",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, Areas.Taichung);
                  TCDOpenDialog();
                },
                child: const Text(
                  "臺中地區",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, Areas.Zhanghua);
                  ZHDOpenDialog();
                },
                child: const Text(
                  "彰化地區",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, Areas.Nantou);
                  NTDOpenDialog();
                },
                child: const Text(
                  "南投地區",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, Areas.Yunlin);
                  YLNDOpenDialog();
                },
                child: const Text(
                  "雲林地區",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, Areas.Chiayi);
                  CYDOpenDialog();
                },
                child: const Text(
                  "嘉義地區",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, Areas.Tainan);
                  TNDOpenDialog();
                },
                child: const Text(
                  "臺南地區",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, Areas.Kaohsiung);
                  KSDOpenDialog();
                },
                child: const Text(
                  "高雄地區",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, Areas.Pindong);
                  PDDOpenDialog();
                },
                child: const Text(
                  "屏東地區",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, Areas.Yilang);
                  YLGDOpenDialog();
                },
                child: const Text(
                  "宜蘭地區",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, Areas.Hwalien);
                  HLDOpenDialog();
                },
                child: const Text(
                  "花蓮地區",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, Areas.Taidong);
                  TDDOpenDialog();
                },
                child: const Text(
                  "臺東地區",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  PSDOpenDialog();
                },
                child: const Text(
                  "平溪/深澳線",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, Areas.NL);
                  NLDOpenDialog();
                },
                child: const Text(
                  "內灣/六家線",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, Areas.Gigi);
                  GGDOpenDialog();
                },
                child: const Text(
                  "集集線",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, Areas.Shalung);
                  SLDOpenDialog();
                },
                child: const Text(
                  "沙崙線",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
            ],
          );
        });
  }

  Future<void> AOpenDialog() async {
    return await showDialog(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            title: const Text("請選擇地區"),
            children: <Widget>[
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, Areas.Taipei);
                  TPAOpenDialog();
                },
                child: const Text(
                  "北北基地區",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, Areas.Taoyuan);
                  TYAOpenDialog();
                },
                child: const Text(
                  "桃園地區",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, Areas.Xinchu);
                  XCAOpenDialog();
                },
                child: const Text(
                  "新竹地區",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, Areas.Miaoli);
                  MLAOpenDialog();
                },
                child: const Text(
                  "苗栗地區",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, Areas.Taichung);
                  TCAOpenDialog();
                },
                child: const Text(
                  "臺中地區",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, Areas.Zhanghua);
                  ZHAOpenDialog();
                },
                child: const Text(
                  "彰化地區",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, Areas.Nantou);
                  NTAOpenDialog();
                },
                child: const Text(
                  "南投地區",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, Areas.Yunlin);
                  YLNAOpenDialog();
                },
                child: const Text(
                  "雲林地區",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, Areas.Chiayi);
                  CYAOpenDialog();
                },
                child: const Text(
                  "嘉義地區",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, Areas.Tainan);
                  TNAOpenDialog();
                },
                child: const Text(
                  "臺南地區",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, Areas.Kaohsiung);
                  KSAOpenDialog();
                },
                child: const Text(
                  "高雄地區",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, Areas.Pindong);
                  PDAOpenDialog();
                },
                child: const Text(
                  "屏東地區",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, Areas.Yilang);
                  YLGAOpenDialog();
                },
                child: const Text(
                  "宜蘭地區",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, Areas.Hwalien);
                  HLAOpenDialog();
                },
                child: const Text(
                  "花蓮地區",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, Areas.Taidong);
                  TDAOpenDialog();
                },
                child: const Text(
                  "臺東地區",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, Areas.PS);
                  PSAOpenDialog();
                },
                child: const Text(
                  "平溪/深澳線",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, Areas.NL);
                  NLAOpenDialog();
                },
                child: const Text(
                  "內灣/六家線",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, Areas.Gigi);
                  GGAOpenDialog();
                },
                child: const Text(
                  "集集線",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(Padding),
                onPressed: () {
                  Navigator.pop(context, Areas.Shalung);
                  SLAOpenDialog();
                },
                child: const Text(
                  "沙崙線",
                  style: TextStyle(fontSize: Fontsize),
                ),
              ),
            ],
          );
        });
  }

  //---------------------------------------------------------------------------------------------------------------------------------------------------------------

  int _currentIndex = 1;

  final _Pages = <Widget>[
    UniversityPage(),
    TransportationPage(),
    SplashProfilePage()
  ];

  @override
  void initState() {
    super.initState();
  }

  String date1 = "Not set";
  String DateTo = '';

  //Search input;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(191, 62, 255, 1),
        title: Text('火車'),
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
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            //mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 75),
              Column(children: <Widget>[
                Text(
                  '出發時間',
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
                      date1 = '${date.year} - ${date.month} - ${date.day}';
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
                                " $date1",
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
                      RaisedButton(
                          onPressed: () {
                            DOpenDialog();
                          },
                          child: Container(
                            padding: EdgeInsets.only(
                                left: 5, right: 5, top: 10, bottom: 10),
                            child: Text(
                              DStationText,
                              style: TextStyle(fontSize: 25),
                            ),
                          ))
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
                      RaisedButton(
                          onPressed: () {
                            AOpenDialog();
                          },
                          child: Container(
                            padding: EdgeInsets.only(
                                left: 5, right: 5, top: 10, bottom: 10),
                            child: Text(
                              AStationText,
                              style: TextStyle(fontSize: 25),
                            ),
                          ))
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Container(
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
    String DStation = DStationText;
    String AStation = AStationText;

    Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => STtrain(
              Sdate: Sdate,
              DStation: DStation,
              AStation: AStation,
            )));
  }
}
