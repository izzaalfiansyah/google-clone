// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Layout extends StatelessWidget {
  const Layout({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    String value = 'www.google.com';

    return Column(
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        Container(
          height: 100.0,
          width: size.width,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(style: BorderStyle.none),
            // ignore: prefer_const_literals_to_create_immutables
            boxShadow: [
              BoxShadow(
                color: Color.fromARGB(255, 226, 225, 225),
                blurRadius: 10,
              )
            ],
          ),
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Icon(Icons.home_outlined),
                  Container(
                    width: size.width / 2 + 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Colors.grey[200],
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 9),
                    child: TextFormField(
                      initialValue: value,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  Icon(Icons.refresh),
                  Icon(Icons.menu),
                ],
              ),
            ),
          ),
        ),
        Expanded(
          child: ListView(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            children: [
              child,
            ],
          ),
        )
      ],
    );
  }
}
