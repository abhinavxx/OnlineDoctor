import 'dart:ui';

import 'package:booking/Screens/HomeScreen/DoctorDetail.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> item = [
    "assets/brain.jpg",
    "assets/lungs.jpg",
    "assets/stomach.jpg",
    "assets/eye.jpg",
    "assets/joint.png",
    "assets/viral flu.png",
  ];
  List<String> name = [
    "Brain",
    "Lungs",
    "Stomach",
    "Eye",
    "Joint",
    "Viral Flu"
  ];
  List<String> doctor = [
    "assets/Julia.jpg",
    "assets/Strange.jpg",
    "assets/David.jpg",
  ];
  List<String> doctorName = [
    "Dr. Julia Afroz",
    "Dr. Strange ",
    "Dr. David Parkar",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          actions: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Icon(Icons.menu, color: Colors.black),
            ),
          ],
          title: Padding(
            padding: const EdgeInsets.all(4.0),
            child: Text(
              "Hi Abhinav!",
              style: TextStyle(
                  color: Colors.black,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        body: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 12, top: 10),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "How do you feel",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 27,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12, top: 4, bottom: 4),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "today?",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Container(
                      margin: EdgeInsets.only(left: 6, right: 80),
                      child: Text(
                        "Categories",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 24,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Container(
                      margin: EdgeInsets.only(right: 0, left: 120),
                      child: Text(
                        "See All",
                        style: TextStyle(
                            color: Colors.green,
                            fontSize: 14,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 130,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  //shrinkWrap: true,
                  itemCount: 6,
                  itemBuilder: (ctx, int index) {
                    return Card(
                      elevation: 9,
                      child: Column(
                        children: [
                          SizedBox(
                              height: 100,
                              width: 100,
                              child: Image.asset(item[index])),
                          Text(name[index]),
                        ],
                      ),
                    );
                  }),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 38, bottom: 13),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Container(
                      margin: EdgeInsets.only(left: 6, right: 80),
                      child: Text(
                        "Doctor Nearby",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 24,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Container(
                      margin: EdgeInsets.only(right: 0, left: 80),
                      child: Text(
                        "See All",
                        style: TextStyle(
                            color: Colors.green,
                            fontSize: 14,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 210,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: doctor.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: EdgeInsets.only(left: 12, right: 10),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DoctorDetsil(),
                                settings:
                                    RouteSettings(arguments: doctor[index])));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(40)),
                            border: Border.all(width: 3, color: Colors.white)),
                        height: 205,
                        width: 350,
                        child: Card(
                          elevation: 9,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Container(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: <Widget>[
                                    Container(
                                      height: 90,
                                      width: 90,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                      ),
                                      child: Image.asset(doctor[index]),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Flexible(
                                        child: Container(
                                          margin: EdgeInsets.only(
                                              right: 30, left: 0),
                                          child: Column(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 12, top: 12),
                                                child: Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Text(
                                                    doctorName[index],
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 22,
                                                        fontWeight:
                                                            FontWeight.w600),
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                alignment: Alignment.centerLeft,
                                                child: Container(
                                                  child: Text(
                                                    "Dentist",
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 17,
                                                        fontWeight:
                                                            FontWeight.w400),
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                alignment: Alignment.centerLeft,
                                                child: Text(
                                                  "   Royal ln, Mesa, New Jersey",
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 15,
                                                      fontWeight:
                                                          FontWeight.w400),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Container(
                                  margin: EdgeInsets.only(bottom: 0, top: 50),
                                  width: double.infinity,
                                  child: RaisedButton(
                                    onPressed: () {},
                                    color: Colors.green,
                                    child: Text(
                                      "Make an Appointment",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 19,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ));
  }
}
