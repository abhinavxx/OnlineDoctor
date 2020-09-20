import 'package:flutter/material.dart';

class Update extends StatelessWidget {
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
            Flexible(
              child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  //shrinkWrap: true,
                  itemCount: 8,
                  itemBuilder: (ctx, int index) {
                    return Card(
                        child: ListTile(
                      title: Text("Notification{$index}"),
                    ));
                  }),
            ),
          ],
        ));
  }
}
