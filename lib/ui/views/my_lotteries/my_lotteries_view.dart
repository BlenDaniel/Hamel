import 'package:flutter/material.dart';
import 'package:hamel/ui/views/my_lotteries/my_lotteries_viewmodel.dart';
import 'package:stacked/stacked.dart';

class MyLotteriesView extends StatelessWidget {
  const MyLotteriesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<MyLotteriesViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        body: Center(
          child: Text('MyLotteries View'),
        ),
      ),
      viewModelBuilder: () => MyLotteriesViewModel(),
    );
  }
}
