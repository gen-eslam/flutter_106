import 'package:flutter/material.dart';

class ScreenFour extends StatelessWidget {
  const ScreenFour({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: const Text('Screen Four'),
        ),
        body: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text('back'),
              ),
            ],
          ),
        ));
  }
}
