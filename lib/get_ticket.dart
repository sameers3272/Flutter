import 'package:flutter/material.dart';

class GetTicket extends StatefulWidget {
  @override
  _GetTicketPageState createState() => _GetTicketPageState();
}

class _GetTicketPageState extends State<GetTicket> {

  Widget build(BuildContext context) {
  List<Map> categories = [
  {"name": "Vulnerability Scanning", "isChecked": true},
  {"name": "Quality Assurance", "isChecked": false},
  {"name": "Service Level Agreement", "isChecked": false},
  {"name": "Device Management", "isChecked": false},
  {"name": "Model Overfitting", "isChecked": false},
  {"name": "Data Quality Issues", "isChecked": false},
  ];
  return Scaffold(
  appBar: AppBar(
  title: Column(
  children: const [
  Text('Joy Roce'),
  Text(
  'Joyroce123@gmail.com',
  style: TextStyle(
  color: Colors.black,
  fontSize: 13,
  fontWeight: FontWeight.w300),
  ),
  ],
  ),
  centerTitle: true,
  ),
  body: SingleChildScrollView(
  child: Padding(
  padding: const EdgeInsets.all(20),
  child:
  Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
  const Text(
  "Please Choose your Query:",
  style: TextStyle(fontSize: 16),
  ),
  const SizedBox(height: 10),
  const Divider(),
  const SizedBox(height: 10),
  Column(
  children: categories.map((favorite) {
  return CheckboxListTile(
  activeColor: Colors.deepPurpleAccent,
  checkboxShape: RoundedRectangleBorder(
  borderRadius: BorderRadius.circular(5)),
  value: favorite["isChecked"],
  title: Text(favorite["name"]),
  onChanged: (val) {
  setState(() {
  favorite["isChecked"] = val;
  });
  });
  }).toList()),
  const SizedBox(height: 10),
  const Divider(),
  const SizedBox(height: 10),
  Wrap(
  children: categories.map((favorite) {
  if (favorite["isChecked"] == true) {
  return Card(
  elevation: 3,
  color: Colors.deepPurpleAccent,
  child: Padding(
  padding: const EdgeInsets.all(8.0),
  child: Row(
  mainAxisSize: MainAxisSize.min,
  children: [
  Text(
  favorite["name"],
  style: const TextStyle(color: Colors.white),
  ),
  const SizedBox(
  width: 5,
  ),
  GestureDetector(
  onTap: () {
  setState(() {
  favorite["isChecked"] =
  !favorite["isChecked"];
  });
  },
  child: const Icon(
  Icons.delete_forever_rounded,
  color: Colors.white,
  ),
  ),
  ],
  ),
  ),
  );
  }
  return Container();
  }).toList(),
  )
  ]),
  ),
  ),
  );
  }
  }