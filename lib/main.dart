import 'package:flutter/material.dart';

void main() => runApp(MyApp(
  items: new List<String>.generate(1000, (i)=>'Item $i'))
);

class MyApp extends StatelessWidget{
  
   final List<String> items;
  MyApp({Key key,@required this.items}):super(key:key);

  @override
  Widget build(BuildContext content){
    return MaterialApp(
      title: 'ListView Widget',
      home: Scaffold(
        appBar: new AppBar(title: new Text('ListView widget')),
        body: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,//设置例数：2列
            mainAxisSpacing: 2.0,//行间距
            crossAxisSpacing: 2.0,//列间距
            childAspectRatio: 0.7 //宽与高  0比7
          ),
          children: <Widget>[
            new Image.network('http://img5.mtime.cn/mt/2019/03/21/105842.17074476_270X360X4.jpg',fit:BoxFit.cover),
            new Image.network('http://img5.mtime.cn/mg/2019/04/10/102844.93012572_270X405X4.jpg',fit:BoxFit.cover),
            new Image.network('http://img5.mtime.cn/mg/2019/02/27/171111.35675299_270X405X4.jpg',fit:BoxFit.cover),
            new Image.network('http://img5.mtime.cn/mt/2018/10/22/104316.77318635_180X260X4.jpg',fit: BoxFit.cover),
             new Image.network('http://img5.mtime.cn/mt/2018/10/10/112514.30587089_180X260X4.jpg',fit: BoxFit.cover),
             new Image.network('http://img5.mtime.cn/mt/2018/11/13/093605.61422332_180X260X4.jpg',fit: BoxFit.cover),
             new Image.network('http://img5.mtime.cn/mt/2018/11/07/092515.55805319_180X260X4.jpg',fit: BoxFit.cover),
             new Image.network('http://img5.mtime.cn/mt/2018/11/21/090246.16772408_135X190X4.jpg',fit: BoxFit.cover),
             new Image.network('http://img5.mtime.cn/mt/2018/11/17/162028.94879602_135X190X4.jpg',fit: BoxFit.cover),
             new Image.network('http://img5.mtime.cn/mt/2018/11/19/165350.52237320_135X190X4.jpg',fit: BoxFit.cover),
             new Image.network('http://img5.mtime.cn/mt/2018/11/16/115256.24365160_180X260X4.jpg',fit: BoxFit.cover),
             new Image.network('http://img5.mtime.cn/mt/2018/11/20/141608.71613590_135X190X4.jpg',fit: BoxFit.cover),
           ],
        )
      ),
    );
  }

}


