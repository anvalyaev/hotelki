///
//  Generated code. Do not modify.
//  source: hot.proto
///
// ignore_for_file: non_constant_identifier_names,library_prefixes,unused_import

const Success$json = const {
  '1': 'Success',
  '2': const [
    const {'1': 'status', '3': 1, '4': 1, '5': 8, '10': 'status'},
    const {'1': 'err', '3': 2, '4': 1, '5': 5, '10': 'err'},
  ],
};

const Auth$json = const {
  '1': 'Auth',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'password', '3': 2, '4': 1, '5': 9, '10': 'password'},
    const {'1': 'phone', '3': 3, '4': 1, '5': 5, '10': 'phone'},
  ],
};

const Token$json = const {
  '1': 'Token',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

const User$json = const {
  '1': 'User',
  '2': const [
    const {'1': 'user_id', '3': 1, '4': 1, '5': 11, '6': '.hot.Token', '10': 'userId'},
    const {'1': 'auth', '3': 2, '4': 1, '5': 11, '6': '.hot.Auth', '10': 'auth'},
  ],
};

const WishListEvent$json = const {
  '1': 'WishListEvent',
  '2': const [
    const {'1': 'wishItem', '3': 1, '4': 1, '5': 11, '6': '.hot.WishItem', '10': 'wishItem'},
    const {'1': 'indexBefore', '3': 2, '4': 1, '5': 5, '10': 'indexBefore'},
    const {'1': 'indexAfter', '3': 3, '4': 1, '5': 5, '10': 'indexAfter'},
  ],
};

const WishFamilyEvent$json = const {
  '1': 'WishFamilyEvent',
  '2': const [
    const {'1': 'user', '3': 1, '4': 1, '5': 11, '6': '.hot.User', '10': 'user'},
    const {'1': 'indexBefore', '3': 2, '4': 1, '5': 5, '10': 'indexBefore'},
    const {'1': 'indexAfter', '3': 3, '4': 1, '5': 5, '10': 'indexAfter'},
  ],
};

const Family$json = const {
  '1': 'Family',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'users', '3': 3, '4': 3, '5': 11, '6': '.hot.User', '10': 'users'},
  ],
};

const WishItem$json = const {
  '1': 'WishItem',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
  ],
};

const WishList$json = const {
  '1': 'WishList',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'wishItem', '3': 3, '4': 3, '5': 11, '6': '.hot.WishItem', '10': 'wishItem'},
  ],
};

