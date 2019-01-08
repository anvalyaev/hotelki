///
//  Generated code. Do not modify.
//  source: hot.proto
///
// ignore_for_file: non_constant_identifier_names,library_prefixes,unused_import

const Token$json = const {
  '1': 'Token',
  '2': const [
    const {'1': 'usr_id', '3': 1, '4': 1, '5': 9, '10': 'usrId'},
  ],
};

const Empty$json = const {
  '1': 'Empty',
};

const AuthorizeRequest$json = const {
  '1': 'AuthorizeRequest',
  '2': const [
    const {'1': 'email', '3': 1, '4': 1, '5': 9, '10': 'email'},
    const {'1': 'password', '3': 2, '4': 1, '5': 9, '10': 'password'},
  ],
};

const AuthorizeAnswer$json = const {
  '1': 'AuthorizeAnswer',
  '2': const [
    const {'1': 'err', '3': 1, '4': 1, '5': 5, '10': 'err'},
    const {'1': 'user', '3': 2, '4': 1, '5': 11, '6': '.hot.User', '10': 'user'},
  ],
};

const RegisterRequest$json = const {
  '1': 'RegisterRequest',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'gender', '3': 2, '4': 1, '5': 9, '10': 'gender'},
    const {'1': 'phone', '3': 3, '4': 1, '5': 9, '10': 'phone'},
    const {'1': 'email', '3': 4, '4': 1, '5': 9, '10': 'email'},
    const {'1': 'birthdate', '3': 5, '4': 1, '5': 3, '10': 'birthdate'},
    const {'1': 'password', '3': 6, '4': 1, '5': 9, '10': 'password'},
  ],
};

const RegisterAnswer$json = const {
  '1': 'RegisterAnswer',
  '2': const [
    const {'1': 'err', '3': 1, '4': 1, '5': 5, '10': 'err'},
    const {'1': 'user', '3': 2, '4': 1, '5': 11, '6': '.hot.User', '10': 'user'},
  ],
};

const User$json = const {
  '1': 'User',
  '2': const [
    const {'1': 'usr_id', '3': 1, '4': 1, '5': 9, '10': 'usrId'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'gender', '3': 3, '4': 1, '5': 9, '10': 'gender'},
    const {'1': 'phone', '3': 4, '4': 1, '5': 9, '10': 'phone'},
    const {'1': 'email', '3': 5, '4': 1, '5': 9, '10': 'email'},
    const {'1': 'birthdate', '3': 6, '4': 1, '5': 3, '10': 'birthdate'},
    const {'1': 'password', '3': 7, '4': 1, '5': 9, '10': 'password'},
  ],
};

const WishListEvent$json = const {
  '1': 'WishListEvent',
  '2': const [
    const {'1': 'token', '3': 1, '4': 1, '5': 9, '10': 'token'},
    const {'1': 'indexBefore', '3': 2, '4': 1, '5': 5, '10': 'indexBefore'},
    const {'1': 'indexAfter', '3': 3, '4': 1, '5': 5, '10': 'indexAfter'},
    const {'1': 'wishItem', '3': 4, '4': 1, '5': 11, '6': '.hot.WishItem', '10': 'wishItem'},
  ],
};

const WishFamilyEvent$json = const {
  '1': 'WishFamilyEvent',
  '2': const [
    const {'1': 'token', '3': 1, '4': 1, '5': 9, '10': 'token'},
    const {'1': 'usr_id', '3': 2, '4': 1, '5': 9, '10': 'usrId'},
    const {'1': 'f_id', '3': 3, '4': 1, '5': 9, '10': 'fId'},
    const {'1': 'indexBefore', '3': 4, '4': 1, '5': 5, '10': 'indexBefore'},
    const {'1': 'indexAfter', '3': 5, '4': 1, '5': 5, '10': 'indexAfter'},
  ],
};

const Family$json = const {
  '1': 'Family',
  '2': const [
    const {'1': 'f_id', '3': 1, '4': 1, '5': 9, '10': 'fId'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'users', '3': 3, '4': 3, '5': 11, '6': '.hot.User', '10': 'users'},
  ],
};

const WishItem$json = const {
  '1': 'WishItem',
  '2': const [
    const {'1': 'wi_id', '3': 1, '4': 1, '5': 9, '10': 'wiId'},
    const {'1': 'title', '3': 2, '4': 1, '5': 9, '10': 'title'},
    const {'1': 'description', '3': 3, '4': 1, '5': 9, '10': 'description'},
  ],
};

const WishList$json = const {
  '1': 'WishList',
  '2': const [
    const {'1': 'wl_id', '3': 1, '4': 1, '5': 9, '10': 'wlId'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'wishItem', '3': 3, '4': 3, '5': 11, '6': '.hot.WishItem', '10': 'wishItem'},
  ],
};

