import 'package:calculator_app/my_button.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData( 
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
          body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            children: [
              Row(
                children: const [
                  MyButton(title: 'AC'),
                  MyButton(title: '+/-' ),

                  MyButton(title: '%' ),
                  MyButton(title: '/', color: Color (0xffffa00a), ),
                ],
              )
            ],
          ),
        ),
      )),
    );
  }
}
