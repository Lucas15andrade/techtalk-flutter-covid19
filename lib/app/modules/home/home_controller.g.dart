// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on _HomeControllerBase, Store {
  final _$listCovidAtom = Atom(name: '_HomeControllerBase.listCovid');

  @override
  ObservableList<CovidState> get listCovid {
    _$listCovidAtom.context.enforceReadPolicy(_$listCovidAtom);
    _$listCovidAtom.reportObserved();
    return super.listCovid;
  }

  @override
  set listCovid(ObservableList<CovidState> value) {
    _$listCovidAtom.context.conditionallyRunInAction(() {
      super.listCovid = value;
      _$listCovidAtom.reportChanged();
    }, _$listCovidAtom, name: '${_$listCovidAtom.name}_set');
  }

  final _$loadAsyncAction = AsyncAction('load');

  @override
  Future<dynamic> load() {
    return _$loadAsyncAction.run(() => super.load());
  }

  final _$_HomeControllerBaseActionController =
      ActionController(name: '_HomeControllerBase');

  @override
  void adicionar() {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction();
    try {
      return super.adicionar();
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string = 'listCovid: ${listCovid.toString()}';
    return '{$string}';
  }
}
