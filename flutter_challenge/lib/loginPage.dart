import 'package:flutter/material.dart';
import 'package:flutter_challenge/listVeggie.dart';

class login extends StatefulWidget {
  login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Login')),
        body: Center(
            child: Container(
          margin: EdgeInsets.only(top: 40, right: 40, left: 40),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam. "),
            SizedBox(
              height: 20,
            ),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Email Address',
                labelStyle: TextStyle(color: Color.fromRGBO(169, 30, 255, 100)),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                labelStyle: TextStyle(color: Color.fromRGBO(169, 30, 255, 100)),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
                width: 300,
                height: 40,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Veggie()));
                  },
                  child: const Text(
                    'Login',
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
                  ),
                )),
          ]),
        )));
  }
}
