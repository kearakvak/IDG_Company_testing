import 'dart:convert';

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:testing_proget/square.dart';
import 'package:http/http.dart'as http;

class HomePage extends StatefulWidget {
   HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();

}
    // Future<Post>createPost(String title,String body){
    //   Map<String,dynamic>request={
    //     "title":title,
    //     'body':body,
    //     'userid':"1"
    //   }
    // }
    final List _posts =
  [
"kldfjafja",
'dlfjadfjskad',
"kdjfladf",'kldfajfldas',
'dkfladfa',
  ];
List<dynamic> users=[];
class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          centerTitle: true,
          title: const Text("បញ្ជីតំបន់ទេសចរណ៍"),
          leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_back_ios_new_outlined,
            ),
          ),
        ),
        body: ListView.builder(
          itemCount:_posts.length,
          itemBuilder:(context, index) {
          //  final user=users[index];
          //  final id=user['data'];
           return MySquare(child: "dl;fjalkdfj",);

         },
         ),
        bottomNavigationBar: CurvedNavigationBar(
          onTap:(value) {
            testingUsers();
          },
          items: [
            Icon(Icons.add_circle_outline_rounded),
          ],
        
        ));
  }

  void testingUsers()async{
    print("fetchUser called");
    const url='https://test-superapp-api.idev.group/mobile/get_my_attraction';
    final uri=Uri.parse(url);
    final response= await http.post(uri);
    final body=response.body;
    final json=jsonDecode(body);
  setState(() {
   users =json['data'];
   print('Api for testing playing $users');
  });
  print("User Compleced");
  }
}
