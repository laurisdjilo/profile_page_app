import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ProfilePage(title: '@anjalina'),
    );
  }
}

class ProfilePage extends StatefulWidget {
  ProfilePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          new Positioned(
            child: Image.asset(
              'assets/black_model.jpg',
              fit: BoxFit.cover, 
              height: 300,
            ),
            top: 0.0,
            left: 0.0,
            right: 0.0,
            height: 300,
          ),
          new Positioned(
            child: Container(
              color: Color.fromRGBO(0, 0, 0, 0.2)
            ),
            top: 0.0,
            left: 0.0,
            right: 0.0,
            height: 300,
          ),
          Scaffold(
            appBar: AppBar(
              leading: IconButton(
                icon: Icon(Icons.arrow_back_ios, color: Colors.white),
                onPressed: () {},
              ),
              title: Text(
                widget.title,
                style: new TextStyle(color: Colors.white),
              ),
              centerTitle: true,
              actions: <Widget>[
                IconButton(
                  icon: Icon(Icons.more_vert, color: Colors.white),
                  onPressed: () {},
                )
              ],
              backgroundColor: Colors.transparent,
              elevation: 0.0
            ),
            body: Container(
              color: Colors.white,
              margin: EdgeInsets.only(top: 210),
              child: ListView(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(left: 120, top: 10, bottom: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Container(
                          child: Column(
                            children: <Widget>[
                              Text('Followers', style: TextStyle(fontSize: 15, color: Colors.black54),),
                              Text('15,000', style: TextStyle(fontSize: 20, color: Colors.black87),)
                            ],
                          )
                        ),
                        Container(
                          child:Column(
                            children: <Widget>[
                              Text('Following', style: TextStyle(fontSize: 15, color: Colors.black54),),
                              Text('3,000', style: TextStyle(fontSize: 20, color: Colors.black87),),
                            ],
                          )
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 20),
                    margin: EdgeInsets.only(bottom: 20),
                    height: 120,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: _getCards()
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 20, bottom: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("Recently Followers", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold), textAlign: TextAlign.left),
                        Container(
                          height: 100,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: _getFollowers(),  
                          ),
                        ),
                      ],
                    )
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 20, bottom: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("Recently Following", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold), textAlign: TextAlign.left),
                        Container(
                          height: 100,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: _getFollowers(),  
                          ),
                        ),
                      ],
                    )
                  ),
                ],
              ),
            ),
            backgroundColor: Colors.transparent,
          ),
          new Positioned(
            top: 255.0,
            left: 20.0,
            child: Container(
              height: 90,
              width: 90,
              padding: EdgeInsets.all(4.0),
              decoration: new BoxDecoration(
                color: Colors.white,
                borderRadius: new BorderRadius.circular(45),
                boxShadow: [BoxShadow(color: Color.fromRGBO(0, 0, 0, 0.5), blurRadius: 10, offset: Offset(0.0, 5.0))],
              ),
              child: new ClipRRect(
                borderRadius: new BorderRadius.circular(43),
                child: Image.asset('assets/image1.png'),
              ),
            )
          ),
          new Positioned(
            top: 270.0,
            left: 120,
            child: Text("Anjalina Johnson", 
              style: TextStyle(fontSize: 20, color: Colors.white),
            )
          )
        ],
      )
    );
  }

  List<Widget> _getCards(){
    List<Widget> result = [];
    for(int i=0; i<5; i++){
      result.add(
        Align(
          alignment: Alignment.centerLeft,
          child: Container(
            height: 96,
            width: 96,
            margin: EdgeInsets.only(right: 10),
            decoration: new BoxDecoration(
              color: Colors.white,
              borderRadius: new BorderRadius.circular(10),
              boxShadow: [BoxShadow(color: Color.fromRGBO(0, 0, 0, 0.2), blurRadius: 5, offset: Offset(0.0, 5.0))],
            ),
            child: new ClipRRect(
              borderRadius: new BorderRadius.circular(10),
              child: Image.asset('assets/image1.png'),
            ),
          ),
        )
      );
    }
    return result;
  }

  List<Widget> _getFollowers(){
    List<Widget> result = [];
    List names = ['Alex', 'Dijon', 'Marseille', 'Real', 'Barca', 'Chelsea'];
    for(int i=0; i<names.length; i++){
      result.add(
        Align(
          alignment: Alignment.centerLeft,
          child: Container(
            height: 80,
            width: 80,
            //margin: EdgeInsets.only(right: 5),
            child: Column(
              children: <Widget>[
                Container(
                  height: 60,
                  width: 60,
                  margin: EdgeInsets.only(bottom: 5),
                  decoration: new BoxDecoration(
                    color: Colors.white,
                    borderRadius: new BorderRadius.circular(30),
                    boxShadow: [BoxShadow(color: Color.fromRGBO(0, 0, 0, 0.2), blurRadius: 5, offset: Offset(0.0, 5.0))],
                  ),
                  child: new ClipRRect(
                    borderRadius: new BorderRadius.circular(30),
                    child: Image.asset('assets/black_model.jpg'),
                  ),
                ),
                Text(names[i], style: TextStyle(fontSize: 12)),
              ],
            )
          ),
        )
      );
    }
    return result;
  }

}
