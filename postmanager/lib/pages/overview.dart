import 'package:flutter/material.dart';
import 'package:postmanager/pages/configpage.dart';
import 'package:postmanager/pages/homepage.dart';
import 'package:postmanager/pages/messagepage.dart';
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
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              index = 1;
            });
          },
          elevation: 0,
          child: Icon(Icons.add, color: Colors.white, size: index == 1 ? 30 : 25,),
          backgroundColor: Color.fromARGB(255, 235, 170, 248),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        appBar: AppBar(
          title: const Text(
            "Post Manager",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
          ),
          backgroundColor: const Color.fromARGB(255, 180, 90, 200),
          elevation: 6,
          shadowColor: Colors.black,
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (_) => Messagepage()));
                },
                icon: Icon(Icons.message, color: Colors.white)),
            IconButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (_) => Configpage()));
                },
                icon: Icon(Icons.settings, color: Colors.white)),
          ],
        ),
        body: pages[index],
        bottomNavigationBar: BottomAppBar(
          color: Color.fromARGB(255, 225, 172, 235),
          notchMargin: 3,
          elevation: 1,
          child: Container(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              
              IconButton(
                iconSize: 35,
                onPressed: () {
                  setState(() {
                    index = 0;
                  });
                },
                icon: Icon(index == 0 ?Icons.home :Icons.home_outlined, color: Colors.white,),
                
              ),
              SizedBox(
                width: 5,
              ),
              IconButton(
                iconSize: 35,
                onPressed: () {
                  setState(() {
                    index = 2;
                  });
                },
                icon: Icon(index == 2 ?Icons.person :Icons.person_outline, color: Colors.white,),
              )
            ],
          )),
          shape: AutomaticNotchedShape(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(15),
              ),
            ),
            RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
          ),
        ));
  }
}
/* BottomNavigationBar(
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
      ), */