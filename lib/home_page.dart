import 'package:flutter/material.dart';
import 'package:pshpre1/five_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: ()=>Navigator.pop(context, false),),
      ),
      body: Container(
        child: ElevatedButton(
          child: Text('Please Click'),
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (cnx){return FivePage();}));
          },
        ),
      ),

    );
  }
}
