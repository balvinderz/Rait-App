import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
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
                onPressed: () {},
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
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: (){
                    print("Create one now ");
                  },
                  child: Center(child: Text("Dont have an account ? Create One now ")),

                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
