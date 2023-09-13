import 'dart:ffi';

import 'package:flutter/material.dart';

class DepartmentSelectionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Select Department'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Choose a Department:', style: TextStyle(
              fontSize: 20
            ),),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/semesters');
              },

              child:Container(width:double.infinity,

              child: Text("CSE"),alignment: Alignment.center,
              )


            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/semesters');
              },
                child:Container(width:double.infinity,
                  child: Text("MECH"),alignment: Alignment.center,)
            ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/semesters');
            },
              child:Container(width:double.infinity,
                child: Text("ECE"),alignment: Alignment.center,)
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/semesters');
            },
              child:Container(padding: const EdgeInsets.symmetric(horizontal: 160),
                child: Text("CIVIL"),alignment: Alignment.center,)
          ),
        ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/semesters');
          },
            child:Container(width:double.infinity,
              child: Text("EEE"),alignment: Alignment.center,))

          //// Add buttons for other departments
          ],
        ),
      ),
    );
  }
}
