import 'package:flutter/material.dart';
import 'package:rait_app/network/rait_api.dart';
import 'package:rait_app/screens/after_login.dart';
import 'package:rait_app/screens/attendance_page.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

    TextEditingController passwordController;
    TextEditingController rollNoController;
    RaitApi raitApi = new RaitApi();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF9e1c31),
          title: Text("Rait App"),
        ),
        body: Container(
          padding: EdgeInsets.all(8.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
               Image.asset("assets/rait_logo.png"),
              TextFormField(
                controller: rollNoController,
                decoration: InputDecoration(
                    hintText: "Roll no /Srdn",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0))),
              ),
              SizedBox(
                height: 30,
              ),
              TextFormField(
                obscureText: true,
                controller: passwordController,
                decoration: InputDecoration(
                  hintText: "Password",
                  suffixIcon: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.remove_red_eye,
                      color: Colors.black,
                    ),
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0)),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              RaisedButton(
                color: Colors.red.shade800,
                onPressed: () async {
                  String rollNo = rollNoController.text;
                  String password = passwordController.text;
                  bool valid  = await raitApi.checkLogin(rollNo, password);
                  if(valid)
                    Navigator.push(context, MaterialPageRoute(
                      builder: (_)=> AfterLogin(rollNo : rollNo,password : password)
                    ));
                },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0)),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(
                    "Login",
                    style: TextStyle(color: Colors.white,
                    fontSize: 18.0),
                  ),
                ),
              ),

            ],
          ),
        ),

    );
  }

  @override
  void initState() {
      rollNoController = new TextEditingController();
      passwordController = new TextEditingController();
  }
}
