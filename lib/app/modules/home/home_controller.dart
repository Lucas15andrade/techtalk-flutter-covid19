import 'package:covid19/app/models/covid_state.dart';
import 'package:covid19/app/repositories/covid_repository.dart';
import 'package:mobx/mobx.dart';

part 'home_controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  final CovidRepository _covidRepository;

  _HomeControllerBase(this._covidRepository){
    load();
  }

  @observable
  List<CovidState> listCovid;

  @action
  Future load() async {
    listCovid = await _covidRepository.fetch();
  }
}
