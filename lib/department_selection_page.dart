import 'package:flutter/material.dart';
import 'models.dart';
import 'semester_selection_page.dart';

class DepartmentSelectionPage extends StatelessWidget {
  final List<Department> departments;

  DepartmentSelectionPage({required this.departments});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 120),
          Text(
            "Department",
            style: TextStyle(fontSize: 30),
          ),
          SizedBox(height: 120),
          Text("Choose Your Department"),
          Expanded(
            child: Container( // Added Container
              padding: EdgeInsets.symmetric(horizontal: 16), // Added padding
              child: ListView.separated( // Changed to ListView.separated
                itemCount: departments.length,
                separatorBuilder: (BuildContext context, int index) => Divider(), // Added Divider
                itemBuilder: (context, index) {
                  Department department = departments[index];
                  return Card(
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
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
