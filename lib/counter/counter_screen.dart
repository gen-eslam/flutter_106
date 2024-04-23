import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Counter App'),
          centerTitle: true,
        ),
        body: Center(
          child: Text(
            '$counter',
            style: const TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic),
          ),
        ),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            FloatingActionButton(
              child: const Icon(Icons.minimize),
              onPressed: () {
                if (counter > 0) {
                  counter--;
                  print('Pressed- $counter');
                  setState(() {});
                }
              },
            ),
            FloatingActionButton(
              child: const Text("rest"),
              onPressed: () {
                counter = 0;
                print('reset $counter');
                setState(() {});
              },
            ),
            FloatingActionButton(
              child: const Icon(Icons.add),
              onPressed: () {
                counter++;
                print('Pressed+ $counter');
                setState(() {});
              },
            ),
          ],
        ));
  }
}
