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
            width : MediaQuery.of(context).size.height / 2,
            height: MediaQuery.of(context).size.height /2,
            color: Colors.greenAccent,
            child: new Image.network('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg',
            fit: BoxFit.cover,),

          ),
        ),
      )
    );
  }
}