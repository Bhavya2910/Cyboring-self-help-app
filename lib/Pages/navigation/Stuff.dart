import 'package:cyboring/Pages/login.dart';
import 'package:cyboring/Pages/navigation/toDo.dart';
import 'package:flutter/material.dart';
import 'package:cyboring/Pages/cover.dart';
import 'package:cyboring/Pages/home.dart';
import 'package:cyboring/Pages/navigation/Planning.dart';
import 'package:cyboring/Pages/navigation/Stuff.dart';
class Stuff extends StatefulWidget {
  const Stuff({Key? key}) : super(key: key);

  @override
  State<Stuff> createState() => _StuffState();
}

class _StuffState extends State<Stuff> {
  @override
  int seclectedindex = 3;
  void _onItemTapped(int index) {
    setState(() {
      seclectedindex = index;
    });
    if (seclectedindex == 0) {
      Navigator.pushReplacementNamed(this.context, '/home');
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


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('Cy Stuff',
          style: TextStyle(

              color: Colors.amber,
              fontSize: 30,
              fontWeight: FontWeight.bold,
              fontFamily: 'Arkanoid'

          ),


        ),
        centerTitle: true,
        backgroundColor: Colors.black,



      ),

      body: Center(
        child: Text('Undedevelopment',
          style: TextStyle(color: Colors.white),),
      ),

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