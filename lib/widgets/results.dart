import 'package:flutter/material.dart';
import 'package:rait_app/screens/attendance_page.dart';

class Results extends StatelessWidget {
  final String rollNo;

  Results({this.rollNo});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(children: [
      Card(
        elevation: 2,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: Center(
            child: Text(
              "Results",
              style: TextStyle(
                fontSize: 20.0,
              ),
            )),
      ),
      Positioned.fill(
        child: new Material(
          color: Colors.transparent,
          child: new InkWell(
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (_) => AttendanceScreen(
                      rollNo: rollNo,
                    ))),
          ),
        ),
      )
    ]);
  }
}
