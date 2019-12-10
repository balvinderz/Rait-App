import 'package:flutter/material.dart';

const kBlueTextStyle = TextStyle(color: Color(0xFF05445E), fontSize: 20.0);

class BachatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          backgroundColor: Color(0xFFD4F1F4),
          appBar: AppBar(
            leading: Icon(Icons.menu),
            title: Text("BACHAT"),
            backgroundColor: Color(0xFF017AAD),
            bottom: TabBar(
              tabs: [
                Tab(
                  text: "DEBITED",
                ),
                Tab(
                  text: "CREDITED",
                )
              ],
              indicatorColor: Colors.white,
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              DebitedCard(),
              DebitedCard(),
            ],
          ),
        ),
      ),
    );
  }
}

class DebitedCard extends StatelessWidget {
  List<Cost> costs = new List();

  @override
  Widget build(BuildContext context) {
    costs.add(Cost(name: "Beer", costOfItem: "20000"));
    costs.add(Cost(name: "Beer", costOfItem: "20000"));

    // TODO: implement build
    return Container(
      child: ListView(
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(15.0)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Text(
                          "2nd Janurary, 2019",
                          style: kBlueTextStyle,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Icon(
                          Icons.edit,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ],
                ),
                Flex(
                  direction: Axis.horizontal,

                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    greySquare(),
                    Padding(

                      padding: EdgeInsets.all(12.0),
                      child: Text(
                        "Beer",
                        style: kBlueTextStyle,
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 6.0, right: 30.0, bottom: 6.0, left: 12.0),
                        child: Text(
                          "20000",
                          style: kBlueTextStyle,
                          textAlign: TextAlign.end,
                        ),
                      ),
                    )
                  ],
                ),
                Flex(
                  direction: Axis.horizontal,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    greySquare(),
                    Padding(
                      padding: EdgeInsets.all(12.0),
                      child: Text(
                        "Beer",
                        style: kBlueTextStyle,
                      ),
                    ),
                    Expanded(
                      flex: 1,

                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 6.0, right: 30.0, bottom: 0.0, left: 12.0),
                        child: Text(
                          "20000",
                          style: kBlueTextStyle,
                          textAlign: TextAlign.end,
                        ),
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal : 12.0),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      height: 2.0,
                      width: 100.0,
                      color: Colors.grey.shade400,
                    ),
                  ),
                ),
                Align(

                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 6.0, right: 30.0, bottom: 6.0, left: 12.0),
                    child: Text(
                      "20000",
                      style: kBlueTextStyle,
                      textAlign: TextAlign.end,
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(15.0)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Text(
                          "2nd Janurary, 2019",
                          style: kBlueTextStyle,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Icon(
                          Icons.edit,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ],
                ),
                Flex(
                  direction: Axis.horizontal,

                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    greySquare(),
                    Padding(

                      padding: EdgeInsets.all(12.0),
                      child: Text(
                        "Beer",
                        style: kBlueTextStyle,
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 6.0, right: 30.0, bottom: 6.0, left: 12.0),
                        child: Text(
                          "20000",
                          style: kBlueTextStyle,
                          textAlign: TextAlign.end,
                        ),
                      ),
                    )
                  ],
                ),
                Flex(
                  direction: Axis.horizontal,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    greySquare(),
                    Padding(
                      padding: EdgeInsets.all(12.0),
                      child: Text(
                        "Beer",
                        style: kBlueTextStyle,
                      ),
                    ),
                    Expanded(
                      flex: 1,

                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 6.0, right: 30.0, bottom: 0.0, left: 12.0),
                        child: Text(
                          "20000",
                          style: kBlueTextStyle,
                          textAlign: TextAlign.end,
                        ),
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal : 12.0),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      height: 2.0,
                      width: 100.0,
                      color: Colors.grey.shade400,
                    ),
                  ),
                ),
                Align(

                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 6.0, right: 30.0, bottom: 6.0, left: 12.0),
                    child: Text(
                      "20000",
                      style: kBlueTextStyle,
                      textAlign: TextAlign.end,
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(15.0)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Text(
                          "2nd Janurary, 2019",
                          style: kBlueTextStyle,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Icon(
                          Icons.edit,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ],
                ),
                Flex(
                  direction: Axis.horizontal,

                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    greySquare(),
                    Padding(

                      padding: EdgeInsets.all(12.0),
                      child: Text(
                        "Beer",
                        style: kBlueTextStyle,
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 6.0, right: 30.0, bottom: 6.0, left: 12.0),
                        child: Text(
                          "20000",
                          style: kBlueTextStyle,
                          textAlign: TextAlign.end,
                        ),
                      ),
                    )
                  ],
                ),
                Flex(
                  direction: Axis.horizontal,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    greySquare(),
                    Padding(
                      padding: EdgeInsets.all(12.0),
                      child: Text(
                        "Beer",
                        style: kBlueTextStyle,
                      ),
                    ),
                    Expanded(
                      flex: 1,

                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 6.0, right: 30.0, bottom: 0.0, left: 12.0),
                        child: Text(
                          "20000",
                          style: kBlueTextStyle,
                          textAlign: TextAlign.end,
                        ),
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal : 12.0),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      height: 2.0,
                      width: 100.0,
                      color: Colors.grey.shade400,
                    ),
                  ),
                ),
                Align(

                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 6.0, right: 30.0, bottom: 6.0, left: 12.0),
                    child: Text(
                      "20000",
                      style: kBlueTextStyle,
                      textAlign: TextAlign.end,
                    ),
                  ),
                )
              ],
            ),
          ),

        ],
      ),
    );
  }
}

Widget greySquare() {
  return Container(
    height: 25,
    width: 25,
    margin: EdgeInsets.all(12.0),
    color: Colors.grey.shade400,
  );
}

class Cost {
  String name;
  String costOfItem;

  Cost({this.name, this.costOfItem});
}
