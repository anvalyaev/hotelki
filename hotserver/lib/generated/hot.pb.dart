///
//  Generated code. Do not modify.
//  source: hot.proto
///
// ignore_for_file: non_constant_identifier_names,library_prefixes,unused_import

// ignore: UNUSED_SHOWN_NAME
import 'dart:core' show int, bool, double, String, List, Map, override;

import 'package:fixnum/fixnum.dart';
import 'package:protobuf/protobuf.dart' as $pb;

class Token extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('Token', package: const $pb.PackageName('hot'))
    ..aOS(1, 'usrId')
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

  String get usrId => $_getS(0, '');
  set usrId(String v) { $_setString(0, v); }
  bool hasUsrId() => $_has(0);
  void clearUsrId() => clearField(1);
}

class Empty extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('Empty', package: const $pb.PackageName('hot'))
    ..hasRequiredFields = false
  ;

  Empty() : super();
  Empty.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  Empty.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  Empty clone() => new Empty()..mergeFromMessage(this);
  Empty copyWith(void Function(Empty) updates) => super.copyWith((message) => updates(message as Empty));
  $pb.BuilderInfo get info_ => _i;
  static Empty create() => new Empty();
  static $pb.PbList<Empty> createRepeated() => new $pb.PbList<Empty>();
  static Empty getDefault() => _defaultInstance ??= create()..freeze();
  static Empty _defaultInstance;
  static void $checkItem(Empty v) {
    if (v is! Empty) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }
}

class AuthorizeRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('AuthorizeRequest', package: const $pb.PackageName('hot'))
    ..aOS(1, 'email')
    ..aOS(2, 'password')
    ..hasRequiredFields = false
  ;

  AuthorizeRequest() : super();
  AuthorizeRequest.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  AuthorizeRequest.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  AuthorizeRequest clone() => new AuthorizeRequest()..mergeFromMessage(this);
  AuthorizeRequest copyWith(void Function(AuthorizeRequest) updates) => super.copyWith((message) => updates(message as AuthorizeRequest));
  $pb.BuilderInfo get info_ => _i;
  static AuthorizeRequest create() => new AuthorizeRequest();
  static $pb.PbList<AuthorizeRequest> createRepeated() => new $pb.PbList<AuthorizeRequest>();
  static AuthorizeRequest getDefault() => _defaultInstance ??= create()..freeze();
  static AuthorizeRequest _defaultInstance;
  static void $checkItem(AuthorizeRequest v) {
    if (v is! AuthorizeRequest) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  String get email => $_getS(0, '');
  set email(String v) { $_setString(0, v); }
  bool hasEmail() => $_has(0);
  void clearEmail() => clearField(1);

  String get password => $_getS(1, '');
  set password(String v) { $_setString(1, v); }
  bool hasPassword() => $_has(1);
  void clearPassword() => clearField(2);
}

class AuthorizeAnswer extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('AuthorizeAnswer', package: const $pb.PackageName('hot'))
    ..a<int>(1, 'err', $pb.PbFieldType.O3)
    ..a<User>(2, 'user', $pb.PbFieldType.OM, User.getDefault, User.create)
    ..hasRequiredFields = false
  ;

  AuthorizeAnswer() : super();
  AuthorizeAnswer.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  AuthorizeAnswer.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  AuthorizeAnswer clone() => new AuthorizeAnswer()..mergeFromMessage(this);
  AuthorizeAnswer copyWith(void Function(AuthorizeAnswer) updates) => super.copyWith((message) => updates(message as AuthorizeAnswer));
  $pb.BuilderInfo get info_ => _i;
  static AuthorizeAnswer create() => new AuthorizeAnswer();
  static $pb.PbList<AuthorizeAnswer> createRepeated() => new $pb.PbList<AuthorizeAnswer>();
  static AuthorizeAnswer getDefault() => _defaultInstance ??= create()..freeze();
  static AuthorizeAnswer _defaultInstance;
  static void $checkItem(AuthorizeAnswer v) {
    if (v is! AuthorizeAnswer) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  int get err => $_get(0, 0);
  set err(int v) { $_setSignedInt32(0, v); }
  bool hasErr() => $_has(0);
  void clearErr() => clearField(1);

  User get user => $_getN(1);
  set user(User v) { setField(2, v); }
  bool hasUser() => $_has(1);
  void clearUser() => clearField(2);
}

class RegisterRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('RegisterRequest', package: const $pb.PackageName('hot'))
    ..aOS(1, 'name')
    ..aOS(2, 'gender')
    ..aOS(3, 'phone')
    ..aOS(4, 'email')
    ..aInt64(5, 'birthdate')
    ..aOS(6, 'password')
    ..hasRequiredFields = false
  ;

  RegisterRequest() : super();
  RegisterRequest.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  RegisterRequest.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  RegisterRequest clone() => new RegisterRequest()..mergeFromMessage(this);
  RegisterRequest copyWith(void Function(RegisterRequest) updates) => super.copyWith((message) => updates(message as RegisterRequest));
  $pb.BuilderInfo get info_ => _i;
  static RegisterRequest create() => new RegisterRequest();
  static $pb.PbList<RegisterRequest> createRepeated() => new $pb.PbList<RegisterRequest>();
  static RegisterRequest getDefault() => _defaultInstance ??= create()..freeze();
  static RegisterRequest _defaultInstance;
  static void $checkItem(RegisterRequest v) {
    if (v is! RegisterRequest) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  String get name => $_getS(0, '');
  set name(String v) { $_setString(0, v); }
  bool hasName() => $_has(0);
  void clearName() => clearField(1);

  String get gender => $_getS(1, '');
  set gender(String v) { $_setString(1, v); }
  bool hasGender() => $_has(1);
  void clearGender() => clearField(2);

  String get phone => $_getS(2, '');
  set phone(String v) { $_setString(2, v); }
  bool hasPhone() => $_has(2);
  void clearPhone() => clearField(3);

  String get email => $_getS(3, '');
  set email(String v) { $_setString(3, v); }
  bool hasEmail() => $_has(3);
  void clearEmail() => clearField(4);

  Int64 get birthdate => $_getI64(4);
  set birthdate(Int64 v) { $_setInt64(4, v); }
  bool hasBirthdate() => $_has(4);
  void clearBirthdate() => clearField(5);

  String get password => $_getS(5, '');
  set password(String v) { $_setString(5, v); }
  bool hasPassword() => $_has(5);
  void clearPassword() => clearField(6);
}

class RegisterAnswer extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('RegisterAnswer', package: const $pb.PackageName('hot'))
    ..a<int>(1, 'err', $pb.PbFieldType.O3)
    ..a<User>(2, 'user', $pb.PbFieldType.OM, User.getDefault, User.create)
    ..hasRequiredFields = false
  ;

  RegisterAnswer() : super();
  RegisterAnswer.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  RegisterAnswer.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  RegisterAnswer clone() => new RegisterAnswer()..mergeFromMessage(this);
  RegisterAnswer copyWith(void Function(RegisterAnswer) updates) => super.copyWith((message) => updates(message as RegisterAnswer));
  $pb.BuilderInfo get info_ => _i;
  static RegisterAnswer create() => new RegisterAnswer();
  static $pb.PbList<RegisterAnswer> createRepeated() => new $pb.PbList<RegisterAnswer>();
  static RegisterAnswer getDefault() => _defaultInstance ??= create()..freeze();
  static RegisterAnswer _defaultInstance;
  static void $checkItem(RegisterAnswer v) {
    if (v is! RegisterAnswer) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  int get err => $_get(0, 0);
  set err(int v) { $_setSignedInt32(0, v); }
  bool hasErr() => $_has(0);
  void clearErr() => clearField(1);

  User get user => $_getN(1);
  set user(User v) { setField(2, v); }
  bool hasUser() => $_has(1);
  void clearUser() => clearField(2);
}

class User extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('User', package: const $pb.PackageName('hot'))
    ..aOS(1, 'usrId')
    ..aOS(2, 'name')
    ..aOS(3, 'gender')
    ..aOS(4, 'phone')
    ..aOS(5, 'email')
    ..aInt64(6, 'birthdate')
    ..aOS(7, 'password')
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

  String get gender => $_getS(2, '');
  set gender(String v) { $_setString(2, v); }
  bool hasGender() => $_has(2);
  void clearGender() => clearField(3);

  String get phone => $_getS(3, '');
  set phone(String v) { $_setString(3, v); }
  bool hasPhone() => $_has(3);
  void clearPhone() => clearField(4);

  String get email => $_getS(4, '');
  set email(String v) { $_setString(4, v); }
  bool hasEmail() => $_has(4);
  void clearEmail() => clearField(5);

  Int64 get birthdate => $_getI64(5);
  set birthdate(Int64 v) { $_setInt64(5, v); }
  bool hasBirthdate() => $_has(5);
  void clearBirthdate() => clearField(6);

  String get password => $_getS(6, '');
  set password(String v) { $_setString(6, v); }
  bool hasPassword() => $_has(6);
  void clearPassword() => clearField(7);
}

class WishListEvent extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('WishListEvent', package: const $pb.PackageName('hot'))
    ..aOS(1, 'token')
    ..a<int>(2, 'indexBefore', $pb.PbFieldType.O3)
    ..a<int>(3, 'indexAfter', $pb.PbFieldType.O3)
    ..a<WishItem>(4, 'wishItem', $pb.PbFieldType.OM, WishItem.getDefault, WishItem.create)
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

  int get indexBefore => $_get(1, 0);
  set indexBefore(int v) { $_setSignedInt32(1, v); }
  bool hasIndexBefore() => $_has(1);
  void clearIndexBefore() => clearField(2);

  int get indexAfter => $_get(2, 0);
  set indexAfter(int v) { $_setSignedInt32(2, v); }
  bool hasIndexAfter() => $_has(2);
  void clearIndexAfter() => clearField(3);

  WishItem get wishItem => $_getN(3);
  set wishItem(WishItem v) { setField(4, v); }
  bool hasWishItem() => $_has(3);
  void clearWishItem() => clearField(4);
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
    ..aOS(2, 'title')
    ..aOS(3, 'description')
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

  String get title => $_getS(1, '');
  set title(String v) { $_setString(1, v); }
  bool hasTitle() => $_has(1);
  void clearTitle() => clearField(2);

  String get description => $_getS(2, '');
  set description(String v) { $_setString(2, v); }
  bool hasDescription() => $_has(2);
  void clearDescription() => clearField(3);
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

