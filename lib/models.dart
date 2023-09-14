// lib/models.dart

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
  final String pdfPath; // Add a field for the PDF file path

  Subject({required this.name, required this.pdfPath});
}
