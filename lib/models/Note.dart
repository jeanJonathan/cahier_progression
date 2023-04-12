class Note {
  final int id;
  final String chapter;
  final String level;
  final String note;

  Note({
    required this.id,
    required this.chapter,
    required this.level,
    required this.note,
  });

  factory Note.fromJson(Map<String, dynamic> json) {
    return Note(
      id: json['id'],
      chapter: json['chapter'],
      level: json['level'],
      note: json['note'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'chapter': chapter,
      'level': level,
      'note': note,
    };
  }
}
