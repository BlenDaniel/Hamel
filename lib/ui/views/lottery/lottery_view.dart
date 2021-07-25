import 'package:box_ui/box_ui.dart';
import 'package:flutter/material.dart';
import 'package:hamel/models/application_models.dart';
import 'package:hamel/ui/widgets/event_lottery_layout.dart';
import 'package:hamel/ui/widgets/home_layout/event_layout.dart';
import 'package:stacked/stacked.dart';

import 'lottery_viewmodel.dart';

class LotteryView extends StatelessWidget {
  const LotteryView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<LotteryViewModel>.reactive(
      viewModelBuilder: () => LotteryViewModel(),
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
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0.5,
            ),
            body: DefaultTabController(
              length: 1,
              child: NestedScrollView(
                // allows you to build a list of elements that would be scrolled away till the body reached the top
                headerSliverBuilder: (context, bool innerBoxIsScrolled) {
                  return [
                    SliverList(
                      delegate: SliverChildBuilderDelegate(
                        (BuildContext context, int index) {
                          return Container();
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
                    Container(
                      width: double.infinity,
                      color: Colors.white,
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          verticalSpaceMedium,
                          Text(
                            "Upcoming Lottery Events",
                            style: TextStyle(
                                fontSize: 26, fontWeight: FontWeight.bold),
                          ),
                          verticalSpaceSmall,
                        ],
                      ),
                    ),
                    Expanded(
                      child: Container(
                        color: Colors.white,
                        child: ListView(
                          shrinkWrap: true,
                          children: [
                            Padding(
                              padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: SizedBox(
                                  width: screenWidthPercentage(context,
                                      percentage: 0.7),
                                  child: BoxText.body(
                                    "Select which lottery you would like to bet in. After you buy the ticket, the winning price and also the number of trees planted will increase.\nGood Luck!",
                                    color: Colors.grey.shade400,
                                  ),
                                ),
                              ),
                            ),
                            verticalSpaceSmall,
                            Container(
                              width: 200,
                              height: 50,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: kcPrimaryColor.withOpacity(0.5),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Text(
                                "Select Lottery To Buy",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                            StreamBuilder<List<Events>>(
                              stream: model.getUpcomingEvents(),
                              builder: (context, snapshot) {
                                if (snapshot.hasData) {
                                  return ListView.builder(
                                    shrinkWrap: true,
                                    physics: NeverScrollableScrollPhysics(),
                                    padding: EdgeInsets.only(bottom: 10),
                                    itemCount: snapshot.data!.length,
                                    itemBuilder: (context, index) {
                                      return EventLotteryLayout(
                                        upcomingEvents: snapshot.data![index],
                                        goToEventWin: () => model
                                            .goToBuy(snapshot.data![index]),
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
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
