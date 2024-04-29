import 'package:flutter/material.dart';
import 'package:flutter_106/navigation/screen_two.dart';

class ScreenOne extends StatelessWidget {
  const ScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.amber,
        appBar: AppBar(
          title: const Text('Screen One'),
        ),
        body: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const ScreenTwo()));
                },
                child: const Text('Go to Screen Two'),
              ),
            ],
          ),
        ));
  }
}
