import 'package:covid19/app/modules/home/home_controller.dart';
import 'package:covid19/app/modules/home/pages/detail_page.dart';
import 'package:covid19/app/repositories/covid_repository.dart';
import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:covid19/app/modules/home/home_page.dart';

class HomeModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => Dio(BaseOptions(
            baseUrl: "https://covid19-brazil-api.now.sh/api/report"))),
        Bind((i) => CovidRepository(i.get<Dio>())),
        Bind((i) => HomeController(i.get<CovidRepository>())),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => HomePage()),
        Router("/detalhes", child: (_, args) => DetailPage(args.data))
      ];

  static Inject get to => Inject<HomeModule>.of();
}
