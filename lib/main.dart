import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            primaryColor: Colors.amber, accentColor: Colors.amberAccent),
        home: HomeView());
  }
}

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                expandedHeight: 80,
                pinned: true,
                floating: false,
                flexibleSpace: FlexibleSpaceBar(
                  centerTitle: true,
                  title: Image.asset(
                    "assets/logo-zenius.png",
                    width: 90,
                  ),
                  background: Image.network(
                    "https://images.pexels.com/photos/396547/pexels-photo-396547.jpeg?auto=compress&cs=tinysrgb&h=350",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ];
          },
          body: BodyHome()),
    );
  }
}

class BodyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Container(
            color: Colors.amber,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.fromLTRB(12, 8, 12, 0),
                  child: Text("Hi, Fakhri Abdullah"),
                ),
                Identity(),
                Search(),
              ],
            )
        )
      ],
    );
  }
}

class Identity extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
        color: Colors.amberAccent,
        elevation: 0,
        margin: EdgeInsets.fromLTRB(12, 4, 12, 4),
        child: Padding(
          padding: EdgeInsets.all(8),
          child: Row(
            children: <Widget>[
              Flexible(child: Image.asset("assets/logo-zenius.png"), flex: 1),
              Flexible(
                  child: Padding(
                      padding: EdgeInsets.fromLTRB(8, 0, 0, 0),
                      child: Column(
                        children: <Widget>[
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Text("fakhri.abdullah9496@gmail.com",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontStyle: FontStyle.italic))),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Text("Fakhri Abdullah",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold))),
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 8, 0, 0),
                            child: Row(
                              children: <Widget>[
                                Flexible(
                                    child: Text("KTSP",
                                        style: TextStyle(fontSize: 11)),
                                    flex: 1,
                                    fit: FlexFit.tight),
                                Flexible(
                                    child: Text("Reguler Member",
                                        style: TextStyle(fontSize: 11)),
                                    flex: 1,
                                    fit: FlexFit.tight)
                              ],
                            ),
                          ),
                          Row(
                            children: <Widget>[
                              Flexible(
                                  child: Text("Alumni",
                                      style: TextStyle(fontSize: 11)),
                                  flex: 1,
                                  fit: FlexFit.tight),
                              Flexible(
                                  child: Text("Kelas 12 Umum",
                                      style: TextStyle(fontSize: 11)),
                                  flex: 1,
                                  fit: FlexFit.tight)
                            ],
                          )
                        ],
                      )),
                  flex: 2),
            ],
          ),
        ));
  }
}

class Search extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(12, 8, 12, 8),
      child: TextField(
          decoration: new InputDecoration(
            contentPadding: EdgeInsets.all(12),
            border: border,
            focusedBorder: border,
            enabledBorder: border,
            hintText: 'Search',
              prefixIcon: Icon(Icons.search,
                color: Colors.white,)
          )
      ),
    );
  }

  final border = OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(30.0)),
      borderSide: BorderSide(
        width: 2,
        color: Colors.yellow,
      )
  );
}
