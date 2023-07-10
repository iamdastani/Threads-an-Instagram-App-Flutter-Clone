import 'package:flutter/material.dart';
import 'package:threads/Screens/home.dart';

class Navi extends StatefulWidget {
  Navi({super.key});

  @override
  State<Navi> createState() => _NaviState();
}

class _NaviState extends State<Navi> {
  @override
  int index = 0;
  List page = [
    HomePage(),
    HomePage(),
    HomePage(),
    HomePage(),
    HomePage(),
  ];
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        color: Colors.grey.shade100,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    index = 0;
                  });
                },
                child: Icon(
                  Icons.home,
                  size: 27,
                  color: index == 0 ? Colors.black : Colors.grey,
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    index = 1;
                  });
                },
                child: Icon(
                  Icons.search,
                  size: 27,
                  color: index == 1 ? Colors.black : Colors.grey,
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    index = 2;
                  });
                },
                child: Icon(
                  Icons.edit_square,
                  size: 27,
                  color: index == 2 ? Colors.black : Colors.grey,
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    index = 3;
                  });
                },
                child: Icon(
                  Icons.favorite_border,
                  size: 27,
                  color: index == 3 ? Colors.black : Colors.grey,
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    index = 4;
                  });
                },
                child: Icon(
                  Icons.person_2_outlined,
                  size: 27,
                  color: index == 4 ? Colors.black : Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ),
      body: page[index],
    );
  }
}
