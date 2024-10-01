import 'package:flutter/material.dart';

class ViewRequest extends StatefulWidget {
  @override
  _ViewRequestPageState createState() => _ViewRequestPageState();
}

class _ViewRequestPageState extends State<ViewRequest> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(),
        Container(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Your Name:Joy Roce \n\n Email ID: abc123@gmail.com \n\n Mobile: 7852449348 \n\n '
                  'Domain Name: Cyber Security \n\n Raised Ticket: Vulnerability Scanning \n\n Status: Pending',
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
          ),
        )
      ],
    );
  }
}