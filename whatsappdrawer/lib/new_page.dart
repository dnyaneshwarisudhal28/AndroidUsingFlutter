import 'package:flutter/material.dart';


class App extends StatelessWidget {
  final String title;
  const App({Key? key, required this.title}) : super(key: key);
 // const App({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    //  backgroundColor: Colors.white70,
      appBar: AppBar(
         title:  Text(title),
        leading: const Icon(Icons.person,color: Colors.white,size: 30,),
        backgroundColor: const Color.fromRGBO(25, 43, 51, 10),
      ),
      body: Center(
        child: Container(
         alignment: Alignment.bottomCenter,

          margin: const  EdgeInsets.only(left: 10.0,right: 10.0,bottom: 10.0),
          child: TextField(
            decoration: InputDecoration(
              labelText: 'Message',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50.0),
                ),
              ),
            ),
          ),
        ),
    );
  }
}
