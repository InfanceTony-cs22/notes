// lib/sample_data.dart

import 'models.dart';

final List<Department> departments = [
  Department(
    name: 'Computer Science',
    semesters: [
      Semester(
        number: 1,
        subjects: [
          Subject(name: 'Subject 1.1', pdfPath: 'assets/subject1.1.pdf'), // Update PDF paths
          Subject(name: 'Subject 1.2', pdfPath: 'assets/subject1.2.pdf'),
        ],
      ),
      Semester(
        number: 2,
        subjects: [
          Subject(name: 'Subject 2.1', pdfPath: 'assets/subject2.1.pdf'),
          Subject(name: 'Subject 2.2', pdfPath: 'assets/subject2.2.pdf'),
        ],
      ),
      // Add more semesters for Computer Science
    ],
  ),
  // Add more departments with their semesters and subjects
];
