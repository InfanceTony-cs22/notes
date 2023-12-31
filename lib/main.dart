import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'department_selection_page.dart';
import 'models.dart';

Future<List<Department>> fetchDepartments() async {
  final response = await http.get(Uri.parse('https://github.com/Bennyhinn18/Files/raw/main/data.json'));

  if (response.statusCode == 200) {
    Iterable jsonResponse = json.decode(response.body);
    return jsonResponse.map((data) => Department.fromJson(data)).toList();
  } else {
    throw Exception('Failed to load departments from JSON');
  }
}


void main() {
  runApp(StudyMaterialsApp());
}

class StudyMaterialsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Study Materials App',
      home: FutureBuilder<List<Department>>(
        future: fetchDepartments(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return CircularProgressIndicator(); // or any loading widget you prefer
          } else if (snapshot.hasError) {
            return Text('Error: ${snapshot.error}');
          } else {
            List<Department>? departments = snapshot.data;
            if (departments != null) {
              return DepartmentSelectionPage(departments: departments);
            } else {
              return Text('No data available');
            }
          }
        },
      ),
    );
  }
}
