import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // TODO: Add app bar (102)
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.menu, semanticLabel: 'menu'),
          onPressed: () {
            print('Menu button');
          },
        ),
        title: const Text('SHRINE'),
        // TODO: Add trailing buttons (102)
      ),
      // TODO: Add a grid view (102)
      body: Center(child: Text('You did it!')),
      resizeToAvoidBottomInset: false,
    );
  }
}
