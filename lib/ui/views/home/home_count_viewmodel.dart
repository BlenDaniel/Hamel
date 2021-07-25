import 'package:stacked/stacked.dart';
import 'package:hamel/app/app.locator.dart';
import 'package:hamel/services/home_service.dart';

class HomeCountViewModel extends BaseViewModel {
  int get postsCount => locator<HomeService>().posts!.length;
}
