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
  static final _$initAuthorize = new ClientMethod<Auth, User>(
      '/hot.Hot/initAuthorize',
      (Auth value) => value.writeToBuffer(),
      (List<int> value) => new User.fromBuffer(value));
  static final _$initRegister = new ClientMethod<Auth, User>(
      '/hot.Hot/initRegister',
      (Auth value) => value.writeToBuffer(),
      (List<int> value) => new User.fromBuffer(value));
  static final _$getWishList = new ClientMethod<Token, WishList>(
      '/hot.Hot/getWishList',
      (Token value) => value.writeToBuffer(),
      (List<int> value) => new WishList.fromBuffer(value));
  static final _$getFamily = new ClientMethod<Token, Family>(
      '/hot.Hot/getFamily',
      (Token value) => value.writeToBuffer(),
      (List<int> value) => new Family.fromBuffer(value));
  static final _$subscribeWishList = new ClientMethod<Token, WishListEvent>(
      '/hot.Hot/subscribeWishList',
      (Token value) => value.writeToBuffer(),
      (List<int> value) => new WishListEvent.fromBuffer(value));
  static final _$subscribeFamily = new ClientMethod<Token, WishFamilyEvent>(
      '/hot.Hot/subscribeFamily',
      (Token value) => value.writeToBuffer(),
      (List<int> value) => new WishFamilyEvent.fromBuffer(value));
  static final _$changeWishList = new ClientMethod<WishListEvent, Success>(
      '/hot.Hot/changeWishList',
      (WishListEvent value) => value.writeToBuffer(),
      (List<int> value) => new Success.fromBuffer(value));
  static final _$changeFamily = new ClientMethod<WishFamilyEvent, Success>(
      '/hot.Hot/changeFamily',
      (WishFamilyEvent value) => value.writeToBuffer(),
      (List<int> value) => new Success.fromBuffer(value));

  HotClient(ClientChannel channel, {CallOptions options})
      : super(channel, options: options);

  ResponseFuture<User> initAuthorize(Auth request, {CallOptions options}) {
    final call = $createCall(
        _$initAuthorize, new $async.Stream.fromIterable([request]),
        options: options);
    return new ResponseFuture(call);
  }

  ResponseFuture<User> initRegister(Auth request, {CallOptions options}) {
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

  ResponseFuture<Family> getFamily(Token request, {CallOptions options}) {
    final call = $createCall(
        _$getFamily, new $async.Stream.fromIterable([request]),
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

  ResponseStream<WishFamilyEvent> subscribeFamily(Token request,
      {CallOptions options}) {
    final call = $createCall(
        _$subscribeFamily, new $async.Stream.fromIterable([request]),
        options: options);
    return new ResponseStream(call);
  }

  ResponseFuture<Success> changeWishList(WishListEvent request,
      {CallOptions options}) {
    final call = $createCall(
        _$changeWishList, new $async.Stream.fromIterable([request]),
        options: options);
    return new ResponseFuture(call);
  }

  ResponseFuture<Success> changeFamily(WishFamilyEvent request,
      {CallOptions options}) {
    final call = $createCall(
        _$changeFamily, new $async.Stream.fromIterable([request]),
        options: options);
    return new ResponseFuture(call);
  }
}

abstract class HotServiceBase extends Service {
  String get $name => 'hot.Hot';

  HotServiceBase() {
    $addMethod(new ServiceMethod<Auth, User>(
        'initAuthorize',
        initAuthorize_Pre,
        false,
        false,
        (List<int> value) => new Auth.fromBuffer(value),
        (User value) => value.writeToBuffer()));
    $addMethod(new ServiceMethod<Auth, User>(
        'initRegister',
        initRegister_Pre,
        false,
        false,
        (List<int> value) => new Auth.fromBuffer(value),
        (User value) => value.writeToBuffer()));
    $addMethod(new ServiceMethod<Token, WishList>(
        'getWishList',
        getWishList_Pre,
        false,
        false,
        (List<int> value) => new Token.fromBuffer(value),
        (WishList value) => value.writeToBuffer()));
    $addMethod(new ServiceMethod<Token, Family>(
        'getFamily',
        getFamily_Pre,
        false,
        false,
        (List<int> value) => new Token.fromBuffer(value),
        (Family value) => value.writeToBuffer()));
    $addMethod(new ServiceMethod<Token, WishListEvent>(
        'subscribeWishList',
        subscribeWishList_Pre,
        false,
        true,
        (List<int> value) => new Token.fromBuffer(value),
        (WishListEvent value) => value.writeToBuffer()));
    $addMethod(new ServiceMethod<Token, WishFamilyEvent>(
        'subscribeFamily',
        subscribeFamily_Pre,
        false,
        true,
        (List<int> value) => new Token.fromBuffer(value),
        (WishFamilyEvent value) => value.writeToBuffer()));
    $addMethod(new ServiceMethod<WishListEvent, Success>(
        'changeWishList',
        changeWishList_Pre,
        false,
        false,
        (List<int> value) => new WishListEvent.fromBuffer(value),
        (Success value) => value.writeToBuffer()));
    $addMethod(new ServiceMethod<WishFamilyEvent, Success>(
        'changeFamily',
        changeFamily_Pre,
        false,
        false,
        (List<int> value) => new WishFamilyEvent.fromBuffer(value),
        (Success value) => value.writeToBuffer()));
  }

  $async.Future<User> initAuthorize_Pre(
      ServiceCall call, $async.Future request) async {
    return initAuthorize(call, await request);
  }

  $async.Future<User> initRegister_Pre(
      ServiceCall call, $async.Future request) async {
    return initRegister(call, await request);
  }

  $async.Future<WishList> getWishList_Pre(
      ServiceCall call, $async.Future request) async {
    return getWishList(call, await request);
  }

  $async.Future<Family> getFamily_Pre(
      ServiceCall call, $async.Future request) async {
    return getFamily(call, await request);
  }

  $async.Stream<WishListEvent> subscribeWishList_Pre(
      ServiceCall call, $async.Future request) async* {
    yield* subscribeWishList(call, (await request) as Token);
  }

  $async.Stream<WishFamilyEvent> subscribeFamily_Pre(
      ServiceCall call, $async.Future request) async* {
    yield* subscribeFamily(call, (await request) as Token);
  }

  $async.Future<Success> changeWishList_Pre(
      ServiceCall call, $async.Future request) async {
    return changeWishList(call, await request);
  }

  $async.Future<Success> changeFamily_Pre(
      ServiceCall call, $async.Future request) async {
    return changeFamily(call, await request);
  }

  $async.Future<User> initAuthorize(ServiceCall call, Auth request);
  $async.Future<User> initRegister(ServiceCall call, Auth request);
  $async.Future<WishList> getWishList(ServiceCall call, Token request);
  $async.Future<Family> getFamily(ServiceCall call, Token request);
  $async.Stream<WishListEvent> subscribeWishList(
      ServiceCall call, Token request);
  $async.Stream<WishFamilyEvent> subscribeFamily(
      ServiceCall call, Token request);
  $async.Future<Success> changeWishList(
      ServiceCall call, WishListEvent request);
  $async.Future<Success> changeFamily(
      ServiceCall call, WishFamilyEvent request);
}
