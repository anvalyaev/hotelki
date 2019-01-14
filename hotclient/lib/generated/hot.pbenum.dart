///
//  Generated code. Do not modify.
//  source: hot.proto
///
// ignore_for_file: non_constant_identifier_names,library_prefixes,unused_import

// ignore_for_file: UNDEFINED_SHOWN_NAME,UNUSED_SHOWN_NAME
import 'dart:core' show int, dynamic, String, List, Map;
import 'package:protobuf/protobuf.dart' as $pb;

class WishListEvent_Action extends $pb.ProtobufEnum {
  static const WishListEvent_Action ADD = const WishListEvent_Action._(0, 'ADD');
  static const WishListEvent_Action REMOVE = const WishListEvent_Action._(1, 'REMOVE');
  static const WishListEvent_Action UPDATE = const WishListEvent_Action._(2, 'UPDATE');

  static const List<WishListEvent_Action> values = const <WishListEvent_Action> [
    ADD,
    REMOVE,
    UPDATE,
  ];

  static final Map<int, WishListEvent_Action> _byValue = $pb.ProtobufEnum.initByValue(values);
  static WishListEvent_Action valueOf(int value) => _byValue[value];
  static void $checkItem(WishListEvent_Action v) {
    if (v is! WishListEvent_Action) $pb.checkItemFailed(v, 'WishListEvent_Action');
  }

  const WishListEvent_Action._(int v, String n) : super(v, n);
}

