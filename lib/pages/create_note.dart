import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:note_clone/models/Note.dart';
import 'package:note_clone/pages/Home.dart';

class CreateNote extends StatefulWidget {
  @override
  _CreateNoteState createState() => _CreateNoteState();
}

class _CreateNoteState extends State<CreateNote> {
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _contentController = TextEditingController();
  
  void saveNote(context, container){
    String title = _titleController.text;
    String content = _contentController.text;
    Note n = Note(title: title, content: content);
    container.add(n);
    // MaterialPageRoute(builder: (_) => Page2("Foo")
    Navigator.push(context, MaterialPageRoute(builder: (builder) => MyHomePage()));
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(icon: Icon(Icons.ac_unit_outlined), onPressed: (){}),
          IconButton(icon: Icon(Icons.access_alarm_rounded), onPressed: (){}),
          IconButton(icon: Icon(Icons.archive_outlined), onPressed: (){}),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Column(
            children: [
              TextField(
                controller: _titleController,
                decoration: InputDecoration(
                    hintText: 'Titulo',
                    border: InputBorder.none
                ),
                style: TextStyle(
                    fontSize: 19
                ),
              ),
              TextField(
                controller: _contentController,
                decoration: InputDecoration(
                    hintText: 'Content',
                    border: InputBorder.none
                ),
                maxLines: null,
                keyboardType: TextInputType.multiline,
              ),
            ],
          ),
        ),
      ),
      bottomSheet: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(icon: Icon(Icons.add_box_outlined), onPressed: (){}),
          Text('Editado 12:35'),
          IconButton(icon: Icon(Icons.more_vert), onPressed: (){
          }),
        ],
      ),
    );
  }
}

