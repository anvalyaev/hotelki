///
//  Generated code. Do not modify.
//  source: hot.proto
///
// ignore_for_file: non_constant_identifier_names,library_prefixes,unused_import

// ignore: UNUSED_SHOWN_NAME
import 'dart:core' show int, bool, double, String, List, Map, override;

import 'package:protobuf/protobuf.dart' as $pb;

class Token extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('Token', package: const $pb.PackageName('hot'))
    ..aOS(1, 'token')
    ..hasRequiredFields = false
  ;

  Token() : super();
  Token.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  Token.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  Token clone() => new Token()..mergeFromMessage(this);
  Token copyWith(void Function(Token) updates) => super.copyWith((message) => updates(message as Token));
  $pb.BuilderInfo get info_ => _i;
  static Token create() => new Token();
  static $pb.PbList<Token> createRepeated() => new $pb.PbList<Token>();
  static Token getDefault() => _defaultInstance ??= create()..freeze();
  static Token _defaultInstance;
  static void $checkItem(Token v) {
    if (v is! Token) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  String get token => $_getS(0, '');
  set token(String v) { $_setString(0, v); }
  bool hasToken() => $_has(0);
  void clearToken() => clearField(1);
}

class Success extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('Success', package: const $pb.PackageName('hot'))
    ..aOB(1, 'status')
    ..a<int>(2, 'err', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  Success() : super();
  Success.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  Success.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  Success clone() => new Success()..mergeFromMessage(this);
  Success copyWith(void Function(Success) updates) => super.copyWith((message) => updates(message as Success));
  $pb.BuilderInfo get info_ => _i;
  static Success create() => new Success();
  static $pb.PbList<Success> createRepeated() => new $pb.PbList<Success>();
  static Success getDefault() => _defaultInstance ??= create()..freeze();
  static Success _defaultInstance;
  static void $checkItem(Success v) {
    if (v is! Success) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  bool get status => $_get(0, false);
  set status(bool v) { $_setBool(0, v); }
  bool hasStatus() => $_has(0);
  void clearStatus() => clearField(1);

  int get err => $_get(1, 0);
  set err(int v) { $_setSignedInt32(1, v); }
  bool hasErr() => $_has(1);
  void clearErr() => clearField(2);
}

class AuthRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('AuthRequest', package: const $pb.PackageName('hot'))
    ..aOS(1, 'name')
    ..aOS(2, 'password')
    ..aOS(3, 'phone')
    ..hasRequiredFields = false
  ;

  AuthRequest() : super();
  AuthRequest.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  AuthRequest.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  AuthRequest clone() => new AuthRequest()..mergeFromMessage(this);
  AuthRequest copyWith(void Function(AuthRequest) updates) => super.copyWith((message) => updates(message as AuthRequest));
  $pb.BuilderInfo get info_ => _i;
  static AuthRequest create() => new AuthRequest();
  static $pb.PbList<AuthRequest> createRepeated() => new $pb.PbList<AuthRequest>();
  static AuthRequest getDefault() => _defaultInstance ??= create()..freeze();
  static AuthRequest _defaultInstance;
  static void $checkItem(AuthRequest v) {
    if (v is! AuthRequest) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  String get name => $_getS(0, '');
  set name(String v) { $_setString(0, v); }
  bool hasName() => $_has(0);
  void clearName() => clearField(1);

  String get password => $_getS(1, '');
  set password(String v) { $_setString(1, v); }
  bool hasPassword() => $_has(1);
  void clearPassword() => clearField(2);

  String get phone => $_getS(2, '');
  set phone(String v) { $_setString(2, v); }
  bool hasPhone() => $_has(2);
  void clearPhone() => clearField(3);
}

class AuthAnswer extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('AuthAnswer', package: const $pb.PackageName('hot'))
    ..aOS(1, 'token')
    ..aOB(2, 'status')
    ..a<int>(3, 'err', $pb.PbFieldType.O3)
    ..a<User>(4, 'user', $pb.PbFieldType.OM, User.getDefault, User.create)
    ..hasRequiredFields = false
  ;

  AuthAnswer() : super();
  AuthAnswer.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  AuthAnswer.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  AuthAnswer clone() => new AuthAnswer()..mergeFromMessage(this);
  AuthAnswer copyWith(void Function(AuthAnswer) updates) => super.copyWith((message) => updates(message as AuthAnswer));
  $pb.BuilderInfo get info_ => _i;
  static AuthAnswer create() => new AuthAnswer();
  static $pb.PbList<AuthAnswer> createRepeated() => new $pb.PbList<AuthAnswer>();
  static AuthAnswer getDefault() => _defaultInstance ??= create()..freeze();
  static AuthAnswer _defaultInstance;
  static void $checkItem(AuthAnswer v) {
    if (v is! AuthAnswer) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  String get token => $_getS(0, '');
  set token(String v) { $_setString(0, v); }
  bool hasToken() => $_has(0);
  void clearToken() => clearField(1);

  bool get status => $_get(1, false);
  set status(bool v) { $_setBool(1, v); }
  bool hasStatus() => $_has(1);
  void clearStatus() => clearField(2);

  int get err => $_get(2, 0);
  set err(int v) { $_setSignedInt32(2, v); }
  bool hasErr() => $_has(2);
  void clearErr() => clearField(3);

  User get user => $_getN(3);
  set user(User v) { setField(4, v); }
  bool hasUser() => $_has(3);
  void clearUser() => clearField(4);
}

class User extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('User', package: const $pb.PackageName('hot'))
    ..aOS(1, 'usrId')
    ..aOS(2, 'name')
    ..aOS(3, 'password')
    ..aOS(4, 'phone')
    ..hasRequiredFields = false
  ;

  User() : super();
  User.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  User.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  User clone() => new User()..mergeFromMessage(this);
  User copyWith(void Function(User) updates) => super.copyWith((message) => updates(message as User));
  $pb.BuilderInfo get info_ => _i;
  static User create() => new User();
  static $pb.PbList<User> createRepeated() => new $pb.PbList<User>();
  static User getDefault() => _defaultInstance ??= create()..freeze();
  static User _defaultInstance;
  static void $checkItem(User v) {
    if (v is! User) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  String get usrId => $_getS(0, '');
  set usrId(String v) { $_setString(0, v); }
  bool hasUsrId() => $_has(0);
  void clearUsrId() => clearField(1);

  String get name => $_getS(1, '');
  set name(String v) { $_setString(1, v); }
  bool hasName() => $_has(1);
  void clearName() => clearField(2);

  String get password => $_getS(2, '');
  set password(String v) { $_setString(2, v); }
  bool hasPassword() => $_has(2);
  void clearPassword() => clearField(3);

  String get phone => $_getS(3, '');
  set phone(String v) { $_setString(3, v); }
  bool hasPhone() => $_has(3);
  void clearPhone() => clearField(4);
}

class WishListEvent extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('WishListEvent', package: const $pb.PackageName('hot'))
    ..aOS(1, 'token')
    ..aOS(2, 'wiId')
    ..aOS(3, 'wlId')
    ..a<int>(4, 'indexBefore', $pb.PbFieldType.O3)
    ..a<int>(5, 'indexAfter', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  WishListEvent() : super();
  WishListEvent.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  WishListEvent.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  WishListEvent clone() => new WishListEvent()..mergeFromMessage(this);
  WishListEvent copyWith(void Function(WishListEvent) updates) => super.copyWith((message) => updates(message as WishListEvent));
  $pb.BuilderInfo get info_ => _i;
  static WishListEvent create() => new WishListEvent();
  static $pb.PbList<WishListEvent> createRepeated() => new $pb.PbList<WishListEvent>();
  static WishListEvent getDefault() => _defaultInstance ??= create()..freeze();
  static WishListEvent _defaultInstance;
  static void $checkItem(WishListEvent v) {
    if (v is! WishListEvent) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  String get token => $_getS(0, '');
  set token(String v) { $_setString(0, v); }
  bool hasToken() => $_has(0);
  void clearToken() => clearField(1);

  String get wiId => $_getS(1, '');
  set wiId(String v) { $_setString(1, v); }
  bool hasWiId() => $_has(1);
  void clearWiId() => clearField(2);

  String get wlId => $_getS(2, '');
  set wlId(String v) { $_setString(2, v); }
  bool hasWlId() => $_has(2);
  void clearWlId() => clearField(3);

  int get indexBefore => $_get(3, 0);
  set indexBefore(int v) { $_setSignedInt32(3, v); }
  bool hasIndexBefore() => $_has(3);
  void clearIndexBefore() => clearField(4);

  int get indexAfter => $_get(4, 0);
  set indexAfter(int v) { $_setSignedInt32(4, v); }
  bool hasIndexAfter() => $_has(4);
  void clearIndexAfter() => clearField(5);
}

class WishFamilyEvent extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('WishFamilyEvent', package: const $pb.PackageName('hot'))
    ..aOS(1, 'token')
    ..aOS(2, 'usrId')
    ..aOS(3, 'fId')
    ..a<int>(4, 'indexBefore', $pb.PbFieldType.O3)
    ..a<int>(5, 'indexAfter', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  WishFamilyEvent() : super();
  WishFamilyEvent.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  WishFamilyEvent.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  WishFamilyEvent clone() => new WishFamilyEvent()..mergeFromMessage(this);
  WishFamilyEvent copyWith(void Function(WishFamilyEvent) updates) => super.copyWith((message) => updates(message as WishFamilyEvent));
  $pb.BuilderInfo get info_ => _i;
  static WishFamilyEvent create() => new WishFamilyEvent();
  static $pb.PbList<WishFamilyEvent> createRepeated() => new $pb.PbList<WishFamilyEvent>();
  static WishFamilyEvent getDefault() => _defaultInstance ??= create()..freeze();
  static WishFamilyEvent _defaultInstance;
  static void $checkItem(WishFamilyEvent v) {
    if (v is! WishFamilyEvent) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  String get token => $_getS(0, '');
  set token(String v) { $_setString(0, v); }
  bool hasToken() => $_has(0);
  void clearToken() => clearField(1);

  String get usrId => $_getS(1, '');
  set usrId(String v) { $_setString(1, v); }
  bool hasUsrId() => $_has(1);
  void clearUsrId() => clearField(2);

  String get fId => $_getS(2, '');
  set fId(String v) { $_setString(2, v); }
  bool hasFId() => $_has(2);
  void clearFId() => clearField(3);

  int get indexBefore => $_get(3, 0);
  set indexBefore(int v) { $_setSignedInt32(3, v); }
  bool hasIndexBefore() => $_has(3);
  void clearIndexBefore() => clearField(4);

  int get indexAfter => $_get(4, 0);
  set indexAfter(int v) { $_setSignedInt32(4, v); }
  bool hasIndexAfter() => $_has(4);
  void clearIndexAfter() => clearField(5);
}

class Family extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('Family', package: const $pb.PackageName('hot'))
    ..aOS(1, 'fId')
    ..aOS(2, 'name')
    ..pp<User>(3, 'users', $pb.PbFieldType.PM, User.$checkItem, User.create)
    ..hasRequiredFields = false
  ;

  Family() : super();
  Family.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  Family.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  Family clone() => new Family()..mergeFromMessage(this);
  Family copyWith(void Function(Family) updates) => super.copyWith((message) => updates(message as Family));
  $pb.BuilderInfo get info_ => _i;
  static Family create() => new Family();
  static $pb.PbList<Family> createRepeated() => new $pb.PbList<Family>();
  static Family getDefault() => _defaultInstance ??= create()..freeze();
  static Family _defaultInstance;
  static void $checkItem(Family v) {
    if (v is! Family) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  String get fId => $_getS(0, '');
  set fId(String v) { $_setString(0, v); }
  bool hasFId() => $_has(0);
  void clearFId() => clearField(1);

  String get name => $_getS(1, '');
  set name(String v) { $_setString(1, v); }
  bool hasName() => $_has(1);
  void clearName() => clearField(2);

  List<User> get users => $_getList(2);
}

class WishItem extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('WishItem', package: const $pb.PackageName('hot'))
    ..aOS(1, 'wiId')
    ..aOS(2, 'name')
    ..hasRequiredFields = false
  ;

  WishItem() : super();
  WishItem.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  WishItem.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  WishItem clone() => new WishItem()..mergeFromMessage(this);
  WishItem copyWith(void Function(WishItem) updates) => super.copyWith((message) => updates(message as WishItem));
  $pb.BuilderInfo get info_ => _i;
  static WishItem create() => new WishItem();
  static $pb.PbList<WishItem> createRepeated() => new $pb.PbList<WishItem>();
  static WishItem getDefault() => _defaultInstance ??= create()..freeze();
  static WishItem _defaultInstance;
  static void $checkItem(WishItem v) {
    if (v is! WishItem) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  String get wiId => $_getS(0, '');
  set wiId(String v) { $_setString(0, v); }
  bool hasWiId() => $_has(0);
  void clearWiId() => clearField(1);

  String get name => $_getS(1, '');
  set name(String v) { $_setString(1, v); }
  bool hasName() => $_has(1);
  void clearName() => clearField(2);
}

class WishList extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('WishList', package: const $pb.PackageName('hot'))
    ..aOS(1, 'wlId')
    ..aOS(2, 'name')
    ..pp<WishItem>(3, 'wishItem', $pb.PbFieldType.PM, WishItem.$checkItem, WishItem.create)
    ..hasRequiredFields = false
  ;

  WishList() : super();
  WishList.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  WishList.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  WishList clone() => new WishList()..mergeFromMessage(this);
  WishList copyWith(void Function(WishList) updates) => super.copyWith((message) => updates(message as WishList));
  $pb.BuilderInfo get info_ => _i;
  static WishList create() => new WishList();
  static $pb.PbList<WishList> createRepeated() => new $pb.PbList<WishList>();
  static WishList getDefault() => _defaultInstance ??= create()..freeze();
  static WishList _defaultInstance;
  static void $checkItem(WishList v) {
    if (v is! WishList) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  String get wlId => $_getS(0, '');
  set wlId(String v) { $_setString(0, v); }
  bool hasWlId() => $_has(0);
  void clearWlId() => clearField(1);

  String get name => $_getS(1, '');
  set name(String v) { $_setString(1, v); }
  bool hasName() => $_has(1);
  void clearName() => clearField(2);

  List<WishItem> get wishItem => $_getList(2);
}

