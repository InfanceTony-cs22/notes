class Department {
  final String name;
  final List<Semester> semesters;

  Department({required this.name, required this.semesters});

  factory Department.fromJson(Map<String, dynamic> json) {
    List<Semester> semesters = (json['semesters'] as List)
        .map((semesterJson) => Semester.fromJson(semesterJson))
        .toList();

    return Department(
      name: json['name'] as String,
      semesters: semesters,
    );
  }
}

class Semester {
  final int number;
  final List<Subject> subjects;

  Semester({required this.number, required this.subjects});

  factory Semester.fromJson(Map<String, dynamic> json) {
    List<Subject> subjects = (json['subjects'] as List)
        .map((subjectJson) => Subject.fromJson(subjectJson))
        .toList();

    return Semester(
      number: json['number'] as int,
      subjects: subjects,
    );
  }
}

class Subject {
  final String name;
  final String link;

  Subject({required this.name, required this.link});

  factory Subject.fromJson(Map<String, dynamic> json) {
    return Subject(
      name: json['name'] as String,
      link: json['link'] as String,
    );
  }
}
