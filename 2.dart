import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      // เป็นโครงสร้างหลักของ App ที่มีหน้าตาสวยๆ เช่น MenuBar ด้านบน
      appBar: AppBar(
        title: Text('First App by BossRuji'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'การเดินทางขากลับคงจะเหงา',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30.0,
              fontFamily: 'Prompt',
              color: Colors.blue[300]),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Text('Click'),
        onPressed: () {
          print('Clicked');
        },
      ),
    )));
