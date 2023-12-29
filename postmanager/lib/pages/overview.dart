import 'package:flutter/material.dart';
import 'package:postmanager/pages/homepage.dart';
import 'package:postmanager/pages/postpage.dart';
import 'package:postmanager/pages/profilepage.dart';

class Overview extends StatefulWidget {
  Overview({super.key});

  @override
  State<Overview> createState() => _OverviewState();
}

class _OverviewState extends State<Overview> {
  int index = 0;

  List<dynamic> pages = [Homepage(), Postpage(), Profilepage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Post Manager",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
        ),
        backgroundColor: const Color.fromARGB(255, 180, 90, 200),
        elevation: 6,
        shadowColor: Colors.black,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.message, color: Colors.white)),
          IconButton(onPressed: () {}, icon: Icon(Icons.settings, color: Colors.white)),
        ],
      ),
      body: pages[index],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        onTap: (i){
          setState(() {
            index = i;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: "Add"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
    );
  }
}
