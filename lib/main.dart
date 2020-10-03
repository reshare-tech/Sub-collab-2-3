import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int index1 = 0;
  int index2 = 0;
  @override
  void initState() {
    super.initState();
  }

  void public() {
    this.setState(() {
      index1 = 1;
    });
  }

  void private() {
    this.setState(() {
      index1 = 0;
    });
  }

  void all() {
    this.setState(() {
      index2 = 0;
    });
  }

  void admin() {
    this.setState(() {
      index2 = 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBody: true,
        body: Stack(children: <Widget>[
          Container(
            constraints: BoxConstraints.expand(),
            child: Stack(
              children: [
                Positioned(
                    top: 50,
                    child: IconButton(
                        iconSize: 15.37,
                        icon: Icon(
                          Icons.arrow_back_ios,
                          color: Color(0xfffdfdfd),
                        ),
                        onPressed: null)),
                Positioned(
                    top: 50,
                    left: 43,
                    child: Text(
                      "Create Sub-Collab",
                      style: TextStyle(color: Color(0xfffdfdfd), fontSize: 18),
                    )),
                Positioned(
                    child: Text(
                      "in \"Face Detection Project\"",
                      style: TextStyle(fontSize: 12, color: Color(0xfffdfdfd)),
                    ),
                    top: 75,
                    left: 43),
                Positioned(
                    top: 58,
                    right: 30,
                    child: Container(
                        constraints:
                            BoxConstraints.expand(height: 25, width: 86),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(4))),
                        child: RaisedButton(
                          onPressed: () {},
                          child: Text(
                            "Next",
                            style: TextStyle(fontSize: 12),
                          ),
                          textColor: Color(0xfffdfdfd),
                          color: Color(0xff44b887),
                        )))
              ],
            ),
            color: Color(0xff075AAD),
          ),
          Positioned(
            top: 106,
            left: 0.0,
            right: 0.0,
            child: Container(
                constraints: BoxConstraints.expand(height: 750),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30))),
                child: Column(children: [
                  Container(
                    constraints: BoxConstraints.expand(height: 100),
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                          left: 20,
                          top: 16,
                          child: Text(
                            "Name and Collab Icon",
                            style: TextStyle(color: Colors.black, fontSize: 15),
                          ),
                        ),
                        Positioned(
                          child: Container(
                            child: Image.asset("Images/Rectangle 17.png"),
                            constraints:
                                BoxConstraints.expand(height: 45, width: 45),
                          ),
                          top: 47,
                          left: 21,
                        ),
                        Positioned(
                            top: 52,
                            left: 80,
                            child: Container(
                                constraints: BoxConstraints.expand(
                                    width: 238.74, height: 24),
                                child: TextField(
                                  decoration: InputDecoration(
                                      labelText: 'Enter group Name'),
                                ))),
                      ],
                    ),
                  ),
                  Divider(
                    color: Color(0xff96A7AF).withOpacity(0.6),
                    thickness: 4,
                  ),
                  Container(
                    child: Stack(children: [
                      Positioned(
                        child: Text(
                          "Description:",
                          style: TextStyle(fontSize: 15),
                        ),
                        top: 10,
                        left: 6,
                      ),
                      Positioned(
                        child: Container(
                          child: TextField(
                            textAlign: TextAlign.start,
                            decoration: InputDecoration(
                                alignLabelWithHint: true,
                                border: OutlineInputBorder(),
                                labelText: 'Enter Description Here (Optional)',
                                hintStyle: TextStyle(color: Colors.black)),
                            maxLines: 4,
                            maxLength: 230,
                            style: TextStyle(fontSize: 15),
                          ),
                          constraints:
                              BoxConstraints.expand(height: 120, width: 320),
                        ),
                        top: 39,
                        left: 10,
                      )
                    ]),
                    constraints: BoxConstraints.expand(height: 179, width: 360),
                  ),
                  Divider(
                    color: Color(0xff96A7AF).withOpacity(0.6),
                    thickness: 4,
                  ),
                  Container(
                    child: Stack(
                      children: [
                        Positioned(
                          child: Text(
                            'Collab Type:',
                            style: TextStyle(fontSize: 15),
                          ),
                          left: 6,
                          top: 10,
                        ),
                        Positioned(
                          child: Container(
                            constraints:
                                BoxConstraints.expand(height: 31, width: 323),
                            child: Text(
                              "Private Groups are only visible to  their Participants. Public Groups are Visible to all but non-participants can only see the contents.",
                              style: TextStyle(
                                  fontSize: 11,
                                  color: Color(0xff3E3E3E).withOpacity(0.3)),
                            ),
                          ),
                          top: 48,
                          left: 6,
                        ),
                        Positioned(
                          child: Container(
                            constraints:
                                BoxConstraints.expand(height: 26, width: 75),
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5))),
                            child: OutlineButton(
                              textColor: index1 == 0
                                  ? Color(0xff44b887)
                                  : Color(0xff3E3E3E),
                              disabledBorderColor: Color(0xff3E3E3E),
                              disabledTextColor: Color(0xff3E3E3E),
                              borderSide: BorderSide(
                                  color: index1 == 0
                                      ? Color(0xff44b887)
                                      : Color(0xff3E3E3E)),
                              onPressed: (() => private()),
                              child: Text(
                                "Private",
                                style: TextStyle(fontSize: 12),
                              ),
                            ),
                          ),
                          left: 99,
                          top: 8,
                        ),
                        Positioned(
                          child: Container(
                            constraints:
                                BoxConstraints.expand(height: 26, width: 75),
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5))),
                            child: OutlineButton(
                              textColor: index1 == 1
                                  ? Color(0xff44b887)
                                  : Color(0xff3E3E3E),
                              disabledBorderColor: Color(0xff3E3E3E),
                              disabledTextColor: Color(0xff3E3E3E),
                              borderSide: BorderSide(
                                  color: index1 == 1
                                      ? Color(0xff44b887)
                                      : Color(0xff3E3E3E)),
                              onPressed: () => public(),
                              child: Text(
                                "Public",
                                style: TextStyle(fontSize: 12),
                              ),
                            ),
                          ),
                          left: 184,
                          top: 8,
                        )
                      ],
                    ),
                    constraints: BoxConstraints.expand(height: 100, width: 360),
                  ),
                  Divider(
                    color: Color(0xff96A7AF).withOpacity(0.6),
                    thickness: 4,
                  ),
                  Container(
                    child: Stack(
                      children: [
                        Positioned(
                          child: Text(
                            'Send Messages:',
                            style: TextStyle(fontSize: 15),
                          ),
                          left: 6,
                          top: 10,
                        ),
                        Positioned(
                          child: Container(
                            constraints:
                                BoxConstraints.expand(height: 26, width: 101),
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5))),
                            child: OutlineButton(
                              textColor: index2 == 0
                                  ? Color(0xff44b887)
                                  : Color(0xff3E3E3E),
                              disabledBorderColor: Color(0xff3E3E3E),
                              disabledTextColor: Color(0xff3E3E3E),
                              borderSide: BorderSide(
                                  color: index2 == 0
                                      ? Color(0xff44b887)
                                      : Color(0xff3E3E3E)),
                              onPressed: (() => all()),
                              child: Text(
                                "All Members",
                                style: TextStyle(fontSize: 12),
                              ),
                            ),
                          ),
                          left: 6,
                          top: 44,
                        ),
                        Positioned(
                          child: Container(
                            constraints:
                                BoxConstraints.expand(height: 26, width: 191),
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5))),
                            child: OutlineButton(
                              textColor: index2 == 1
                                  ? Color(0xff44b887)
                                  : Color(0xff3E3E3E),
                              disabledBorderColor: Color(0xff3E3E3E),
                              disabledTextColor: Color(0xff3E3E3E),
                              borderSide: BorderSide(
                                  color: index2 == 1
                                      ? Color(0xff44b887)
                                      : Color(0xff3E3E3E)),
                              onPressed: () => admin(),
                              child: Text(
                                "Incharges and Managers only",
                                style: TextStyle(fontSize: 12),
                              ),
                            ),
                          ),
                          left: 117,
                          top: 44,
                        )
                      ],
                    ),
                    constraints: BoxConstraints.expand(height: 100, width: 360),
                  )
                ])),
          )
        ]),
        bottomNavigationBar: Container(
            decoration: BoxDecoration(
                boxShadow: [BoxShadow(blurRadius: 20, spreadRadius: 3)]),
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(25), topLeft: Radius.circular(25)),
              child: BottomNavigationBar(
                  currentIndex: 2,
                  selectedItemColor: Color(0xff3E73C1),
                  items: [
                    BottomNavigationBarItem(
                        icon: SvgPicture.asset('Images/Group.svg'),
                        title: Text("Group")),
                    BottomNavigationBarItem(
                        icon: SvgPicture.asset('Images/Home.svg'),
                        title: Text("Home")),
                    BottomNavigationBarItem(
                        icon: SvgPicture.asset('Images/Message.svg'),
                        title: Text("Chat")),
                    BottomNavigationBarItem(
                        icon: SvgPicture.asset('Images/OffBell.svg'),
                        title: Text("Bell")),
                    BottomNavigationBarItem(
                        icon: SvgPicture.asset('Images/User.svg'),
                        title: Text("User"))
                  ]),
            )));
  }
}
