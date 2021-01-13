import 'dart:async';
import 'package:rxdart/rxdart.dart';

// ignore: non_constant_identifier_names
StreamController cart_streamController = BehaviorSubject();
// ignore: non_constant_identifier_names
Stream cart_stream = cart_streamController.stream;
// ignore: non_constant_identifier_names
Sink cart_sink = cart_streamController.sink;
// ignore: non_constant_identifier_names
int cart_sum = 0;