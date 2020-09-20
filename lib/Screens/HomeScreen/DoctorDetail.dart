import 'package:flutter/material.dart';

class DoctorDetsil extends StatefulWidget {
  @override
  _DoctorDetsilState createState() => _DoctorDetsilState();
}

class _DoctorDetsilState extends State<DoctorDetsil> {
  @override
  Widget build(BuildContext context) {
    final String todo = ModalRoute.of(context).settings.arguments;

    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
            elevation: 0,
            iconTheme: IconThemeData(color: Colors.black), //add this line here

            backgroundColor: Colors.white,
            title: RichText(
              text: TextSpan(
                children: <TextSpan>[
                  TextSpan(
                      text: 'Doctor',
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 26,
                          color: Colors.black)),
                  TextSpan(
                      text: ' Details',
                      style: TextStyle(
                          fontSize: 26,
                          color: Colors.black,
                          fontWeight: FontWeight.bold)),
                ],
              ),
            )),
        body: Center(
            child: Column(
          children: [
            Card(
              elevation: 0,
              child: Container(
                  height: 220,
                  child: Image.asset(
                    todo,
                    fit: BoxFit.fill,
                  )),
            ),
            Container(
              margin: EdgeInsets.only(left: 18),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(
                    "Dr. Julia Afroz",
                    style: TextStyle(
                        fontSize: 25,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 18),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(
                    "Dentist",
                    style: TextStyle(
                        fontSize: 17,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            Center(
                child: Flexible(
                    child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    elevation: 8,
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: Container(
                      width: MediaQuery.of(context).size.height * .90,
                      height: 100,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  "Reviews",
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.green),
                                ),
                                Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Padding(
                                      padding: const EdgeInsets.only(
                                          top: 8, bottom: 0),
                                      child: Center(
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Icon(Icons.star,
                                                color: Colors.yellow),
                                            Text(
                                              "5.0",
                                              style: TextStyle(
                                                  fontSize: 13,
                                                  color: Colors.blueGrey),
                                            ),
                                          ],
                                        ),
                                      )),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 45,
                            width: 2,
                            color: Colors.deepPurple,
                          ),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  "Patients",
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.green),
                                ),
                                Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Padding(
                                      padding: const EdgeInsets.only(
                                          top: 8, bottom: 0),
                                      child: Center(
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Icon(Icons.group,
                                                color: Colors.blue),
                                            Text(
                                              "10k",
                                              style: TextStyle(
                                                  fontSize: 17,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.blueGrey),
                                            ),
                                          ],
                                        ),
                                      )),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ))),
            Container(
              margin: EdgeInsets.only(left: 18, top: 15),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(
                    "Availability",
                    style: TextStyle(
                        fontSize: 25,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 50,
                  width: 110,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(40)),
                  ),
                  child: Card(
                    color: Colors.lightGreenAccent,
                    child: Center(
                      child: Text(
                        " 10:30 A.M",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 50,
                  width: 110,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(40)),
                  ),
                  child: Card(
                    color: Colors.lightBlueAccent,
                    child: Center(
                      child: Text(
                        " 11:00 A.M",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 50,
                  width: 110,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(40)),
                  ),
                  child: Card(
                    color: Colors.amber,
                    child: Center(
                      child: Text(
                        " 1:00 P.M",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(6.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 50,
                    width: 110,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(40)),
                    ),
                    child: Card(
                      color: Colors.lightBlueAccent,
                      child: Center(
                        child: Text(
                          " 3:00 p.M",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w400),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 110,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(40)),
                    ),
                    child: Card(
                      color: Colors.amber,
                      child: Center(
                        child: Text(
                          " 4:00 P.M",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w400),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 110,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(40)),
                    ),
                    child: Card(
                      color: Colors.lightBlue,
                      child: Center(
                        child: Text(
                          " 4:00 P.M",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w400),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                  ),
                  margin:
                      EdgeInsets.only(bottom: 10, top: 10, left: 17, right: 17),
                  width: double.infinity,
                  child: RaisedButton(
                    elevation: 7,
                    onPressed: () {},
                    color: Colors.green,
                    child: Text(
                      "Make an Appointment",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 21,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ),
            )
          ],
        )));
  }
}
