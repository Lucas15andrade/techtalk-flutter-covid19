import 'package:covid19/app/models/covid_state.dart';
import 'package:dio/dio.dart';
import 'package:mobx/mobx.dart';

class CovidRepository {
  final Dio _dio;

  CovidRepository(this._dio);

  Future<ObservableList<CovidState>> fetch() async {
    try {
      List<CovidState> listaCovid = [];

      var response = await _dio.get("/v1");

      for (var json in response.data["data"] as List) {
        CovidState covid = CovidState.fromJson(json);
        listaCovid.add(covid);
      }

      return listaCovid.asObservable();
    } catch (e) {
      return null;
    }
  }
}
