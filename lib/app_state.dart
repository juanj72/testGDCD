import 'package:flutter/material.dart';
import 'backend/api_requests/api_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';
import 'dart:convert';

class FFAppState extends ChangeNotifier {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  String _correo = '';
  String get correo => _correo;
  set correo(String _value) {
    _correo = _value;
  }

  String _Token = '';
  String get Token => _Token;
  set Token(String _value) {
    _Token = _value;
  }

  dynamic _imc;
  dynamic get imc => _imc;
  set imc(dynamic _value) {
    _imc = _value;
  }

  String _iduser = '';
  String get iduser => _iduser;
  set iduser(String _value) {
    _iduser = _value;
  }

  int _personaid = 0;
  int get personaid => _personaid;
  set personaid(int _value) {
    _personaid = _value;
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
