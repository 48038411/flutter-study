import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Day2 extends StatefulWidget {
  @override
  _Day2State createState() => _Day2State();
}

class _Day2State extends State<Day2> {
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
              //文本组件
              Text(
                "Hello flutter" * 10,
                //文字左对齐
                textAlign: TextAlign.left,
                //限制行数
                maxLines: 1,
                //文字溢出，ellipsis---用省略号代替溢出文字，clip-裁剪溢出文字，hade-隐藏溢出文字
                overflow: TextOverflow.ellipsis,
                //文字缩放
                textScaleFactor: 1.5,
              ),
              //文本样式组件
              Text(
                "TextStyle pratise",
                style: TextStyle(
                    //文本样式
                    color: Colors.blue,
                    fontSize: 18.0,
                    height: 1.2,
                    //文本字体
                    fontFamily: "Courier",
                    background: new Paint()..color = Colors.yellow,
                    //修饰，字下划线
                    decoration: TextDecoration.underline,
                    //修饰符样式
                    decorationStyle: TextDecorationStyle.dashed),
              ),
              //富文本，做评论回复的时候会用到
              Text.rich(TextSpan(children: [
                //每个TextSpan都可以设置样式
                TextSpan(
                    text: "王二",
                    style: TextStyle(fontSize: 24, color: Colors.black)),
                TextSpan(
                    text: "回复",
                    style: TextStyle(fontSize: 24, color: Colors.grey)),
                TextSpan(
                    text: "李四",
                    style: TextStyle(color: Colors.black, fontSize: 24)),
                TextSpan(
                    text: "flutter很有趣，一起学习",
                    style: TextStyle(color: Colors.black, fontSize: 24)),
              ]))
            ],
          ),
        ),
      ),
    );
  }
}
