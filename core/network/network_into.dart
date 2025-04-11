import 'package:acatools_app/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:acatools_app/main.dart';

// For checking internet connectivity

abstract class NetworkInfoI {
  Future<bool> isConnected();

  Future<ConnectivityResult> get connectivityResult;

  Stream<ConnectivityResult> get onConnectivityChanged;
}

class NetworkInfo implements NetworkInfoI {
  Connectivity connectivity;
  NetworkInfo(this.connectivity);

  ///checks internet is connected or not

  ///returns [true] if internet is connected

  ///else it will return [false]

  @override
  Future<bool> isConnected() async {
    final result = await connectivity.checkConnectivity();
    if (result != ConnectivityResult.none) {
      return true;
    }
    return false;
  }

// to check type of internet connectivity

  @override
  Future<ConnectivityResult> get connectivityResult async {
    final result = await connectivity.checkConnectivity();
    return result.first;
  }

//check the type on internet connection on changed of internet connection
  @override
  Stream<ConnectivityResult> get onConnectivityChanged =>
      connectivity.onConnectivityChanged.map((event) => event.first);
}

abstract class Failure {}

// General failures

class ServerFailure extends Failure {}

class CacheFailure extends Failure {}

class NetworkFailure extends Failure {}

class ServerException implements Exception {}

class CacheException implements Exception {}

class NetworkException implements Exception {
  late String _message;
  NoInternetException([String message = 'NoInternetException Occurred']) {
    this._message = message;
  }

  @override
  String toString() {
    return _message;
  }
}

@override
Stream<List<ConnectivityResult>> get onConnectivityChanged =>
    Connectivity().onConnectivityChanged;

///can be used for throwing [NoInternetException] class NoInternetException implements Exception {



