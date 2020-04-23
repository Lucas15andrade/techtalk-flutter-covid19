import 'package:covid19/app/models/covid_state.dart';
import 'package:covid19/app/shared/covid_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'home_controller.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  HomeController _homeController = Modular.get<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            _homeController.adicionar();
          },
          backgroundColor: Colors.red,
          child: Icon(Icons.add),
        ),
        body: Observer(builder: (_) {
          if (_homeController.listCovid != null) {
            return RefreshIndicator(
                child: ListView.builder(
                    padding: EdgeInsets.all(20),
                    itemCount: _homeController.listCovid.length,
                    itemBuilder: (context, index) {
                      CovidState covid = _homeController.listCovid[index];
                      return CovidWidget(covidState: covid);
                    }),
                onRefresh: () async {
                  await _homeController.load();
                });
          } else {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Center(child: Text("Ops, deu erro!")),
                Center(
                  child: RaisedButton(
                    color: Colors.blue,
                    onPressed: () async {
                      await _homeController.load();
                    },
                    child: Text(
                      "Tentar novamente!",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                )
              ],
            );
          }
        }));
  }
}
