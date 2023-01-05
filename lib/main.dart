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
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.all(10),
        child: ListView(
          padding: const EdgeInsets.all(15),
          shrinkWrap: true,
          children: [
            Card(
                color: Colors.red,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListView(
                    shrinkWrap: true,
                    children: [
                      Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(8),
                            color: Colors.grey,
                            child: const Text("Container with fixed width"),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        padding: const EdgeInsets.all(8),
                        color: Colors.green,
                        margin: const EdgeInsets.only(right: 70),
                        child: const Text("Container with Dynamic width"),
                      )
                    ],
                  ),
                )),
            const SizedBox(
              height: 100,
            ),
            Stack( clipBehavior: Clip.none,alignment: AlignmentDirectional.topCenter,
              children: [
                Card(
                    color: Colors.red,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const SizedBox(
                            height: 40,
                          ),
                          Container(
                            padding: const EdgeInsets.all(8),
                            width: double.infinity,
                            color: Colors.green,
                            margin: const EdgeInsets.only(right: 20),
                            child: const Text("Container with Dynamic width"),
                          )
                        ],
                      ),
                    )),
                Positioned(top: -10,
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    color: Colors.grey,
                    child: const Text("Container with fixed width"),
                  ),
                ),],
            ),
          ],
              
        ),
      ),
    );
  }
}
