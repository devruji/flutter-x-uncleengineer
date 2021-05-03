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
  var ctl_product = TextEditingController();
  var ctl_price = TextEditingController();
  var ctl_quantity = TextEditingController();
  var result = '----Result----';

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Row(
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
        ),
        Image.network(
          'https://cdn.iconscout.com/icon/free/png-512/lamborghini-282390.png',
          scale: 0.1,
          width: 250,
          height: 250,
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(50, 10, 50, 10),
          child: Image.asset(
            'assets/porsche-9-569586.png',
            scale: 0.7,
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(50, 10, 50, 10),
          child: Image.asset(
            'assets/bmw-5-202750.png',
            scale: 0.5,
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(50, 10, 50, 10),
          child: Image.asset(
            'assets/ducati-282176.png',
            scale: 0.5,
          ),
        ),
        Padding(
            padding: EdgeInsets.fromLTRB(50, 10, 50, 10),
            child: TextField(
              controller: ctl_product,
              decoration: InputDecoration(
                  labelText: 'ยี่ห้อ', border: OutlineInputBorder()),
            )),
        Padding(
            padding: EdgeInsets.fromLTRB(50, 10, 50, 10),
            child: TextField(
              controller: ctl_quantity,
              decoration: InputDecoration(
                  labelText: 'จำนวน', border: OutlineInputBorder()),
            )),
        Padding(
            padding: EdgeInsets.fromLTRB(50, 10, 50, 10),
            child: TextField(
              controller: ctl_price,
              decoration: InputDecoration(
                  labelText: 'ราคา', border: OutlineInputBorder()),
            )),
        Padding(
            padding: EdgeInsets.fromLTRB(50, 10, 50, 10),
            child: ElevatedButton(
              child: Row(
                children: [Icon(Icons.send), Text('ส่งข้อความไปหานาย')],
              ),
              onPressed: () {
                var v0 = ctl_product.text;
                var v1 = int.parse(ctl_price.text);
                var v2 = int.parse(ctl_quantity.text);
                var cal = v1 * v2;
                print('Total price: $cal Bath');

                setState(() {
                  result = 'สินค้า: $v0\nราคา: $v1\nจำนวน: $v2';
                });
              },
            )),
        Padding(
            padding: EdgeInsets.fromLTRB(50, 10, 50, 10),
            child: Text(
              result,
              style: TextStyle(fontSize: 30.0),
            ))
      ],
    );
  }
}
