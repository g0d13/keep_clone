
import 'package:flutter/material.dart';
import 'package:note_clone/pages/create_note.dart';

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Inicio'),
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Hola')
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (builder) => CreateNote()));
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        color: Colors.primaries[1],
        child: Row(
          children: [
            IconButton(icon: Icon(Icons.menu), onPressed: (){}),
            IconButton(icon: Icon(Icons.search), onPressed: (){}),
            IconButton(icon: Icon(Icons.favorite), onPressed: (){})
          ],
        ),
      ),
    );
  }
}
