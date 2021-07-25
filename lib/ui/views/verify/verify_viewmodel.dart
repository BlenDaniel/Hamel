import 'package:stacked/stacked.dart';

class VerifyViewModel extends BaseViewModel {
  String get title => 'This is the time since epoch in seconds \n ';

  bool _otherSource = false;

 

  Stream<int> epochUpdates([int seconds = 1]) async* {
    while (true) {
      await Future.delayed(Duration(seconds: seconds));
      yield DateTime.now().millisecondsSinceEpoch;
    }
  }

  Stream<int> epochUpdatesFaster() async* {
    while (true) {
      await Future.delayed(Duration(milliseconds: 300));
      yield DateTime.now().millisecondsSinceEpoch;
    }
  }
}
