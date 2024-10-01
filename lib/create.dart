import 'package:flutter/material.dart';

class CreateTicket extends StatefulWidget {
  @override
  _CreateTicketPageState createState() => _CreateTicketPageState();
}

class _CreateTicketPageState extends State<CreateTicket> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CRM'),
      ),
      body: const Padding(
          padding: EdgeInsets.all(30),
        child: Center(
          child: TextField(
            minLines: 1,
            maxLines: 15,
            style:TextStyle(fontSize: 20),
            decoration: InputDecoration(border: OutlineInputBorder()),
          ),
        ),
      ),
    );
  }
}