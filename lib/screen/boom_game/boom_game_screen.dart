import 'package:flutter/material.dart';
import 'package:flutter_picker/flutter_picker.dart';

const String BoomGameScreenPath = '/boom-game';

class BoomGameScreen extends StatefulWidget {
  const BoomGameScreen({super.key});

  @override
  State<BoomGameScreen> createState() => _BoomGameScreenState();
}

class _BoomGameScreenState extends State<BoomGameScreen> {
  DateTime _datetime = DateTime.utc(2023, 1, 1, 0, 0, 0, 0, 0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('爆弾ゲーム')),
      floatingActionButton:
          FloatingActionButton.large(onPressed: () {}, child: Text('プレイ方法')),
      body: Center(
          child: Column(
        children: [
          TextButton(
            child: Text('edit',
                style: TextStyle(decoration: TextDecoration.underline)),
            onPressed: () async {
              Picker(
                adapter: DateTimePickerAdapter(
                    type: PickerDateTimeType.kHMS,
                    value: _datetime,
                    customColumnType: [3, 4, 5]),
                title: Text("Select Time"),
                onConfirm: (Picker picker, List value) {
                  setState(() => {
                        _datetime =
                            DateTime.utc(0, 0, 0, value[0], value[1], value[2])
                      });
                },
              ).showModal(context);
            },
          ),
        ],
      )),
    );
  }
}
