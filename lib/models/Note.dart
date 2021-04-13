class Note {
  String noteId ;
  String title ;
  String content ;

  Note({this.noteId = '', this.title = '', this.content = ''});

  @override
  String toString() {
    return "Note $noteId has title: $title and content $content";
  }
}
