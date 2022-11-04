import "package:flutter/material.dart";

void main(){
  runApp(new Application());
}

class Application extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Mon application de film en flutter",
      theme: new ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      debugShowCheckedModeBanner: false,
      home: new Home(),
    );
    //throw UnimplementedError();
  }
  
}

class Home extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return new _Home();

    //throw UnimplementedError();
  }

}
class _Home extends State<Home>{
  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Challenge App Music"),
        //leading: new Icon(Icons.account_circle),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: new Container(
        color: Colors.black,
        child: new Center(
          child : new Container(
            width : MediaQuery.of(context).size.height,
            height: MediaQuery.of(context).size.height,
            color: Colors.blue,
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Text("Mon oiseau de compagne",
                style: new TextStyle(
                  color: Colors.white,
                  fontSize: 23.0,
                  fontWeight: FontWeight.w800,

                ),),
                new Card(
                  child: new Image.network('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg',
                    fit: BoxFit.contain,),
                ),
                new Text("Si tu en as besoin dit le moi, j'en ai d'autres",
                style: new TextStyle(
                  color: Colors.lightGreenAccent,
                  fontStyle: FontStyle.italic,
                  fontSize: 19.0,
                ),)
              ],
            ),
          ),
        ),
      )
    );
  }
}