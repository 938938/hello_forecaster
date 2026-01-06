import 'package:flutter/material.dart';
import 'package:hello_forecaster/utils/time.dart';
import 'package:hello_forecaster/utils/weather.dart';
import 'package:hello_forecaster/widgets/text_modal.dart';
import 'package:hello_forecaster/widgets/parts.dart';

enum EditType { name, location }

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String name = 'ABC';
  TimeOfDay time = const TimeOfDay(hour: 8, minute: 0);
  String location = 'abc';

  Future<void> _editTextValue(EditType type) async {
    final result = await showTextEditModal(
      context: context,
      title: type == EditType.name ? '이름 입력' : '지역 입력',
      initialValue: type == EditType.name ? name : location,
    );

    if (result != null) {
      setState(() {
        switch (type) {
          case EditType.name:
            name = result;
            break;
          case EditType.location:
            location = result;
            break;
        }
      });
    }
  }

  Future<void> _editTime() async {
    final picked = await pickTime(context, time);

    if (picked != null) {
      setState(() {
        time = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('설정', style: TextStyle(fontSize: 25)),
          Parts(
            title: '이름',
            value: name,
            onTap: () => _editTextValue(EditType.name),
          ),
          Parts(title: '시간', value: formatTime(time), onTap: _editTime),
          Parts(
            title: '지역',
            value: location,
            onTap: () => _editTextValue(EditType.location),
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
