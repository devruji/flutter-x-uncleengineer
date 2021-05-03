import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            // เป็นโครงสร้างหลักของ App ที่มีหน้าตาสวยๆ เช่น MenuBar ด้านบน
            appBar: AppBar(
              title: Text('บันทึกรายการเบิกของ'),
              centerTitle: true,
            ),
            body: Home()));
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Center(
          child: Text(
            'เด็กเดินของ',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30.0,
                fontFamily: 'Prompt',
                color: Colors.blue[300]),
          ),
        ),
        Icon(
          Icons.add_comment,
          size: 100.0,
          color: Colors.blue[900],
        )
      ],
    );
  }
}
