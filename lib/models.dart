class Department {
  final String name;
  final List<Semester> semesters;

  Department({required this.name, required this.semesters});
}

class Semester {
  final int number;
  final List<Subject> subjects;

  Semester({required this.number, required this.subjects});
}

class Subject {
  final String name;
  final String link;

  Subject({required this.name, required this.link});
}
