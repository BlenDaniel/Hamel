import 'package:flutter/material.dart';
import 'package:hamel/ui/shared/ui_helpers.dart';
import 'package:hamel/ui/views/my_lotteries/my_lotteries_view.dart';
import 'package:hamel/ui/views/profile/profile_viewmodel.dart';
import 'package:hamel/ui/views/settings/settings_view.dart';
import 'package:stacked/stacked.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  _ProfileViewState createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView>
    with TickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ProfileViewModel>.reactive(
      builder: (context, model, child) => Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              border: Border.all(),
              image: DecorationImage(
                image: AssetImage('assets/images/forest.jpg'),
                fit: BoxFit.fitHeight,
              ),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(39),
                bottomRight: Radius.circular(39),
              ),
            ),
          ),
          Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0.5,
            ),
            body: DefaultTabController(
              length: 2,
              child: NestedScrollView(
                headerSliverBuilder: (context, bool innerBoxIsScrolled) {
                  return [
                    SliverList(
                      delegate: SliverChildBuilderDelegate(
                        (BuildContext context, int index) {
                          return Column(
                            children: <Widget>[
                              Container(
                                height: 300,
                                child: DrawerHeader(
                                  decoration: BoxDecoration(
                                    color: Colors.white.withOpacity(0.6),
                                  ),
                                  child: Container(
                                    margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
                                    width: double.infinity,
                                    alignment: Alignment.center,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
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
                            ],
                          );
                        },
                        childCount: 1,
                      ),
                    ),
                  ];
                },
                // You tab view goes here
                body: Column(
                  children: <Widget>[
                    Center(
                      child: TabBar(
                        controller: _tabController,
                        indicatorColor: Colors.lightGreenAccent,
                        unselectedLabelColor: Colors.white,
                        labelColor: Colors.lightGreenAccent,
                        isScrollable: true,
                        indicator: UnderlineTabIndicator(
                            borderSide: BorderSide(width: 1.1),
                            insets: EdgeInsets.symmetric(horizontal: 15.0)),
                        tabs: <Widget>[
                          Container(
                            width: 80,
                            height: 40,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Center(
                                    child: Icon(Icons.list_outlined, size: 17)),
                                Text('Lotteries',
                                    style: TextStyle(fontSize: 10))
                              ],
                            ),
                          ),
                          Container(
                            width: 80,
                            height: 40,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Center(child: Icon(Icons.settings, size: 17)),
                                Text(
                                  'Settings',
                                  style: TextStyle(fontSize: 10),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: TabBarView(
                        controller: _tabController,
                        children: [
                          MyLotteriesView(),
                          SettingsView(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      viewModelBuilder: () => ProfileViewModel(),
    );
  }
}
