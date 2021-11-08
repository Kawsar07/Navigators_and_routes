import 'package:flutter/material.dart';

class FivePage extends StatefulWidget {
  const FivePage({Key? key}) : super(key: key);

  @override
  _FivePageState createState() => _FivePageState();
}

class _FivePageState extends State<FivePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Five Page'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: ()=>Navigator.pop(context, false),
        ),
      ),
      body: Text('hellow I Am A Kawsar'),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.pop(context);
        },
      ),
    );
  }
}
