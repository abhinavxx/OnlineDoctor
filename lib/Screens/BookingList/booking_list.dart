import 'package:flutter/material.dart';

class BookList extends StatefulWidget {
  @override
  _BookListState createState() => _BookListState();
}

class _BookListState extends State<BookList> {
  List<String> image = [
    "assets/appoinment.png",
    "assets/appoinment.png",
    "assets/appoinment.png",
    "assets/appoinment.png",
    "assets/appoinment.png",
    "assets/appoinment.png",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: RichText(
          text: TextSpan(
            children: <TextSpan>[
              TextSpan(
                  text: 'Booking',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 26,
                      color: Colors.black)),
              TextSpan(
                  text: ' List',
                  style: TextStyle(
                      fontSize: 26,
                      color: Colors.black,
                      fontWeight: FontWeight.w400)),
            ],
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Padding(
              padding: const EdgeInsets.only(left: 5, top: 16),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text("Recent Appointments",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 23,
                        color: Colors.black)),
              )),
          Container(
            height: 210,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: image.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: EdgeInsets.only(right: 7, left: 8, top: 8),
                  child: GestureDetector(
                    child: Container(
                      height: 205,
                      width: 220,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          SizedBox(height: 10),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(6),
                            child: Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Image.asset(
                                "${image[index]}",
                                height: 180,
                                width: 220,
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          Padding(
              padding: const EdgeInsets.only(left: 5, top: 18),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text("Last Month",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 23,
                        color: Colors.black)),
              )),
          Container(
            height: 210,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: image.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: EdgeInsets.only(right: 7, left: 8, top: 8),
                  child: GestureDetector(
                    child: Container(
                      height: 205,
                      width: 220,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          SizedBox(height: 10),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(6),
                            child: Image.asset(
                              "${image[index]}",
                              height: 180,
                              width: 220,
                              fit: BoxFit.contain,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
