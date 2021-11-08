import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pshpre1/five_page.dart';
import 'package:pshpre1/home_page.dart';

void main(){
  runApp(MaterialApp(home: MyApp(),),);
}
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('routing'
      ),
    ),

      drawer: Drawer(
      child: ListView(
        children: [
          Container(
            child: UserAccountsDrawerHeader(
              accountName: Text('Kawsar Ali'),
              accountEmail: Text(''),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (cnx){return HomePage();}));
            },
          ),
          ListTile(
            leading: Icon(Icons.five_k_sharp),
            title: Text('Five'),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (cnx){return FivePage();}));
            },
          ),
        ],
      ),



      ),


    );
  }
}

