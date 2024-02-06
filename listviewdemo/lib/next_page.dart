import 'package:flutter/material.dart';
import 'package:listviewdemo/main.dart';

void main(){
    runApp(app());
}
class app extends StatelessWidget {
  //final title = ''
  const app({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: ElevatedButton(
            child: const Text('Back'),
            onPressed: (){
              Navigator.pop(context);
            },
          ),
        ),
    );
  }
}
