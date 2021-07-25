import 'package:flutter/material.dart';
import 'package:hamel/ui/views/profile/profile_view.dart';
import 'package:hamel/ui/views/home/home_view.dart';
import 'package:hamel/ui/views/lottery/lottery_view.dart';
import 'package:stacked/stacked.dart';
import 'package:hamel/ui/views/startup/startup_view.dart';
import 'ground_viewmodel.dart';

class GroundView extends StatelessWidget {
  final int? initialIndex;
  const GroundView({Key? key, this.initialIndex}) : super(key: key);

  Widget getViewForIndex(int index) {
    switch (index) {
      case 0:
        return HomeView();
      case 1:
        return LotteryView();
      case 2:
        return ProfileView();
      default:
        return StartUpView();
    }
  }

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<GroundViewModel>.reactive(
      onModelReady: (model) => model.setIndex(initialIndex ?? 0),
      builder: (context, model, child) => Scaffold(
        body: getViewForIndex(model.currentIndex),
        bottomNavigationBar: BottomNavigationBar(
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          currentIndex: model.currentIndex,
          selectedItemColor: Colors.green,
          iconSize: 25,
          onTap: model.setIndex,
          items: [
            BottomNavigationBarItem(
              label: 'Home',
              icon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              label: 'Lottery',
              icon: Icon(Icons.light),
            ),
            BottomNavigationBarItem(
              label: 'Profile',
              icon: Icon(Icons.person),
            ),
          ],
        ),
      ),
      viewModelBuilder: () => GroundViewModel(),
    );
  }
}
