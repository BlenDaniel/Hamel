import 'package:hamel/api/firestore_api.dart';
import 'package:hamel/app/app.locator.dart';
import 'package:hamel/app/app.logger.dart';
import 'package:hamel/models/application_models.dart';

class HomeService {
  final log = getLogger('UserService');

  final _firestoreApi = locator<FirestoreApi>();

  List<Lottery>? _posts;
  List<Lottery>? get posts => _posts;

  bool get hasPosts => _posts != null && _posts!.isNotEmpty;

  Future<List<Lottery>?> getPostsForUser(int userId) async {
    _posts = await _firestoreApi.getPostsForUser(userId);
    return _posts;
  }
}
