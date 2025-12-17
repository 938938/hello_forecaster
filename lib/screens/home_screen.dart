import 'package:flutter/material.dart';
import 'package:hello_forecaster/widgets/parts.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('설정', style: TextStyle(fontSize: 25)),
          Parts(title: '이름', value: 'ABC'),
          Parts(title: '시간', value: '08:00'),
          Parts(title: '지역', value: '서울'),
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
