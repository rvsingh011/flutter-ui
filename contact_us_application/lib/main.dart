import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: Text(
            "Contact Us",
            style: TextStyle(
              color: Colors.orange[900],
            ),
          ),
          centerTitle: true,
          leading: IconButton(
            iconSize: 30,
            onPressed: () {},
            color: Colors.orange[900],
            icon: Icon(
              Icons.arrow_back,
            ),
          ),
        ),
        body: Column(
          children: [
            Image(
              height: 280,
              image: NetworkImage(
                "https://raw.githubusercontent.com/singh-saheb/help__section_ui/master/images/contactus2.png",
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: Text(
                "Have an issue or query? \n Feel free to contact us",
                style: TextStyle(
                    fontSize: 25,
                    fontFamily: 'circular',
                    color: Colors.grey[700]),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
                child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 130,
                      width: 130,
                      child: Container(
                        padding: EdgeInsets.only(left: 20, right: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            IconButton(
                              onPressed: () {},
                              iconSize: 40,
                              color: Colors.orange[800],
                              icon: Icon(Icons.alternate_email_rounded),
                            ),
                            Text("Write to us",
                                style: TextStyle(
                                    color: Colors.orange[800], fontSize: 15)),
                            Text("rvsingh011\n@gmail.com",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w600,
                                    fontStyle: FontStyle.italic)),
                          ],
                        ),
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 0),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 10,
                              color: Colors.grey,
                              offset: Offset(5, 10))
                        ],
                        shape: BoxShape.rectangle,
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      height: 130,
                      width: 130,
                      child: Container(
                        padding: EdgeInsets.only(left: 20, right: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            IconButton(
                              onPressed: () {},
                              iconSize: 40,
                              color: Colors.orange[800],
                              icon: Icon(Icons.add_call),
                            ),
                            Text("Call us",
                                style: TextStyle(
                                    color: Colors.orange[800], fontSize: 15)),
                            Text("+91-9023448448",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w600,
                                    fontStyle: FontStyle.italic)),
                          ],
                        ),
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 0),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 10,
                              color: Colors.grey,
                              offset: Offset(5, 10))
                        ],
                        shape: BoxShape.rectangle,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 130,
                      width: 130,
                      child: Container(
                        padding: EdgeInsets.only(left: 20, right: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            IconButton(
                              onPressed: () {},
                              iconSize: 40,
                              color: Colors.orange[800],
                              icon: Icon(Icons.question_answer),
                            ),
                            Text("Chat with us",
                                style: TextStyle(
                                    color: Colors.orange[800], fontSize: 15)),
                            Text("Live chat",
                                style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w600,
                                    fontStyle: FontStyle.italic)),
                          ],
                        ),
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 0),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 10,
                              color: Colors.grey,
                              offset: Offset(5, 10))
                        ],
                        shape: BoxShape.rectangle,
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      height: 130,
                      width: 130,
                      child: Container(
                        padding: EdgeInsets.only(left: 20, right: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            IconButton(
                              onPressed: () {},
                              iconSize: 40,
                              color: Colors.orange[800],
                              icon: Icon(Icons.location_on),
                            ),
                            Text("Locate Us",
                                style: TextStyle(
                                    color: Colors.orange[800], fontSize: 15)),
                            Text("Uttar Pradesh,\n India",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w600,
                                    fontStyle: FontStyle.italic)),
                          ],
                        ),
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 0),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 10,
                              color: Colors.grey,
                              offset: Offset(5, 10))
                        ],
                        shape: BoxShape.rectangle,
                      ),
                    ),
                  ],
                ),
              ],
            )),
            Container(
                margin: EdgeInsets.only(top: 30),
                padding: EdgeInsets.all(30),
                child: Text(
                  "© 2019-2020",
                  style: TextStyle(color: Colors.orange[900]),
                )),
          ],
        ),
      ),
    );
  }
}
