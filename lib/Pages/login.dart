import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  State<Login> createState() => _Login();
}

class _Login extends State<Login> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
          padding: const EdgeInsets.all(10),
          child: ListView(
            children: <Widget>[
              Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(10),
                  child: const Text(
                    'Cyboring',
                    style: TextStyle(
                        fontSize: 30,
                        fontFamily: 'Arkanoid',
                        fontWeight: FontWeight.bold,
                        color: Colors.amber),
                  )),
              Container(
                child: Image.asset('assets/Gif.gif'),
              ),

              Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: Colors.amber,
                      fontFamily: 'Transformer',

                    ),

                  )),
              SizedBox(
                height: 15,
              ),
              Container(
                // padding: const EdgeInsets.all(10),
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                child: TextField(
                  style: TextStyle(color: Colors.amber),
                  controller: nameController,
                  decoration: const InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(4)),
                      borderSide: BorderSide(width: 1,color: Colors.amber),
                    ),
                    border: OutlineInputBorder(
                        borderSide:  BorderSide(color: Colors.amberAccent)),
                    focusedBorder:OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(4)),
                      borderSide: BorderSide(width: 1,color: Colors.amber),
                    ),
                    labelText: 'User Name',
                    labelStyle: TextStyle(
                        color: Colors.grey, fontFamily: 'Transformer'),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                // padding: const EdgeInsets.all(10),
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                child: TextField(
                  style: TextStyle(color: Colors.amberAccent),
                  obscureText: true,
                  controller: passwordController,
                  decoration: const InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(4)),
                      borderSide: BorderSide(width: 1,color: Colors.amber),
                    ),
                    border: OutlineInputBorder(
                        borderSide:  BorderSide(color: Colors.amberAccent)),
                    focusedBorder:OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(4)),
                      borderSide: BorderSide(width: 1,color: Colors.amber),
                    ),


                    labelText: 'Password',
                    labelStyle: TextStyle(color: Colors.grey, fontFamily: 'Transformer'),
                  ),
                ),
              ),

              SizedBox(height: 20),
              Container(
                height: 50,
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),

                child: ElevatedButton(

                  child: Text('Login',
                    style: TextStyle(color: Colors.black,fontFamily: 'Transformer',fontSize: 20),

                  ),
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/home',
                        arguments: nameController.text);

                    // print(nameController.text);
                    // print(passwordController.text);
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                  ),


                ),
              ),

              SizedBox(height: 20),

              TextButton(
                onPressed: () {
                  //forgot password screen
                },
                child: const Text(
                  'Forgot Password ?',
                  style: TextStyle(color: Colors.amber,
                      fontFamily: 'Transformer',
                      fontSize:20),

                ),
              ),

            ],
          )),
    );
  }
}