import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Day8 extends StatefulWidget {
  @override
  _Day8State createState() => _Day8State();
}

class _Day8State extends State<Day8> {
  int _selectdIndex = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //导航栏标题
        title: Text("Tabbar"),
        //标题是否居中
        centerTitle: true,
        actions: <Widget>[
          //导航栏右侧菜单
          IconButton(icon: Icon(Icons.share), onPressed: () {}),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        //底部导航
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("Home")),
          BottomNavigationBarItem(
              icon: Icon(Icons.business), title: Text("Business")),
          BottomNavigationBarItem(
              icon: Icon(Icons.school), title: Text("School")),
        ],
        //选中的tab索引
        currentIndex: _selectdIndex,
        fixedColor: Colors.blue,
        //点击事件
        onTap: _onItemTapped,
      ),
      //scaffold的中间一块区域
      body: Center(
        child: Container(
          alignment: Alignment.center,
          child: Text("scaffold的body"),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        //右下角悬浮按钮
        onPressed: _onAdd,
        child: Icon(Icons.add),
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectdIndex = index;
    });
  }
  void _onAdd(){
    
  }
}
