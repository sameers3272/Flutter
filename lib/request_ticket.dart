import 'package:flutter/material.dart';

class RequestTicket extends StatefulWidget {
  @override
  _RequestTicketPageState createState() => _RequestTicketPageState();
}

class _RequestTicketPageState extends State<RequestTicket> {
      @override
    Widget build(BuildContext context) {
        List<Map> categories = [
          {"name": "Software Development", "isChecked": false},
          {"name": "Cloud Computing", "isChecked": false},
          {"name": "IOT", "isChecked": false},
          {"name": "Cyber Security", "isChecked": true},
          {"name": "Machine Learning", "isChecked": false},
          {"name": "Data Science", "isChecked": false},
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
                "Please Choose your domain:",
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
