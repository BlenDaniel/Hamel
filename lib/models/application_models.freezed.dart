// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'application_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UserTearOff {
  const _$UserTearOff();

  _User call(
      {required String id,
      required String? email,
      required String? lotteryNumber,
      required String? fullName,
      required String? phoneNumber,
      required String? accountNumber,
      required int? userStatus}) {
    return _User(
      id: id,
      email: email,
      lotteryNumber: lotteryNumber,
      fullName: fullName,
      phoneNumber: phoneNumber,
      accountNumber: accountNumber,
      userStatus: userStatus,
    );
  }
}

/// @nodoc
const $User = _$UserTearOff();

/// @nodoc
mixin _$User {
  String get id => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get lotteryNumber => throw _privateConstructorUsedError;
  String? get fullName => throw _privateConstructorUsedError;
  String? get phoneNumber => throw _privateConstructorUsedError;
  String? get accountNumber => throw _privateConstructorUsedError;
  int? get userStatus => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String? email,
      String? lotteryNumber,
      String? fullName,
      String? phoneNumber,
      String? accountNumber,
      int? userStatus});
}

/// @nodoc
class _$UserCopyWithImpl<$Res> implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  final User _value;
  // ignore: unused_field
  final $Res Function(User) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? email = freezed,
    Object? lotteryNumber = freezed,
    Object? fullName = freezed,
    Object? phoneNumber = freezed,
    Object? accountNumber = freezed,
    Object? userStatus = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      lotteryNumber: lotteryNumber == freezed
          ? _value.lotteryNumber
          : lotteryNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      fullName: fullName == freezed
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      accountNumber: accountNumber == freezed
          ? _value.accountNumber
          : accountNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      userStatus: userStatus == freezed
          ? _value.userStatus
          : userStatus // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$UserCopyWith(_User value, $Res Function(_User) then) =
      __$UserCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String? email,
      String? lotteryNumber,
      String? fullName,
      String? phoneNumber,
      String? accountNumber,
      int? userStatus});
}

/// @nodoc
class __$UserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res>
    implements _$UserCopyWith<$Res> {
  __$UserCopyWithImpl(_User _value, $Res Function(_User) _then)
      : super(_value, (v) => _then(v as _User));

  @override
  _User get _value => super._value as _User;

  @override
  $Res call({
    Object? id = freezed,
    Object? email = freezed,
    Object? lotteryNumber = freezed,
    Object? fullName = freezed,
    Object? phoneNumber = freezed,
    Object? accountNumber = freezed,
    Object? userStatus = freezed,
  }) {
    return _then(_User(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      lotteryNumber: lotteryNumber == freezed
          ? _value.lotteryNumber
          : lotteryNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      fullName: fullName == freezed
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      accountNumber: accountNumber == freezed
          ? _value.accountNumber
          : accountNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      userStatus: userStatus == freezed
          ? _value.userStatus
          : userStatus // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$_User extends _User {
  _$_User(
      {required this.id,
      required this.email,
      required this.lotteryNumber,
      required this.fullName,
      required this.phoneNumber,
      required this.accountNumber,
      required this.userStatus})
      : super._();

  @override
  final String id;
  @override
  final String? email;
  @override
  final String? lotteryNumber;
  @override
  final String? fullName;
  @override
  final String? phoneNumber;
  @override
  final String? accountNumber;
  @override
  final int? userStatus;

  @override
  String toString() {
    return 'User(id: $id, email: $email, lotteryNumber: $lotteryNumber, fullName: $fullName, phoneNumber: $phoneNumber, accountNumber: $accountNumber, userStatus: $userStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _User &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.lotteryNumber, lotteryNumber) ||
                const DeepCollectionEquality()
                    .equals(other.lotteryNumber, lotteryNumber)) &&
            (identical(other.fullName, fullName) ||
                const DeepCollectionEquality()
                    .equals(other.fullName, fullName)) &&
            (identical(other.phoneNumber, phoneNumber) ||
                const DeepCollectionEquality()
                    .equals(other.phoneNumber, phoneNumber)) &&
            (identical(other.accountNumber, accountNumber) ||
                const DeepCollectionEquality()
                    .equals(other.accountNumber, accountNumber)) &&
            (identical(other.userStatus, userStatus) ||
                const DeepCollectionEquality()
                    .equals(other.userStatus, userStatus)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(lotteryNumber) ^
      const DeepCollectionEquality().hash(fullName) ^
      const DeepCollectionEquality().hash(phoneNumber) ^
      const DeepCollectionEquality().hash(accountNumber) ^
      const DeepCollectionEquality().hash(userStatus);

  @JsonKey(ignore: true)
  @override
  _$UserCopyWith<_User> get copyWith =>
      __$UserCopyWithImpl<_User>(this, _$identity);
}

abstract class _User extends User {
  factory _User(
      {required String id,
      required String? email,
      required String? lotteryNumber,
      required String? fullName,
      required String? phoneNumber,
      required String? accountNumber,
      required int? userStatus}) = _$_User;
  _User._() : super._();

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String? get email => throw _privateConstructorUsedError;
  @override
  String? get lotteryNumber => throw _privateConstructorUsedError;
  @override
  String? get fullName => throw _privateConstructorUsedError;
  @override
  String? get phoneNumber => throw _privateConstructorUsedError;
  @override
  String? get accountNumber => throw _privateConstructorUsedError;
  @override
  int? get userStatus => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UserCopyWith<_User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$LotteryTearOff {
  const _$LotteryTearOff();

  _Lottery call(
      {required String id,
      required String? eventsid,
      required String? uid,
      required String? dateAndTime,
      required String? uniqueNumber,
      required String? paymentBy}) {
    return _Lottery(
      id: id,
      eventsid: eventsid,
      uid: uid,
      dateAndTime: dateAndTime,
      uniqueNumber: uniqueNumber,
      paymentBy: paymentBy,
    );
  }
}

/// @nodoc
const $Lottery = _$LotteryTearOff();

/// @nodoc
mixin _$Lottery {
  String get id => throw _privateConstructorUsedError;
  String? get eventsid => throw _privateConstructorUsedError;
  String? get uid => throw _privateConstructorUsedError;
  String? get dateAndTime => throw _privateConstructorUsedError;
  String? get uniqueNumber => throw _privateConstructorUsedError;
  String? get paymentBy => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LotteryCopyWith<Lottery> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LotteryCopyWith<$Res> {
  factory $LotteryCopyWith(Lottery value, $Res Function(Lottery) then) =
      _$LotteryCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String? eventsid,
      String? uid,
      String? dateAndTime,
      String? uniqueNumber,
      String? paymentBy});
}

/// @nodoc
class _$LotteryCopyWithImpl<$Res> implements $LotteryCopyWith<$Res> {
  _$LotteryCopyWithImpl(this._value, this._then);

  final Lottery _value;
  // ignore: unused_field
  final $Res Function(Lottery) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? eventsid = freezed,
    Object? uid = freezed,
    Object? dateAndTime = freezed,
    Object? uniqueNumber = freezed,
    Object? paymentBy = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      eventsid: eventsid == freezed
          ? _value.eventsid
          : eventsid // ignore: cast_nullable_to_non_nullable
              as String?,
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String?,
      dateAndTime: dateAndTime == freezed
          ? _value.dateAndTime
          : dateAndTime // ignore: cast_nullable_to_non_nullable
              as String?,
      uniqueNumber: uniqueNumber == freezed
          ? _value.uniqueNumber
          : uniqueNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentBy: paymentBy == freezed
          ? _value.paymentBy
          : paymentBy // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$LotteryCopyWith<$Res> implements $LotteryCopyWith<$Res> {
  factory _$LotteryCopyWith(_Lottery value, $Res Function(_Lottery) then) =
      __$LotteryCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String? eventsid,
      String? uid,
      String? dateAndTime,
      String? uniqueNumber,
      String? paymentBy});
}

/// @nodoc
class __$LotteryCopyWithImpl<$Res> extends _$LotteryCopyWithImpl<$Res>
    implements _$LotteryCopyWith<$Res> {
  __$LotteryCopyWithImpl(_Lottery _value, $Res Function(_Lottery) _then)
      : super(_value, (v) => _then(v as _Lottery));

  @override
  _Lottery get _value => super._value as _Lottery;

  @override
  $Res call({
    Object? id = freezed,
    Object? eventsid = freezed,
    Object? uid = freezed,
    Object? dateAndTime = freezed,
    Object? uniqueNumber = freezed,
    Object? paymentBy = freezed,
  }) {
    return _then(_Lottery(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      eventsid: eventsid == freezed
          ? _value.eventsid
          : eventsid // ignore: cast_nullable_to_non_nullable
              as String?,
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String?,
      dateAndTime: dateAndTime == freezed
          ? _value.dateAndTime
          : dateAndTime // ignore: cast_nullable_to_non_nullable
              as String?,
      uniqueNumber: uniqueNumber == freezed
          ? _value.uniqueNumber
          : uniqueNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentBy: paymentBy == freezed
          ? _value.paymentBy
          : paymentBy // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_Lottery extends _Lottery {
  _$_Lottery(
      {required this.id,
      required this.eventsid,
      required this.uid,
      required this.dateAndTime,
      required this.uniqueNumber,
      required this.paymentBy})
      : super._();

  @override
  final String id;
  @override
  final String? eventsid;
  @override
  final String? uid;
  @override
  final String? dateAndTime;
  @override
  final String? uniqueNumber;
  @override
  final String? paymentBy;

  @override
  String toString() {
    return 'Lottery(id: $id, eventsid: $eventsid, uid: $uid, dateAndTime: $dateAndTime, uniqueNumber: $uniqueNumber, paymentBy: $paymentBy)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Lottery &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.eventsid, eventsid) ||
                const DeepCollectionEquality()
                    .equals(other.eventsid, eventsid)) &&
            (identical(other.uid, uid) ||
                const DeepCollectionEquality().equals(other.uid, uid)) &&
            (identical(other.dateAndTime, dateAndTime) ||
                const DeepCollectionEquality()
                    .equals(other.dateAndTime, dateAndTime)) &&
            (identical(other.uniqueNumber, uniqueNumber) ||
                const DeepCollectionEquality()
                    .equals(other.uniqueNumber, uniqueNumber)) &&
            (identical(other.paymentBy, paymentBy) ||
                const DeepCollectionEquality()
                    .equals(other.paymentBy, paymentBy)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(eventsid) ^
      const DeepCollectionEquality().hash(uid) ^
      const DeepCollectionEquality().hash(dateAndTime) ^
      const DeepCollectionEquality().hash(uniqueNumber) ^
      const DeepCollectionEquality().hash(paymentBy);

  @JsonKey(ignore: true)
  @override
  _$LotteryCopyWith<_Lottery> get copyWith =>
      __$LotteryCopyWithImpl<_Lottery>(this, _$identity);
}

abstract class _Lottery extends Lottery {
  factory _Lottery(
      {required String id,
      required String? eventsid,
      required String? uid,
      required String? dateAndTime,
      required String? uniqueNumber,
      required String? paymentBy}) = _$_Lottery;
  _Lottery._() : super._();

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String? get eventsid => throw _privateConstructorUsedError;
  @override
  String? get uid => throw _privateConstructorUsedError;
  @override
  String? get dateAndTime => throw _privateConstructorUsedError;
  @override
  String? get uniqueNumber => throw _privateConstructorUsedError;
  @override
  String? get paymentBy => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LotteryCopyWith<_Lottery> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ETAdTearOff {
  const _$ETAdTearOff();

  _ETAd call(
      {required String id,
      required String? adCompany,
      required String? url,
      required String? redirectUrl,
      required String? priceValue}) {
    return _ETAd(
      id: id,
      adCompany: adCompany,
      url: url,
      redirectUrl: redirectUrl,
      priceValue: priceValue,
    );
  }
}

/// @nodoc
const $ETAd = _$ETAdTearOff();

/// @nodoc
mixin _$ETAd {
  String get id => throw _privateConstructorUsedError;
  String? get adCompany => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;
  String? get redirectUrl => throw _privateConstructorUsedError;
  String? get priceValue => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ETAdCopyWith<ETAd> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ETAdCopyWith<$Res> {
  factory $ETAdCopyWith(ETAd value, $Res Function(ETAd) then) =
      _$ETAdCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String? adCompany,
      String? url,
      String? redirectUrl,
      String? priceValue});
}

/// @nodoc
class _$ETAdCopyWithImpl<$Res> implements $ETAdCopyWith<$Res> {
  _$ETAdCopyWithImpl(this._value, this._then);

  final ETAd _value;
  // ignore: unused_field
  final $Res Function(ETAd) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? adCompany = freezed,
    Object? url = freezed,
    Object? redirectUrl = freezed,
    Object? priceValue = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      adCompany: adCompany == freezed
          ? _value.adCompany
          : adCompany // ignore: cast_nullable_to_non_nullable
              as String?,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      redirectUrl: redirectUrl == freezed
          ? _value.redirectUrl
          : redirectUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      priceValue: priceValue == freezed
          ? _value.priceValue
          : priceValue // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$ETAdCopyWith<$Res> implements $ETAdCopyWith<$Res> {
  factory _$ETAdCopyWith(_ETAd value, $Res Function(_ETAd) then) =
      __$ETAdCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String? adCompany,
      String? url,
      String? redirectUrl,
      String? priceValue});
}

/// @nodoc
class __$ETAdCopyWithImpl<$Res> extends _$ETAdCopyWithImpl<$Res>
    implements _$ETAdCopyWith<$Res> {
  __$ETAdCopyWithImpl(_ETAd _value, $Res Function(_ETAd) _then)
      : super(_value, (v) => _then(v as _ETAd));

  @override
  _ETAd get _value => super._value as _ETAd;

  @override
  $Res call({
    Object? id = freezed,
    Object? adCompany = freezed,
    Object? url = freezed,
    Object? redirectUrl = freezed,
    Object? priceValue = freezed,
  }) {
    return _then(_ETAd(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      adCompany: adCompany == freezed
          ? _value.adCompany
          : adCompany // ignore: cast_nullable_to_non_nullable
              as String?,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      redirectUrl: redirectUrl == freezed
          ? _value.redirectUrl
          : redirectUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      priceValue: priceValue == freezed
          ? _value.priceValue
          : priceValue // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_ETAd extends _ETAd {
  _$_ETAd(
      {required this.id,
      required this.adCompany,
      required this.url,
      required this.redirectUrl,
      required this.priceValue})
      : super._();

  @override
  final String id;
  @override
  final String? adCompany;
  @override
  final String? url;
  @override
  final String? redirectUrl;
  @override
  final String? priceValue;

  @override
  String toString() {
    return 'ETAd(id: $id, adCompany: $adCompany, url: $url, redirectUrl: $redirectUrl, priceValue: $priceValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ETAd &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.adCompany, adCompany) ||
                const DeepCollectionEquality()
                    .equals(other.adCompany, adCompany)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)) &&
            (identical(other.redirectUrl, redirectUrl) ||
                const DeepCollectionEquality()
                    .equals(other.redirectUrl, redirectUrl)) &&
            (identical(other.priceValue, priceValue) ||
                const DeepCollectionEquality()
                    .equals(other.priceValue, priceValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(adCompany) ^
      const DeepCollectionEquality().hash(url) ^
      const DeepCollectionEquality().hash(redirectUrl) ^
      const DeepCollectionEquality().hash(priceValue);

  @JsonKey(ignore: true)
  @override
  _$ETAdCopyWith<_ETAd> get copyWith =>
      __$ETAdCopyWithImpl<_ETAd>(this, _$identity);
}

abstract class _ETAd extends ETAd {
  factory _ETAd(
      {required String id,
      required String? adCompany,
      required String? url,
      required String? redirectUrl,
      required String? priceValue}) = _$_ETAd;
  _ETAd._() : super._();

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String? get adCompany => throw _privateConstructorUsedError;
  @override
  String? get url => throw _privateConstructorUsedError;
  @override
  String? get redirectUrl => throw _privateConstructorUsedError;
  @override
  String? get priceValue => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ETAdCopyWith<_ETAd> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$EventsTearOff {
  const _$EventsTearOff();

  _Events call(
      {required String id,
      required int? raised,
      required String? venue,
      required List<int>? prizeValues,
      required String? link,
      required String? name,
      required String? time,
      required int? trees,
      required int? price}) {
    return _Events(
      id: id,
      raised: raised,
      venue: venue,
      prizeValues: prizeValues,
      link: link,
      name: name,
      time: time,
      trees: trees,
      price: price,
    );
  }
}

/// @nodoc
const $Events = _$EventsTearOff();

/// @nodoc
mixin _$Events {
  String get id => throw _privateConstructorUsedError;
  int? get raised => throw _privateConstructorUsedError;
  String? get venue => throw _privateConstructorUsedError;
  List<int>? get prizeValues => throw _privateConstructorUsedError;
  String? get link => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get time => throw _privateConstructorUsedError;
  int? get trees => throw _privateConstructorUsedError;
  int? get price => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EventsCopyWith<Events> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventsCopyWith<$Res> {
  factory $EventsCopyWith(Events value, $Res Function(Events) then) =
      _$EventsCopyWithImpl<$Res>;
  $Res call(
      {String id,
      int? raised,
      String? venue,
      List<int>? prizeValues,
      String? link,
      String? name,
      String? time,
      int? trees,
      int? price});
}

/// @nodoc
class _$EventsCopyWithImpl<$Res> implements $EventsCopyWith<$Res> {
  _$EventsCopyWithImpl(this._value, this._then);

  final Events _value;
  // ignore: unused_field
  final $Res Function(Events) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? raised = freezed,
    Object? venue = freezed,
    Object? prizeValues = freezed,
    Object? link = freezed,
    Object? name = freezed,
    Object? time = freezed,
    Object? trees = freezed,
    Object? price = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      raised: raised == freezed
          ? _value.raised
          : raised // ignore: cast_nullable_to_non_nullable
              as int?,
      venue: venue == freezed
          ? _value.venue
          : venue // ignore: cast_nullable_to_non_nullable
              as String?,
      prizeValues: prizeValues == freezed
          ? _value.prizeValues
          : prizeValues // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      link: link == freezed
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String?,
      trees: trees == freezed
          ? _value.trees
          : trees // ignore: cast_nullable_to_non_nullable
              as int?,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$EventsCopyWith<$Res> implements $EventsCopyWith<$Res> {
  factory _$EventsCopyWith(_Events value, $Res Function(_Events) then) =
      __$EventsCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      int? raised,
      String? venue,
      List<int>? prizeValues,
      String? link,
      String? name,
      String? time,
      int? trees,
      int? price});
}

/// @nodoc
class __$EventsCopyWithImpl<$Res> extends _$EventsCopyWithImpl<$Res>
    implements _$EventsCopyWith<$Res> {
  __$EventsCopyWithImpl(_Events _value, $Res Function(_Events) _then)
      : super(_value, (v) => _then(v as _Events));

  @override
  _Events get _value => super._value as _Events;

  @override
  $Res call({
    Object? id = freezed,
    Object? raised = freezed,
    Object? venue = freezed,
    Object? prizeValues = freezed,
    Object? link = freezed,
    Object? name = freezed,
    Object? time = freezed,
    Object? trees = freezed,
    Object? price = freezed,
  }) {
    return _then(_Events(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      raised: raised == freezed
          ? _value.raised
          : raised // ignore: cast_nullable_to_non_nullable
              as int?,
      venue: venue == freezed
          ? _value.venue
          : venue // ignore: cast_nullable_to_non_nullable
              as String?,
      prizeValues: prizeValues == freezed
          ? _value.prizeValues
          : prizeValues // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      link: link == freezed
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String?,
      trees: trees == freezed
          ? _value.trees
          : trees // ignore: cast_nullable_to_non_nullable
              as int?,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$_Events extends _Events {
  _$_Events(
      {required this.id,
      required this.raised,
      required this.venue,
      required this.prizeValues,
      required this.link,
      required this.name,
      required this.time,
      required this.trees,
      required this.price})
      : super._();

  @override
  final String id;
  @override
  final int? raised;
  @override
  final String? venue;
  @override
  final List<int>? prizeValues;
  @override
  final String? link;
  @override
  final String? name;
  @override
  final String? time;
  @override
  final int? trees;
  @override
  final int? price;

  @override
  String toString() {
    return 'Events(id: $id, raised: $raised, venue: $venue, prizeValues: $prizeValues, link: $link, name: $name, time: $time, trees: $trees, price: $price)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Events &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.raised, raised) ||
                const DeepCollectionEquality().equals(other.raised, raised)) &&
            (identical(other.venue, venue) ||
                const DeepCollectionEquality().equals(other.venue, venue)) &&
            (identical(other.prizeValues, prizeValues) ||
                const DeepCollectionEquality()
                    .equals(other.prizeValues, prizeValues)) &&
            (identical(other.link, link) ||
                const DeepCollectionEquality().equals(other.link, link)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.time, time) ||
                const DeepCollectionEquality().equals(other.time, time)) &&
            (identical(other.trees, trees) ||
                const DeepCollectionEquality().equals(other.trees, trees)) &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(raised) ^
      const DeepCollectionEquality().hash(venue) ^
      const DeepCollectionEquality().hash(prizeValues) ^
      const DeepCollectionEquality().hash(link) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(time) ^
      const DeepCollectionEquality().hash(trees) ^
      const DeepCollectionEquality().hash(price);

  @JsonKey(ignore: true)
  @override
  _$EventsCopyWith<_Events> get copyWith =>
      __$EventsCopyWithImpl<_Events>(this, _$identity);
}

abstract class _Events extends Events {
  factory _Events(
      {required String id,
      required int? raised,
      required String? venue,
      required List<int>? prizeValues,
      required String? link,
      required String? name,
      required String? time,
      required int? trees,
      required int? price}) = _$_Events;
  _Events._() : super._();

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  int? get raised => throw _privateConstructorUsedError;
  @override
  String? get venue => throw _privateConstructorUsedError;
  @override
  List<int>? get prizeValues => throw _privateConstructorUsedError;
  @override
  String? get link => throw _privateConstructorUsedError;
  @override
  String? get name => throw _privateConstructorUsedError;
  @override
  String? get time => throw _privateConstructorUsedError;
  @override
  int? get trees => throw _privateConstructorUsedError;
  @override
  int? get price => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$EventsCopyWith<_Events> get copyWith => throw _privateConstructorUsedError;
}
