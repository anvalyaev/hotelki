///
//  Generated code. Do not modify.
//  source: hot.proto
///
// ignore_for_file: non_constant_identifier_names,library_prefixes,unused_import

import 'dart:async' as $async;

import 'package:grpc/grpc.dart';

import 'hot.pb.dart';
export 'hot.pb.dart';

class HotClient extends Client {
  static final _$initAuthorize =
      new ClientMethod<AuthorizeRequest, AuthorizeAnswer>(
          '/hot.Hot/initAuthorize',
          (AuthorizeRequest value) => value.writeToBuffer(),
          (List<int> value) => new AuthorizeAnswer.fromBuffer(value));
  static final _$initRegister =
      new ClientMethod<RegisterRequest, RegisterAnswer>(
          '/hot.Hot/initRegister',
          (RegisterRequest value) => value.writeToBuffer(),
          (List<int> value) => new RegisterAnswer.fromBuffer(value));
  static final _$getWishList = new ClientMethod<Token, WishList>(
      '/hot.Hot/getWishList',
      (Token value) => value.writeToBuffer(),
      (List<int> value) => new WishList.fromBuffer(value));
  static final _$subscribeWishList = new ClientMethod<Token, WishListEvent>(
      '/hot.Hot/subscribeWishList',
      (Token value) => value.writeToBuffer(),
      (List<int> value) => new WishListEvent.fromBuffer(value));
  static final _$changeWishList = new ClientMethod<WishListEvent, Empty>(
      '/hot.Hot/changeWishList',
      (WishListEvent value) => value.writeToBuffer(),
      (List<int> value) => new Empty.fromBuffer(value));

  HotClient(ClientChannel channel, {CallOptions options})
      : super(channel, options: options);

  ResponseFuture<AuthorizeAnswer> initAuthorize(AuthorizeRequest request,
      {CallOptions options}) {
    final call = $createCall(
        _$initAuthorize, new $async.Stream.fromIterable([request]),
        options: options);
    return new ResponseFuture(call);
  }

  ResponseFuture<RegisterAnswer> initRegister(RegisterRequest request,
      {CallOptions options}) {
    final call = $createCall(
        _$initRegister, new $async.Stream.fromIterable([request]),
        options: options);
    return new ResponseFuture(call);
  }

  ResponseFuture<WishList> getWishList(Token request, {CallOptions options}) {
    final call = $createCall(
        _$getWishList, new $async.Stream.fromIterable([request]),
        options: options);
    return new ResponseFuture(call);
  }

  ResponseStream<WishListEvent> subscribeWishList(Token request,
      {CallOptions options}) {
    final call = $createCall(
        _$subscribeWishList, new $async.Stream.fromIterable([request]),
        options: options);
    return new ResponseStream(call);
  }

  ResponseFuture<Empty> changeWishList(WishListEvent request,
      {CallOptions options}) {
    final call = $createCall(
        _$changeWishList, new $async.Stream.fromIterable([request]),
        options: options);
    return new ResponseFuture(call);
  }
}

abstract class HotServiceBase extends Service {
  String get $name => 'hot.Hot';

  HotServiceBase() {
    $addMethod(new ServiceMethod<AuthorizeRequest, AuthorizeAnswer>(
        'initAuthorize',
        initAuthorize_Pre,
        false,
        false,
        (List<int> value) => new AuthorizeRequest.fromBuffer(value),
        (AuthorizeAnswer value) => value.writeToBuffer()));
    $addMethod(new ServiceMethod<RegisterRequest, RegisterAnswer>(
        'initRegister',
        initRegister_Pre,
        false,
        false,
        (List<int> value) => new RegisterRequest.fromBuffer(value),
        (RegisterAnswer value) => value.writeToBuffer()));
    $addMethod(new ServiceMethod<Token, WishList>(
        'getWishList',
        getWishList_Pre,
        false,
        false,
        (List<int> value) => new Token.fromBuffer(value),
        (WishList value) => value.writeToBuffer()));
    $addMethod(new ServiceMethod<Token, WishListEvent>(
        'subscribeWishList',
        subscribeWishList_Pre,
        false,
        true,
        (List<int> value) => new Token.fromBuffer(value),
        (WishListEvent value) => value.writeToBuffer()));
    $addMethod(new ServiceMethod<WishListEvent, Empty>(
        'changeWishList',
        changeWishList_Pre,
        false,
        false,
        (List<int> value) => new WishListEvent.fromBuffer(value),
        (Empty value) => value.writeToBuffer()));
  }

  $async.Future<AuthorizeAnswer> initAuthorize_Pre(
      ServiceCall call, $async.Future request) async {
    return initAuthorize(call, await request);
  }

  $async.Future<RegisterAnswer> initRegister_Pre(
      ServiceCall call, $async.Future request) async {
    return initRegister(call, await request);
  }

  $async.Future<WishList> getWishList_Pre(
      ServiceCall call, $async.Future request) async {
    return getWishList(call, await request);
  }

  $async.Stream<WishListEvent> subscribeWishList_Pre(
      ServiceCall call, $async.Future request) async* {
    yield* subscribeWishList(call, (await request) as Token);
  }

  $async.Future<Empty> changeWishList_Pre(
      ServiceCall call, $async.Future request) async {
    return changeWishList(call, await request);
  }

  $async.Future<AuthorizeAnswer> initAuthorize(
      ServiceCall call, AuthorizeRequest request);
  $async.Future<RegisterAnswer> initRegister(
      ServiceCall call, RegisterRequest request);
  $async.Future<WishList> getWishList(ServiceCall call, Token request);
  $async.Stream<WishListEvent> subscribeWishList(
      ServiceCall call, Token request);
  $async.Future<Empty> changeWishList(ServiceCall call, WishListEvent request);
}
