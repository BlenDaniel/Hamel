import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hamel/app/app.locator.dart';
import 'package:hamel/app/app.logger.dart';
import 'package:hamel/constants/app_keys.dart';
import 'package:hamel/models/application_models.dart';
import 'package:hamel/services/user_service.dart';

class FirebaseEventService {
  final log = getLogger('FirebaseEventService');

  final _userService = locator<UserService>();

  final CollectionReference eventsCollection =
      FirebaseFirestore.instance.collection(EventFirestoreKey);

  Stream<List<Events>> getEvents() {
    final StreamController<List<Events>> _eventController =
        StreamController<List<Events>>.broadcast();
    eventsCollection
        .orderBy('time', descending: false)
        .snapshots()
        .listen((eventsData) {
      if (eventsData.docs.isNotEmpty) {
        var events = eventsData.docs
            .map((snapshot) => Events.fromJson(snapshot))
            .toList();
        _eventController.add(events);
      }
    });
    return _eventController.stream;
  }
}
