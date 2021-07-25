import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'application_models.freezed.dart';

@freezed
class User with _$User {
  @JsonSerializable(explicitToJson: true)
  User._();

  factory User({
    required String id,
    required String? email,
    required String? lotteryNumber,
    required String? fullName,
    required String? phoneNumber,
    required String? accountNumber,
    required int? userStatus,
  }) = _User;

  factory User.fromJson(DocumentSnapshot<Object?> doc) {
    Map<String, dynamic> json = doc.data() as Map<String, dynamic>;
    return User(
      id: doc.id,
      email: json['email'],
      lotteryNumber: json['lotteryNumber'],
      fullName: json['fullName'],
      phoneNumber: json['phoneNumber'],
      accountNumber: json['accountNumber'],
      userStatus: json['userStatus'],
    );
  }

  Map<String, dynamic> toJson(User data) => data.toJson(data);

  bool get hasEmail => email?.isNotEmpty ?? false;
  bool get hasFullName => fullName?.isNotEmpty ?? false;
}

@freezed
class Lottery with _$Lottery {
  @JsonSerializable(explicitToJson: true)
  Lottery._();

  factory Lottery({
    required String id,
    required String? eventsid,
    required String? uid,
    required String? dateAndTime,
    required String? uniqueNumber,
    required String? paymentBy,
  }) = _Lottery;

  factory Lottery.fromJson(DocumentSnapshot<Object?> doc) {
    Map<String, dynamic> json = doc.data() as Map<String, dynamic>;
    return Lottery(
      id: doc.id,
      eventsid: json['eventsid'],
      uid: json['uid'],
      dateAndTime: json['dateAndTime'],
      uniqueNumber: json['uniqueNumber'],
      paymentBy: json['paymentBy'],
    );
  }

  Map<String, dynamic> toJson(Lottery data) => data.toJson(data);
}

@freezed
class ETAd with _$ETAd {
  @JsonSerializable(explicitToJson: true)
  ETAd._();

  factory ETAd({
    required String id,
    required String? adCompany,
    required String? url,
    required String? redirectUrl,
    required String? priceValue,
  }) = _ETAd;

  factory ETAd.fromJson(DocumentSnapshot<Object?> doc) {
    Map<String, dynamic> json = doc.data() as Map<String, dynamic>;
    return ETAd(
      id: doc.id,
      adCompany: json['adCompany'],
      url: json['url'],
      redirectUrl: json['redirectUrl'],
      priceValue: json['priceValue'],
    );
  }

  Map<String, dynamic> toJson(ETAd data) => data.toJson(data);
}

@freezed
class Events with _$Events {
  @JsonSerializable(explicitToJson: true)
  Events._();

  factory Events({
    required String id,
    required int? raised,
    required String? venue,
    required List<int>? prizeValues,
    required String? link,
    required String? name,
    required String? time,
    required int? trees,
    required int? price,
  }) = _Events;

  factory Events.fromJson(DocumentSnapshot<Object?> doc) {
    Map<String, dynamic> json = doc.data() as Map<String, dynamic>;
    return Events(
      id: doc.id,
      raised: json['raised'],
      venue: json['venue'],
      prizeValues: List.from(json['prizeValues']),
      link: json['link'],
      name: json['name'],
      time: json['time'],
      trees: json['trees'],
      price: json['price'],
    );
  }

  Map<String, dynamic> toJson(Events data) => data.toJson(data);
}
