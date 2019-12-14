import 'package:flutter/material.dart';
import 'package:rait_app/widgets/bonafide.dart';
import 'package:rait_app/widgets/e_attendance_card.dart';
import 'package:rait_app/widgets/pre_requisite.dart';
import 'package:rait_app/widgets/results.dart';
class AfterLogin extends StatelessWidget
{
  String rollNo;
  String password;
  AfterLogin({this.rollNo,this.password});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red.shade900,
        title: Text(""),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            crossAxisCount: 2
          ),
          children: <Widget>[
              EAttendance(rollNo: rollNo,),
            Bonafide(rollNo : rollNo),
            Results(rollNo: rollNo,),
            Prerequisite(rollNo: rollNo,),

          ],
        ),
      ),
    );
  }
}