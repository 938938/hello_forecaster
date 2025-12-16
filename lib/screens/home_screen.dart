import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('설정', style: TextStyle(fontSize: 25)),
          Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(border: Border.all(color: Colors.green)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [Text('이름'), Text('ABC!')],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(border: Border.all(color: Colors.green)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [Text('설정 지역'), Text('서울')],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(border: Border.all(color: Colors.green)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [Text('알림 시간'), Text('08:00')],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(child: Text('초기화')),
              Container(child: Text('저장')),
              
            ],
          ),
        ],
      ),
    );
  }
}
