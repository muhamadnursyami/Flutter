import 'package:flutter/material.dart';

class SampleContainer extends StatelessWidget {
  const SampleContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.only(top: 50, left: 30),
      height: 300,
      width: 500,
      decoration: BoxDecoration(
          color: Colors.purpleAccent,
          border: Border.all(width: 4, color: Colors.red),
          borderRadius: BorderRadius.circular(30)),
      child: const Text('Selamat Belajar Widget '),
    );
  }
}
