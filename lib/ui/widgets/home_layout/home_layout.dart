import 'package:box_ui/box_ui.dart';
import 'package:flutter/material.dart';
import 'package:hamel/models/application_models.dart';
import 'package:hamel/ui/widgets/home_layout/event_layout.dart';

class HomeLayout extends StatefulWidget {
  final Stream<List<Events>>? upcomingEvents;
  final Stream<User>? user;
  final bool busy;
  final void Function()? goToLotteryPage;

  const HomeLayout(
      {Key? key,
      this.upcomingEvents,
      this.user,
      required this.busy,
      this.goToLotteryPage})
      : super(key: key);
  @override
  _HomeLayoutState createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  Widget getBody(User? user) {
    switch (user?.userStatus) {
      //UserStatus.GettingStarted.index
      case 0:
        return Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Hi ' + '${user!.fullName ?? ' '},',
              style: TextStyle(
                fontSize: 35,
                color: Colors.white,
              ),
            ),
            verticalSpaceMedium,
            GestureDetector(
              onTap: widget.goToLotteryPage,
              child: Container(
                width: 200,
                height: 50,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: kcPrimaryColor.withOpacity(0.8),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: widget.busy
                    ? CircularProgressIndicator(
                        valueColor: AlwaysStoppedAnimation(Colors.white),
                      )
                    : Text(
                        "Buy Lottery",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
              ),
            ),
            verticalSpaceLarge,
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "#",
                  style: TextStyle(
                    color: Colors.lightGreenAccent,
                    fontSize: 30,
                  ),
                ),
                Text(
                  "ብር ወደ ቅጠል",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ],
        );
      case 1:
        return Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Loto Number',
              style: TextStyle(
                fontSize: 25,
                color: Colors.white,
              ),
            ),
            verticalSpaceMedium,
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "#",
                  style: TextStyle(
                    color: Colors.lightGreenAccent,
                    fontSize: 30,
                  ),
                ),
                Text(
                  "42516 26637 72838 72625",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            verticalSpaceSmall,
            Text(
              '5 Birr',
              style: TextStyle(
                fontSize: 25,
                color: Colors.white,
              ),
            ),
            verticalSpaceLarge,
            GestureDetector(
              onTap: widget.goToLotteryPage,
              child: Container(
                width: 200,
                height: 50,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: kcPrimaryColor.withOpacity(0.8),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: widget.busy
                    ? CircularProgressIndicator(
                        valueColor: AlwaysStoppedAnimation(Colors.white),
                      )
                    : Text(
                        "Upgrade Lottery",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
              ),
            ),
          ],
        );
      case 2:
        return Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Aw Snap, You lost this weeks lottery.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 25,
                color: Colors.white,
              ),
            ),
            verticalSpaceMedium,
            GestureDetector(
              onTap: widget.goToLotteryPage,
              child: Container(
                width: 200,
                height: 50,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: kcPrimaryColor.withOpacity(0.8),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: widget.busy
                    ? CircularProgressIndicator(
                        valueColor: AlwaysStoppedAnimation(Colors.white),
                      )
                    : Text(
                        "Buy Lottery",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
              ),
            ),
            verticalSpaceLarge,
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "#",
                  style: TextStyle(
                    color: Colors.lightGreenAccent,
                    fontSize: 30,
                  ),
                ),
                Text(
                  "ብር ወደ ቅጠል",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ],
        );
      case 3:
        return Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              '🎉 Congratulations on your win!',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30,
                color: Colors.white,
              ),
            ),
            verticalSpaceMedium,
            GestureDetector(
              onTap: widget.goToLotteryPage,
              child: Container(
                width: 200,
                height: 50,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: kcPrimaryColor.withOpacity(0.8),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: widget.busy
                    ? CircularProgressIndicator(
                        valueColor: AlwaysStoppedAnimation(Colors.white),
                      )
                    : Text(
                        "Buy Lottery",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
              ),
            ),
            verticalSpaceLarge,
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "#",
                  style: TextStyle(
                    color: Colors.lightGreenAccent,
                    fontSize: 30,
                  ),
                ),
                Text(
                  "ብር ወደ ቅጠል",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ],
        );
      default:
        return Container();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: DefaultTabController(
        length: 1,
        child: NestedScrollView(
          // allows you to build a list of elements that would be scrolled away till the body reached the top
          headerSliverBuilder: (context, bool innerBoxIsScrolled) {
            return [
              SliverList(
                delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                    return Container(
                      decoration: BoxDecoration(),
                      height: 400,
                      child: StreamBuilder<User>(
                        stream: widget.user,
                        builder: (context, snapshot) {
                          if (snapshot.hasData) {
                            return Container(
                              padding: EdgeInsets.all(30),
                              child: getBody(snapshot.data),
                            );
                          } else {
                            return Container();
                          }
                        },
                      ),
                    );
                  },
                  childCount: 1,
                ),
              ),
            ];
          },
          // You tab view goes here
          body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    //border: Border.all(color: Colors.black, width: 0.5),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                    ),
                  ),
                  child: Text(
                    "Upcoming Lottery Events",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.white,
                  child: StreamBuilder<List<Events>>(
                    stream: widget.upcomingEvents,
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {
                        return ListView.builder(
                          padding: EdgeInsets.only(bottom: 10),
                          itemCount: snapshot.data!.length,
                          itemBuilder: (context, index) {
                            return EventLayout(
                              upcomingEvents: snapshot.data![index],
                            );
                          },
                        );
                      } else {
                        return Container(
                          height: 700,
                          child: Center(
                            child: CircularProgressIndicator(),
                          ),
                        );
                      }
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
