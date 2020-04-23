import 'package:covid19/app/models/covid_state.dart';
import 'package:covid19/app/repositories/covid_repository.dart';
import 'package:mobx/mobx.dart';

part 'home_controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  final CovidRepository _covidRepository;

  _HomeControllerBase(this._covidRepository) {
    load();
  }

  @observable
  ObservableList<CovidState> listCovid = ObservableList<CovidState>();

  @action
  Future load() async {
    listCovid = await _covidRepository.fetch();
  }

  @action
  void adicionar() {
    listCovid.add(CovidState(
        cases: 20,
        datetime: "asasa",
        uid: 50,
        uf: "RN",
        deaths: 60,
        refuses: 40,
        state: "SHOW",
        suspects: 10));
  }
}
