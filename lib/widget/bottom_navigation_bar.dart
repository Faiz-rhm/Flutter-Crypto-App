import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(30), topLeft: Radius.circular(35)),
        boxShadow: [
          BoxShadow(color: Colors.black38, spreadRadius: 0, blurRadius: 10),
        ],
      ),
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(35.0),
        topRight: Radius.circular(45.0),
        ),
        child: BottomNavigationBar(
          backgroundColor:Colors.grey.withOpacity(0.2),
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: Colors.yellowAccent[700],
          unselectedItemColor: Colors.white54,
          currentIndex: 0,
          type: BottomNavigationBarType.fixed,
          elevation: 0,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                IconlyBroken.home,
                size: 25,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                IconlyBroken.heart,
                size: 25,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                IconlyBroken.chat,
                size: 25,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                IconlyBroken.profile,
                size: 25,
              ),
              label: '',
            ),
        ]),
      )
    );
  }
}
