// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mobx_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$LocationController on _LocationController, Store {
  late final _$dataAtom =
      Atom(name: '_LocationController.data', context: context);

  @override
  List<LocationData> get data {
    _$dataAtom.reportRead();
    return super.data;
  }

  @override
  set data(List<LocationData> value) {
    _$dataAtom.reportWrite(value, super.data, () {
      super.data = value;
    });
  }

  late final _$getDataAsyncAction =
      AsyncAction('_LocationController.getData', context: context);

  @override
  Future getData() {
    return _$getDataAsyncAction.run(() => super.getData());
  }

  late final _$_LocationControllerActionController =
      ActionController(name: '_LocationController', context: context);

  @override
  void add(LocationData location) {
    final _$actionInfo = _$_LocationControllerActionController.startAction(
        name: '_LocationController.add');
    try {
      return super.add(location);
    } finally {
      _$_LocationControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  void delete(int id) {
    final _$actionInfo = _$_LocationControllerActionController.startAction(
        name: '_LocationController.delete');
    try {
      return super.delete(id);
    } finally {
      _$_LocationControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
data: ${data}
    ''';
  }
}
