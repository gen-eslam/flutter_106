import 'package:flutter/material.dart';
import 'package:flutter_106/navigation/screen_three.dart';

class ScreenTwo extends StatelessWidget {
  const ScreenTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.green,
        appBar: AppBar(
          title: const Text('Screen Two'),
        ),
        body: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(
                      builder: (context) => const ScreenThree(),
                    ),
                    (route) => false,
                  );
                },
                child: const Text('Go to Screen Three Replace'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const ScreenThree(),
                  ));
                },
                child: const Text('Go to Screen Three'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text('Go to Screen One'),
              ),
            ],
          ),
        ));
  }
}
