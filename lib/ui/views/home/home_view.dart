import 'package:box_ui/box_ui.dart';
import 'package:flutter/material.dart';
import 'package:hamel/ui/widgets/home_layout/home_layout.dart';
import 'package:stacked/stacked.dart';
import 'package:hamel/app/app.locator.dart';
import 'home_viewmodel.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      // 1 dispose viewmodel
      disposeViewModel: false,
      // 3. set initialiseSpecialViewModelsOnce to true to indicate only initialising once
      initialiseSpecialViewModelsOnce: true,
      builder: (context, model, child) => Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              border: Border.all(),
              image: DecorationImage(
                image: AssetImage('assets/images/forest.jpg'),
                fit: BoxFit.fitWidth,
              ),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(39),
                bottomRight: Radius.circular(39),
              ),
            ),
            height: 500,
          ),
          Scaffold(
            backgroundColor: Colors.transparent,
            //extendBodyBehindAppBar: true,
            appBar: AppBar(
              leading: Builder(
                builder: (context) => IconButton(
                  padding: EdgeInsets.all(8),
                  icon: Icon(
                    Icons.menu_rounded,
                    color: Colors.white,
                    size: 30,
                  ),
                  onPressed: () => Scaffold.of(context).openDrawer(),
                ),
              ),
              backgroundColor: Colors.transparent,
              elevation: 0.5,
              actions: [
                Container(
                  margin: EdgeInsets.only(right: 20),
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white.withOpacity(0.2),
                      border: Border.all(color: Colors.white, width: 1)),
                  child: Icon(
                    Icons.notifications,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            drawer: Drawer(
              // Add a ListView to the drawer. This ensures the user can scroll
              // through the options in the drawer if there isn't enough vertical
              // space to fit everything.
              child: Column(
                children: [
                  Expanded(
                    child: ListView(
                      children: [
                        Container(
                          height: 250,
                          child: DrawerHeader(
                            decoration: BoxDecoration(
                              color: Colors.green[100],
                            ),
                            child: Container(
                              margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
                              width: double.infinity,
                              alignment: Alignment.center,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    height: 100,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                            'assets/images/user.png'),
                                        fit: BoxFit.fitHeight,
                                      ),
                                    ),
                                  ),
                                  verticalSpaceMedium,
                                  Text(
                                    model.getName(),
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 30,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        ListTile(
                          leading: Icon(
                            Icons.how_to_reg,
                            size: 35,
                          ),
                          title: const Text(
                            'Invite Friends',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                            ),
                          ),
                          onTap: () {
                            // Update the state of the app.
                            // ...
                          },
                        ),
                        ListTile(
                          leading: Icon(
                            Icons.info,
                            size: 35,
                          ),
                          title: const Text(
                            'About Us',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                            ),
                          ),
                          onTap: () {
                            // Update the state of the app.
                            // ...
                          },
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      model.logOut();
                    },
                    child: Center(
                      child: Container(
                        margin: EdgeInsets.symmetric(vertical: 20),
                        width: 200,
                        height: 50,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: kcPrimaryColor.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Text(
                          "Log Out",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            body: HomeLayout(
              busy: model.isBusy,
              goToLotteryPage: () => model.goToLotteryPage(),
              user: model.getCurrentUserRealTime(),
              upcomingEvents: model.getUpcomingEvents(),
            ),
          ),
        ],
      ),
      // 2. register viewmodel as singleton and get from locator
      viewModelBuilder: () => locator<HomeViewModel>(),
    );
  }
}
