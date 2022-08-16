import 'package:flutter/material.dart';

class Veggie extends StatefulWidget {
  Veggie({Key? key}) : super(key: key);

  @override
  State<Veggie> createState() => _VeggieState();
}

class _VeggieState extends State<Veggie> {
  List<String> imageList = [
    'assets/apel.png',
    'assets/wortel.png',
    'assets/apel.png',
    'assets/wortel.png',
    'assets/apel.png',
    'assets/wortel.png',
    'assets/apel.png',
    'assets/wortel.png',
    'assets/apel.png',
    'assets/wortel.png',
    'assets/apel.png',
    'assets/wortel.png',
    'assets/apel.png',
    'assets/wortel.png',
    'assets/apel.png',
    'assets/wortel.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: Container(
        margin: EdgeInsets.all(10),
        child: GridView.builder(
            itemCount: imageList.length,
            itemBuilder: (context, index) {
              return Container(
                child: Column(children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Color.fromARGB(255, 215, 217, 219)),
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.20,
                    child: Image.asset(imageList[index]),
                  ),
                  Text('apel')
                ]),
              );
            },
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 25,
              crossAxisSpacing: 17,
            )),
      ),
    );
  }
}
