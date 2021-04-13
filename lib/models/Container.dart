import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:note_clone/models/Note.dart';

class ContainerQ extends ChangeNotifier {
  Queue<Note> _queue = new Queue();
  int tmpSize = 0;

  void add(Note note){
    _queue.add(note);
    tmpSize++;
    notifyListeners();
  }
  
  void remove(String noteId){
    Note note = _queue.firstWhere((note) => note.noteId == noteId);
    _queue.remove(note);
    notifyListeners();
  }
  Queue<Note> iterator () => _queue;

  int size () => _queue.length;

  void isEmpty () => _queue.length == 0;
}