import 'package:flutter/material.dart';
import 'package:rait_app/screens/login_page.dart';

class DepartmentScreen extends StatelessWidget {
  List<String> departments = [
    "Comps",
    "IT",
    "EXTC",
    "Electronics",
    "Instrumentation"
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text("Departments Page"),
          backgroundColor: Colors.red.shade900,
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 10.0),
            itemBuilder: (_, index) {
              return DepartmentCard(
                department: departments[index],
              );
            },
            itemCount: departments.length,
          ),
        ));
  }
}

class DepartmentCard extends StatelessWidget {
  String department;

  DepartmentCard({this.department});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Card(
        elevation: 2,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Image.asset("assets/rait_logo.png"),
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              department,
              style: TextStyle(
                fontSize: 20.0,
              ),
            )
          ],
        ),
      ),
      Positioned.fill(
          child: new Material(
              color: Colors.transparent,
              child: new InkWell(
                onTap: () => Navigator.push(
                    context, MaterialPageRoute(builder: (_) => LoginPage())),
              )))
    ]);
  }
}
