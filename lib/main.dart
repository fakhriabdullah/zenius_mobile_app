import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zenius_mobile_app/form_validator.dart';

void main() => runApp(Main());

class Main extends StatelessWidget {
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
                expandedHeight: 110,
                pinned: true,
                floating: false,
                flexibleSpace: FlexibleSpaceBar(
                  centerTitle: true,
                  title: Image.asset(
                    "assets/logo-zenius.png",
                    width: 90,
                  ),
                  background: Image.network(
                    "https://www.redwallpapers.com/public/redwallpapers-large-thumb/polygonal-triangles-shades-yellow-background-geometric-free-stock-photos-images-hd-wallpaper.jpg",
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
                Identity(),
                Search(),
              ],
            )
        ),
        Category(),
        Container(
          margin: EdgeInsets.all(18),
          child: RaisedButton(
              textColor: Colors.white,
              color: Colors.orange,
              child: Text('Go to Form Validation'),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => FormValidator()));
              }),
        )
      ],
    );
  }
}

class Recommendation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        children: <Widget>[
          Container(
              width: 160,
              child: Card(
                  child: Column(
                    children: <Widget>[
                      Image.asset('assets/eduk.png'),
                      Text("HALOOO")
                    ],
                  )))
        ]
    );
  }

}

class Identity extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
        color: Colors.amberAccent,
        elevation: 0,
        margin: EdgeInsets.fromLTRB(12, 12, 12, 4),
        child: Padding(
          padding: EdgeInsets.all(8),
          child: Row(
            children: <Widget>[
//              Flexible(child: Icon(Icons.person_outline, color: Colors.white,),
//                  flex: 1),
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

class Category extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.fromLTRB(8, 12, 8, 12),
        child: Row(
          children: <Widget>[
            Expanded(
                child: Column(
                    children: <Widget>[
                      Card(
                        elevation: 0,
                        clipBehavior: Clip.hardEdge,
                        color: Colors.blueGrey,
                        child: new FittedBox(
                          fit: BoxFit.fill,
                          child: Padding(
                            padding: EdgeInsets.all(16),
                            child: Icon(
                              Icons.library_books,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      Text("Belajar", textAlign: TextAlign.center)
                    ]
                ),
                flex: 1),
            Expanded(
                child: Column(
                    children: <Widget>[
                      Card(
                        clipBehavior: Clip.hardEdge,
                        color: Colors.blueGrey,
                        child: new FittedBox(
                          fit: BoxFit.fill,
                          child: Padding(
                            padding: EdgeInsets.all(16),
                            child: Icon(
                              Icons.assignment,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      Text("UN", textAlign: TextAlign.center)
                    ]
                ),
                flex: 1),
            Expanded(
                child: Column(
                    children: <Widget>[
                      Card(
                        clipBehavior: Clip.hardEdge,
                        color: Colors.blueGrey,
                        child: new FittedBox(
                          fit: BoxFit.fill,
                          child: Padding(
                            padding: EdgeInsets.all(16),
                            child: Icon(
                              Icons.assignment_ind,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      Text("UTBK", textAlign: TextAlign.center)
                    ]
                ),
                flex: 1),
            Expanded(
                child: Column(
                    children: <Widget>[
                      Card(
                        clipBehavior: Clip.hardEdge,
                        color: Colors.blueGrey,
                        child: new FittedBox(
                          fit: BoxFit.fill,
                          child: Padding(
                            padding: EdgeInsets.all(16),
                            child: Icon(
                              Icons.book,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      Text("Mandiri", textAlign: TextAlign.center)
                    ]
                ),
                flex: 1),
            Expanded(
                child: Column(
                    children: <Widget>[
                      Card(
                        clipBehavior: Clip.hardEdge,
                        color: Colors.blueGrey,
                        child: new FittedBox(
                          fit: BoxFit.fill,
                          child: Padding(
                            padding: EdgeInsets.all(16),
                            child: Icon(
                              Icons.search,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      Text("Insight", textAlign: TextAlign.center)
                    ]
                ),
                flex: 1),
          ],
        )
    );
  }

}