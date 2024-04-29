import 'package:flutter/material.dart';
import 'package:flutter_106/navigation/screen_four.dart';

class ScreenThree extends StatelessWidget {
  const ScreenThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: const Text('Screen Three'),
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
                      builder: (context) => const ScreenFour(),
                    ),
                    (route) => false,
                  );
                },
                child: const Text('push and remove until'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const ScreenFour(),
                    ),
                  );
                },
                child: const Text('go to screen four'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text('Go to Screen Two'),
              ),
            ],
          ),
        ));
  }
}
