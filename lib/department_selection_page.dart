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
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 20),
          Text(
            "Department",
            style: TextStyle(fontSize: 30),
          ),
          SizedBox(height: 20),
          Text("Choose Your Department"),
          Expanded(
            child: ListView.builder(
              itemCount: departments.length,
              itemBuilder: (context, index) {
                Department department = departments[index];
                return Padding(
                  padding: const EdgeInsets.all(8.0),
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
