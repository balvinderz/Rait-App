import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

const kTextStyle = TextStyle(fontSize: 20.0, color: Colors.white);
const kBigTextStyle = TextStyle(fontSize: 25.0, color: Colors.black87);

class AttendanceScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Colors.grey.shade100,
          appBar: AppBar(
            title: Text("Attendance"),
            backgroundColor: Colors.red.shade900,
          ),
          body: ListView(
            children: <Widget>[
              Container(
                height: 200.0,
                width: double.infinity,
                color: Colors.blue.shade600,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("72.05%", style: kTextStyle),
                    SizedBox(
                      height: 20.0,
                    ),
                    Text(
                      "You need to attend more class",
                      style: kTextStyle,
                    )
                  ],
                ),
              ),
              AttendanceCard(
                subjectName: "DBMS",
                attendedClasses: 9,
                totalClasses: 100,
              ),
              AttendanceCard(
                subjectName: "COA",
                attendedClasses: 32,
                totalClasses: 54,
              ),
              AttendanceCard(
                subjectName: "COA",
                attendedClasses: 13,
                totalClasses: 54,
              ),
              AttendanceCard(
                subjectName: "COA",
                attendedClasses: 45,
                totalClasses: 50,
              ),
            ],
          )),
    );
  }
}

class AttendanceCard extends StatelessWidget {
  String subjectName;

  int totalClasses, attendedClasses;

  AttendanceCard(
      {@required this.subjectName,
      @required this.attendedClasses,
      @required this.totalClasses});

  @override
  Widget build(BuildContext context) {
    double percentage = attendedClasses / totalClasses;
    print(percentage);
    String percentageString;
    if (percentage <= 0.1) {
      percentageString =  (percentage * 100).toString().substring(0, 3);
    } else
      percentageString = (percentage * 100).toString().substring(0, 4);

    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            color: Colors.white,
          ),
          child: Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  subjectName,
                  style: kBigTextStyle,
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(15.0),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: CircularPercentIndicator(
                    radius: 80.0,
                    lineWidth: 5.0,
                    percent: percentage,
                    center: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(percentageString),
                        Text("$attendedClasses/$totalClasses")
                      ],
                    ),
                    progressColor:
                        percentage < 0.75 ? Colors.red : Colors.green,
                  ),
                ),
              ),
            ),
          ])),
    );
  }
}
