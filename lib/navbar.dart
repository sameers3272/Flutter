import 'package:flutter/material.dart';
import 'request_ticket.dart';
import 'dashboard.dart';
import 'get_ticket.dart';
import 'view_req.dart';
import 'logout.dart';
import 'drawer.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Navbar(),
    );
  }
}

class Navbar extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<Navbar> {
  var currentPage = DrawerSections.dashboard;

  @override
  Widget build(BuildContext context) {
    var container;
    if (currentPage == DrawerSections.dashboard) {
      container = DashBoardScreen();
    } else if (currentPage == DrawerSections.request) {
      container = RequestTicket();
    } else if (currentPage == DrawerSections.get) {
      container = GetTicket();
    } else if (currentPage == DrawerSections.view) {
      container = ViewRequest();
    } else if (currentPage == DrawerSections.logout) {
      container = Logout();
    }
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Text("CRM"),
      ),
      body: container,
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                MyDrawer(),
                MyDrawerList(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget MyDrawerList() {
    return Container(
      padding: EdgeInsets.only(
        top: 15,
      ),
      child: Column(
        // shows the list of menu drawer
        children: [
          menuItem(1, "Dashboard", Icons.dashboard_outlined,
              currentPage == DrawerSections.dashboard ? true : false),
          menuItem(2, "Request", Icons.book,
              currentPage == DrawerSections.request ? true : false),
          menuItem(3, "Get", Icons.query_stats,
              currentPage == DrawerSections.get ? true : false),
          menuItem(6, "LogOut", Icons.settings_outlined,
              currentPage == DrawerSections.logout ? true : false),

        ],
      ),
    );
  }

  Widget menuItem(int id, String title, IconData icon, bool selected) {
    return Material(
      color: selected ? Colors.grey[300] : Colors.transparent,
      child: InkWell(
        onTap: () {
          Navigator.pop(context);
          setState(() {
            if (id == 1) {
              currentPage = DrawerSections.dashboard;
            } else if (id == 2) {
              currentPage = DrawerSections.request;
            } else if (id == 3) {
              currentPage = DrawerSections.get;
            } else if (id == 5) {
              currentPage = DrawerSections.view;
            } else if (id == 6) {
              currentPage = DrawerSections.logout;
            }
          });
        },
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Row(
            children: [
              Expanded(
                child: Icon(
                  icon,
                  size: 20,
                  color: Colors.black,
                ),
              ),
              Expanded(
                flex: 3,
                child: Text(
                  title,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

enum DrawerSections {
  dashboard,
  request,
  get,
  view,
  logout,
}