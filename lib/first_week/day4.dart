import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Day4 extends StatefulWidget {
  @override
  _Day4State createState() => _Day4State();
}

class _Day4State extends State<Day4> {
  //单选按钮的状态
  bool _radioSelected = true;
  //复选按钮状态
  bool _checkboxSelected = true;

  //焦点
  FocusNode focusNode1 = FocusNode();
  FocusNode focusNode2 = FocusNode();
  FocusNode focusNode3 = FocusNode();
  //定义一个controller
  TextEditingController _nameController = TextEditingController();
  TextEditingController _pwdController = TextEditingController();

  FocusScope focusScope;

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
              Container(
                child: Switch(
                  //当前状态
                  value: _radioSelected,
                  onChanged: (value) {
                    //切换选择状态
                    setState(() {
                      _radioSelected = value;
                    });
                  },
                ),
              ),
              Checkbox(
                //复选按钮当前状态
                value: _checkboxSelected,
                //选中时的颜色
                activeColor: Colors.red,
                onChanged: (value) {
                  setState(() {
                    _checkboxSelected = value;
                  });
                },
              ),
              Column(
                children: <Widget>[
                  TextField(
                    //控制焦点
                    focusNode: focusNode1,
                    //自动获取焦点
                    autofocus: true,
                    controller: _nameController,
                    decoration: InputDecoration(
                        //标签提示
                        labelText: "用户名",
                        //表单内提示
                        hintText: "用户名或邮箱",
                        //前缀图标
                        prefixIcon: Icon(Icons.person)),
                    //等同于vue中的input事件
                    onChanged: (v) {
                      setState(() {});
                      print("用户名是>>>>>>>>>>" + _nameController.value.text);
                    },
                  ),
                  TextField(
                    focusNode: focusNode2,
                    controller: _pwdController,
                    decoration: InputDecoration(
                        labelText: "密码",
                        hintText: "您的登录密码",
                        prefixIcon: Icon(Icons.lock)),
                    obscureText: true,
                  ),
                  Text("用户名是：" + _nameController.value.text),
                  RaisedButton(
                    child: Text("切换焦点"),
                    onPressed: () {
                      //等焦点从第一个TextField移到第二个TextField
                      FocusScope.of(context).requestFocus(focusNode2);
                    },
                  ),
                  RaisedButton(
                    child: Text("隐藏键盘"),
                    onPressed: () {
                      //当所有编辑都失去焦点时键盘就会收起
                      focusNode1.unfocus();
                      focusNode2.unfocus();
                    },
                  ),
                ],
              ),
              Expanded(
                child: Container(
                  //外边框
                  margin: EdgeInsets.all(10),
                  height: 40,
                  width: MediaQuery.of(context).size.width,
                  alignment: Alignment.center,
                  child: TextField(
                    //输入框焦点控制
                    focusNode: focusNode3,
                    //文本垂直属性
                    textAlignVertical: TextAlignVertical.center,
                    decoration: InputDecoration(
                        hintText: "自定义TextField",
                        //填充颜色
                        fillColor: Colors.grey,
                        //能否填充背景色,想要填充，该属性必须为true
                        filled: true,
                        contentPadding: EdgeInsets.only(left: 10),
                        //设置外边框
                        border: OutlineInputBorder(
                            //该函数的属性之一,borderSize(设置边框的样式)
                            borderSide: BorderSide(
                          color: Colors.red,
                        ))),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
