import 'package:cyboring/Pages/home.dart';
import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'login.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  int seclectedindex = 0;
  late String name;

  void _onItemTapped(int index) {
    setState(() {
      seclectedindex = index;
    });
    if (seclectedindex == 0) {
      Navigator.pushReplacementNamed(this.context, '/home',arguments: name);
    }

    else if (seclectedindex == 1) {
      Navigator.pushReplacementNamed(this.context, '/todo');
    }

    else if (seclectedindex == 2) {
      Navigator.pushReplacementNamed(this.context, '/planning');
    }

    else if(seclectedindex == 3)
    {
      Navigator.pushReplacementNamed(this.context, '/stuff');
    }
  }


  Widget build(BuildContext context) {
    final name = ModalRoute
        .of(context)!
        .settings
        .arguments
        .toString();
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Color(0xFF000000),
        title: Text(
          'Cyboring',
          style: TextStyle(
            fontSize: 30,
            fontFamily: 'Arkanoid',
            fontWeight: FontWeight.bold,
            color: Colors.amber,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
          padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Center(
                    child: CircleAvatar(
                      backgroundImage: AssetImage(
                          'assets/3.jpg'),
                      radius: 75.0,
                    )),
                Divider(
                  height: 60.0,
                  color: Colors.grey[600],
                ),
                Text('NAME',
                    style: TextStyle(
                      color: Colors.grey,
                      letterSpacing: 2.0,
                    )),
                SizedBox(height: 10.0),
                Text(name,
                    style: TextStyle(
                        color: Colors.amber,
                        letterSpacing: 2.0,
                        fontSize: 28.0,
                        fontWeight: FontWeight.bold)),
                SizedBox(height: 30.0),
                Text('CURRENT PRODUCTIVITY LEVEL',
                    style: TextStyle(
                      color: Colors.grey,
                      letterSpacing: 2.0,
                    )),
                SizedBox(height: 10.0),
                Text('Rookie',
                    style: TextStyle(
                        color: Colors.amber,
                        letterSpacing: 2.0,
                        fontSize: 28.0,
                        fontWeight: FontWeight.bold)),
                SizedBox(height: 30.0),
              ])),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              size: 30,
            ),
            label: 'Home',
            backgroundColor: Color(0xFF000000),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.check_box_outlined,
              size: 30,
            ),
            label: 'ToDo',
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.date_range,
              size: 30,
            ),
            label: 'Plan',
            backgroundColor: Color(0xFF000000),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.note_add_sharp,
              size: 30,
            ),
            label: 'Stuff',
            backgroundColor: Color(0xFF000000),
          )
        ],
        currentIndex: seclectedindex,
        selectedItemColor: Colors.amber,
        onTap: _onItemTapped,
      ),
    );
  }
}