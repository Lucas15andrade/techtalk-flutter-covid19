// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on _HomeControllerBase, Store {
  final _$listCovidAtom = Atom(name: '_HomeControllerBase.listCovid');

  @override
  List<CovidState> get listCovid {
    _$listCovidAtom.context.enforceReadPolicy(_$listCovidAtom);
    _$listCovidAtom.reportObserved();
    return super.listCovid;
  }

  @override
  set listCovid(List<CovidState> value) {
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

  @override
  String toString() {
    final string = 'listCovid: ${listCovid.toString()}';
    return '{$string}';
  }
}
