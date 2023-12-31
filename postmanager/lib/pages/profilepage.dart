import 'package:flutter/material.dart';

class Profilepage extends StatelessWidget {
  const Profilepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          elevation: 2,
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 5,
            child: Row(
              children: [
                Container(
                  margin: const EdgeInsets.all(10),
                  width: MediaQuery.of(context).size.height / 5 - 20,
                  height: MediaQuery.of(context).size.height / 5 - 20,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: const Color.fromARGB(255, 180, 100, 194)),
                  child: Icon(
                    Icons.person,
                    size: MediaQuery.of(context).size.height / 5 - 80,
                    color: Colors.white,
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(10),
                    color: Color.fromARGB(255, 225, 130, 241),
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
