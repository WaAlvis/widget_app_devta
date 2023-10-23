import 'package:flutter/material.dart';

class ProgressScreen extends StatelessWidget {
  const ProgressScreen({super.key});

  static const name = 'progress_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Progress Indicators'),
      ),
      body: const _ScrollView(),
    );
  }
}

class _ScrollView extends StatelessWidget {
  const _ScrollView();

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        children: [
          SizedBox(height: 30),
          Text('Circular Progress indicador'),
          SizedBox(height: 20),
          CircularProgressIndicator(
            backgroundColor: Colors.black12,
          ),
          SizedBox(height: 40),
          SizedBox(height: 30),
          Text('Circular y linear Progress'),
          SizedBox(height: 20),
          _ControllerProgressIndicator(),
          SizedBox(height: 40),
        ],
      ),
    );
  }
}

class _ControllerProgressIndicator extends StatelessWidget {
  const _ControllerProgressIndicator();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<double>(
      stream: Stream.periodic(
        const Duration(milliseconds: 300),
        (value) => (value * 2) / 100, // 0.0, 1.0
      ).takeWhile((value) => value < 100),
      builder: (context, snapshot) {
        final progressValue = snapshot.data ?? 0;

        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircularProgressIndicator(
                value: progressValue,
                strokeWidth: 2,
                backgroundColor: Colors.black12,
              ),
              const SizedBox(
                width: 20,
              ),
              Expanded(child: LinearProgressIndicator(value: progressValue)),
            ],
          ),
        );
      },
    );
  }
}
