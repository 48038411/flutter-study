import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Day3 extends StatefulWidget {
  @override
  _Day3State createState() => _Day3State();
}

class _Day3State extends State<Day3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          margin: EdgeInsets.all(10),
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              //加载图片常用一种方式(asset 工程目录下图片，File本地图片，netWork回路图)
              Image.asset(
                "images/heart.jpg",
                width: 200,
              ),
              //圆形图片
              CircleAvatar(
                //头像半径
                radius: 40,
                //头像图片 -> NetworkImage网络图片，AssetImage项目资源包图片，File本地图片，network网络图
                backgroundImage: NetworkImage(
                    'https://img.mukewang.com/szimg/5f583a2609dc33b412000676-360-202.jpg'),
              ),
              //ClipOval裁剪图
              Container(
                height: 90,
                width: 90,
                child: ClipOval(
                  child: Image.network(
                    'https://img.mukewang.com/szimg/5f583a2609dc33b412000676-360-202.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              //Container的Decoration修饰
              Container(
                width: 120,
                height: 120,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://img.mukewang.com/szimg/5f583a2609dc33b412000676-360-202.jpg'),
                      fit: BoxFit.cover),
                ),
              ),
              Container(
                child: Icon(
                  Icons.cake,
                  size: 80,
                  color: Colors.red,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
