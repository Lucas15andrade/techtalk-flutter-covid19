import 'package:covid19/app/models/covid_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class CovidWidget extends StatelessWidget {
  final CovidState covidState;

  const CovidWidget({@required this.covidState});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(bottom: 5, top: 5),
        padding: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(5.0),
          color: Colors.blue,
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.black12,
                blurRadius: 10.0,
                offset: Offset(0.0, 10.0))
          ],
        ),
        child: GestureDetector(
          onTap: () {
            Modular.to.pushNamed("/detalhes", arguments: covidState);
          },
          child: Row(
            children: <Widget>[
              CircleAvatar(
                radius: 20,
                backgroundImage: NetworkImage(
                    "https://devarthurribeiro.github.io/covid19-brazil-api/static/flags/${covidState.uf}.png"),
              ),
              SizedBox(
                width: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    child: Text(
                      "Casos confirmados: ${covidState.cases}",
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    child: Text(
                      "Mortes: ${covidState.deaths}",
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  )
                ],
              ),
            ],
          ),
        ));
  }
}
