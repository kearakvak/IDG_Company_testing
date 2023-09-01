
import 'package:flutter/material.dart';

class MySquare extends StatelessWidget {
  String child;
  MySquare({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(12),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Container(
          height: 150,
          color: Colors.green.shade100,
          child: Row(children: [
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(height: 100,color: Colors.yellow.shade200,),
              ),
            
            ),
            Expanded(
              flex: 4,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("data"),
                  Text("data"),
                  Text("data"),
                  Text("data"),
                  Text("data"),
                  Text("data"),

                ],
              ),
            ),
            Expanded(
              child:Column(
             //  mainAxisAlignment: MainAxisAlignment.,
                children: [
                  IconButton(
                  icon: Icon(Icons.more_vert),
                  onPressed: () {
                  },
            ),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
