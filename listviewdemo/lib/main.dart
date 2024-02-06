 import 'package:flutter/material.dart';
import 'package:listviewdemo/next_page.dart';

void main(){
  runApp(const MyDemo());
}

class MyDemo extends StatelessWidget {
  final appTitle='ListView Demo';
  const MyDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: appTitle,
      home: Demo(title: appTitle),
    );
  }
}

class Demo extends StatelessWidget {
  final String title;
  const Demo({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      body: ListView(
        children:  [
          ListTile(
            title: const Text("Account Box",style: TextStyle(color: Colors.white),),
            leading: const Icon(Icons.account_box,color: Colors.white,),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> app()));
            },
          ),
          ListTile(
            title: const Text('Call',style: TextStyle(color: Colors.white),),
            leading: const Icon(Icons.call,color: Colors.white,),
            onTap: (){
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: const Text('Video Call',style: TextStyle(color: Colors.white),),
            leading: const Icon(Icons.video_call_outlined,color: Colors.white,),
            onTap: (){
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: const Text('Speak',style: TextStyle(color: Colors.white),),
            leading: const Icon(Icons.mic,color: Colors.white,),
            onTap: (){
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: const Text('Setting',style: TextStyle(color: Colors.white),),
            leading: const Icon(Icons.settings,color: Colors.white,),
            onTap: (){
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
