import 'package:covid19/app/models/covid_state.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  CovidState covid;

  DetailPage(this.covid);
  @override
  _DetailPageState createState() => _DetailPageState(this.covid);
}

class _DetailPageState extends State<DetailPage> {
  CovidState covid;
  _DetailPageState(this.covid);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Detalhes"),
        ),
        body: ListView(
          children: <Widget>[
            Stack(
              alignment: Alignment.center,
              children: <Widget>[
                Container(
                  height: 150,
                  width: double.infinity,
                  margin: EdgeInsets.only(bottom: 20, top: 50, left: 20, right: 20),
                  padding: EdgeInsets.all(25.0),
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
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        child: Text(
                          "Estado: ${covid.state}",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        child: Text(
                          "Casos suspeitos: ${covid.suspects}",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        child: Text(
                          "Recuperados: ${covid.refuses}",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      )
                    ],
                  ),
                ),
                Positioned(
                  child: Container(
                    child: CircleAvatar(
                      radius: 20,
                      backgroundImage: NetworkImage(
                          "https://devarthurribeiro.github.io/covid19-brazil-api/static/flags/${covid.uf}.png"),
                    ),
                  ),
                  top: 30,
                )
              ],
            )
          ],
        ));
  }
}
