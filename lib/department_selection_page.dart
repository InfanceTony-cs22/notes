import 'package:flutter/material.dart';
import 'models.dart';
import 'semester_selection_page.dart';

class DepartmentSelectionPage extends StatelessWidget {
  final List<Department> departments;

  DepartmentSelectionPage({required this.departments});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Department Selection'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Added spaceEvenly
        children: [
          SizedBox(height: 120), // Added space above "Department" text
          Text(
            "Department",
            style: TextStyle(fontSize: 30),
          ), SizedBox(height: 120),
          Text("Choose You Department"),
          // Added space below "Department" text
          Expanded(
            child: ListView.builder(
              itemCount: departments.length,
              itemBuilder: (context, index) {
                Department department = departments[index];
                return Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Card(
                    elevation: 5,
                    child: ListTile(
                      title: Text(
                        department.name,
                        style: TextStyle(fontSize: 20),
                      ),
                      trailing: Icon(Icons.arrow_forward),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SemesterSelectionPage(
                              department: department,
                              departments: departments,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
