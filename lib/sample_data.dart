import 'models.dart';

final List<Department> departments = [
  Department(
    name: 'Computer Science',
    semesters: [
      Semester(
        number: 1,
        subjects: [
          Subject(name: 'Subject 1.1', link: 'https://toastmasterscdn.azureedge.net/medias/files/clubcentral/club-meeting-roles/675e-timer-script-and-log.zip'), // Update with your links
          Subject(name: 'Subject 1.2', link: 'https://example.com/subject1.2.pdf'),
        ],
      ),
      Semester(
        number: 2,
        subjects: [
          Subject(name: 'Subject 2.1', link: 'https://example.com/subject2.1.pdf'),
          Subject(name: 'Subject 2.2', link: 'https://example.com/subject2.2.pdf'),
        ],
      ),
      // Add more semesters for Computer Science
    ],
  ),
  // Add more departments with their semesters and subjects
];
