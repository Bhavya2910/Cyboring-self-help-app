import 'package:cyboring/Pages/login.dart';
import 'package:cyboring/Pages/navigation/Stuff.dart';
import 'package:flutter/material.dart';
import 'package:cyboring/Pages/cover.dart';
import 'package:cyboring/Pages/home.dart';
import 'package:cyboring/Pages/navigation/Planning.dart';
import 'package:cyboring/Pages/navigation/Stuff.dart';
class ToDo extends StatefulWidget {
  const ToDo({Key? key}) : super(key: key);

  @override
  State<ToDo> createState() => _ToDoState();
}

class _ToDoState extends State<ToDo> {

  @override
  int seclectedindex = 1;

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

    else if (seclectedindex == 3) {
      Navigator.pushReplacementNamed(this.context, '/stuff');
    }
  }

  // save data
  final List<String> _todoList = <String>[];

  // text field
  final TextEditingController _textFieldController = TextEditingController();


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

      body: ListView(children: _getItems()),



      floatingActionButton: FloatingActionButton(
          onPressed: () => _displayDialog(context),
          tooltip: 'Add Item',
          child: Icon(Icons.add)),


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

  void _addTodoItem(String title) {
    //  a set state will notify the app that the state has changed
    setState(() {
      _todoList.add(title);
    });
    _textFieldController.clear();
  }

  Widget _buildTodoItem(String title) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(12, 20, 12, 20),
      child: ListTile(title: Text(
        title,
        style: TextStyle(
          color: Colors.amber,
          fontSize: 20

        ),
      )),
    );
    // return Card(
    //     margin: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
    //     child: Padding(
    //       padding: const EdgeInsets.all(12.0),
    //       child: Column(
    //         crossAxisAlignment: CrossAxisAlignment.stretch,
    //         children: <Widget>[
    //           Text(
    //             title,
    //             style: TextStyle(
    //               fontSize: 18.0,
    //               color: Colors.grey[600],
    //             ),
    //           ),
    //           SizedBox(height: 6.0),
    //
    //
    //         ],
    //       ),
    //     )
    // );

  }

  Future<Future> _displayDialog(BuildContext context) async {
    // alter the app state to show a dialog
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Add a task to your list'),
            content: TextField(
              style: TextStyle(color: Colors.black),
              controller: _textFieldController,
              decoration: const InputDecoration(hintText: 'Enter task here'),
            ),
            actions: <Widget>[
              // add button
              FlatButton(
                child: const Text('ADD'),
                onPressed: () {
                  Navigator.of(context).pop();
                  _addTodoItem(_textFieldController.text);
                },
              ),
              // cancel button
              FlatButton(
                child: const Text('CANCEL'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              )
            ],
          );
        });
  }


  // iterates through our todo list titles.
  List<Widget> _getItems() {
    final List<Widget> _todoWidgets = <Widget>[];
    for (String title in _todoList) {
      _todoWidgets.add(_buildTodoItem(title));
    }
    return _todoWidgets ;


  }
}