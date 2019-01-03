///
//  Generated code. Do not modify.
//  source: hot.proto
///
// ignore_for_file: non_constant_identifier_names,library_prefixes,unused_import

const Token$json = const {
  '1': 'Token',
  '2': const [
    const {'1': 'token', '3': 1, '4': 1, '5': 9, '10': 'token'},
  ],
};

const Success$json = const {
  '1': 'Success',
  '2': const [
    const {'1': 'status', '3': 1, '4': 1, '5': 8, '10': 'status'},
    const {'1': 'err', '3': 2, '4': 1, '5': 5, '10': 'err'},
  ],
};

const AuthRequest$json = const {
  '1': 'AuthRequest',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'password', '3': 2, '4': 1, '5': 9, '10': 'password'},
    const {'1': 'phone', '3': 3, '4': 1, '5': 9, '10': 'phone'},
  ],
};

const AuthAnswer$json = const {
  '1': 'AuthAnswer',
  '2': const [
    const {'1': 'token', '3': 1, '4': 1, '5': 9, '10': 'token'},
    const {'1': 'status', '3': 2, '4': 1, '5': 8, '10': 'status'},
    const {'1': 'err', '3': 3, '4': 1, '5': 5, '10': 'err'},
    const {'1': 'user', '3': 4, '4': 1, '5': 11, '6': '.hot.User', '10': 'user'},
  ],
};

const User$json = const {
  '1': 'User',
  '2': const [
    const {'1': 'usr_id', '3': 1, '4': 1, '5': 9, '10': 'usrId'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'password', '3': 3, '4': 1, '5': 9, '10': 'password'},
    const {'1': 'phone', '3': 4, '4': 1, '5': 9, '10': 'phone'},
  ],
};

const WishListEvent$json = const {
  '1': 'WishListEvent',
  '2': const [
    const {'1': 'token', '3': 1, '4': 1, '5': 9, '10': 'token'},
    const {'1': 'wi_id', '3': 2, '4': 1, '5': 9, '10': 'wiId'},
    const {'1': 'wl_id', '3': 3, '4': 1, '5': 9, '10': 'wlId'},
    const {'1': 'indexBefore', '3': 4, '4': 1, '5': 5, '10': 'indexBefore'},
    const {'1': 'indexAfter', '3': 5, '4': 1, '5': 5, '10': 'indexAfter'},
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
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
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

