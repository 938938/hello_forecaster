import 'package:flutter/material.dart';
import 'package:hello_forecaster/widgets/text_modal.dart';
import 'package:hello_forecaster/widgets/parts.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String name = 'ABC';
  TimeOfDay time = const TimeOfDay(hour: 8, minute: 0);
  String location = '서울';

  Future<void> _editTextValue(String type) async {
    final result = await showTextEditModal(
      context: context,
      title: '$type 입력',
      initialValue: type == '이름' ? name : location,
    );

    if (result != null) {
      setState(() => name = result);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('설정', style: TextStyle(fontSize: 25)),
          Parts(title: '이름', value: name, onTap: () => _editTextValue('이름')),
          Parts(title: '시간', value: '$time'),
          Parts(
            title: '지역',
            value: location,
            onTap: () => _editTextValue('지역'),
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
