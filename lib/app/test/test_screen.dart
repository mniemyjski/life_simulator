import 'package:flutter/material.dart';
import 'package:richeable/app/test/repositories/test_repository.dart';
import 'package:richeable/widgets/custom_button.dart';

import '../../utilities/utilities.dart';

class TestScreen extends StatelessWidget {
  const TestScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomButton(
            onPressed: () async {
              String? test = await TestRepository().generate();
              Logger().wtf(test);
            },
            child: Text('generate'),
          ),
          CustomButton(
            onPressed: () async {
              String? test = await TestRepository().put();
              Logger().wtf(test);
            },
            child: Text('put'),
          ),
          CustomButton(
            onPressed: () async {
              double? test = await TestRepository().sum();
              Logger().wtf(test);
            },
            child: Text('sum'),
          ),
          CustomButton(
            onPressed: () async {
              TestRepository().clear();
            },
            child: Text('clear'),
          ),
        ],
      ),
    );
  }
}
