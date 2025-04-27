import 'package:flutter/material.dart';
import 'package:navigator_basics/second_page.dart';

void main() {
  runApp(const InitApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class InitApp extends StatelessWidget {
  const InitApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My App Init",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyApp(),
    );
  }
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
        body: // First Page
            ElevatedButton(
          onPressed: () async {
          var result = await Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SecondPage(message : "Hello from first Page"),),
            );
            // show data from second page 
             if(result!=null){
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(result,),),);
          }
          },
         
          child: Text('Go to Second Page'),
        ));
  }
}
