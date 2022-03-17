// ignore_for_file: non_constant_identifier_names, prefer_const_constructors

import 'package:flutter/material.dart';


import 'Home.dart';


class LoginPage extends StatelessWidget {
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Stack(
      children: [
        
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/jungle.jpg'),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(Colors.black45, BlendMode.darken)
            )
          ),
        ),
        Body()
      ],
     ),
    );
  }
}

class Body extends StatelessWidget {
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: ListView(
        children: [
           Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
      
      //email
      
      Container(height: 75,),
      
            const Padding(
              padding: EdgeInsets.all(30.0),
              child: Center(
                child: Text(
                  "Book Shop",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontStyle:FontStyle.italic,
                  ),
                ),
              ),
            ),
      
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: TextField(
                style: TextStyle(color: Colors.white),
                onChanged: (text) {
                  email = text;
                  print(email);
                },
                decoration: InputDecoration(
                  labelStyle: TextStyle(color: Colors.white),
                  label: Text('Email'),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(color: Colors.white, width: 2),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white, width: 2),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ),
      
      //password
      
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: TextField(
                style: TextStyle(color: Colors.white),
                onChanged: (text) {
                  password = text;
                  print(password);
                },
                obscureText: true,
                decoration: InputDecoration(
                  labelStyle: TextStyle(
                    color: Colors.white,
                  ),
                  label: Text('Password'),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(color: Colors.white, width: 2),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white, width: 2),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ),
      
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: Container(
                width: double.infinity,
                height: 45,
                child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(const Color(
                          0xffffffff)),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                          side: const BorderSide(
                            color: Color(0xffffffff),
                            width: 2.0
                          ),
                        ),
                      ),
                    ),
                    child: Text('Login'.toUpperCase()),
                    onPressed: () {
                      var email = this.email;
                      var password = this.password;
      

                      var ValidEmail = 'teste.com';
                      var ValidPassword = '1234';
      
                      if (email == ValidEmail && password == ValidPassword) {
                        Navigator.pushReplacementNamed(context, '/home');
                      } else {
                        print('senha incorreta');
                      }
                    }),
              ),
            ),
          ],
        ),]
      ),
    );
  }
}
