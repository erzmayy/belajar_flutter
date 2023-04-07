import 'package:flutter/material.dart';

class KolomBaris extends StatelessWidget {
  const KolomBaris({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Baris dan Kolom'),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 150,
                  child: const Text('Baris 1 Kolom 1'),
                ),
              ),
              Expanded(
                child: Container(
                  height: 150,
                  child: const Text('Baris 1 Kolom 2'),
                ),
              ),
              Expanded(
                child: Container(
                  height: 150,
                  child: const Text('Baris 1 Kolom 3'),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 150,
                  child: const Text('Baris 2 Kolom 1'),
                ),
              ),
              Expanded(
                child: Container(
                  height: 150,
                  child: const Text('Baris 2 Kolom 2'),
                ),
              ),
              Expanded(
                child: Container(
                  height: 150,
                  child: const Text('Baris 2 Kolom 3'),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 150,
                  child: const Text('Baris 3 Kolom 1'),
                ),
              ),
              Expanded(
                child: Container(
                  height: 150,
                  child: const Text('Baris 3 Kolom 2'),
                ),
              ),
              Expanded(
                child: Container(
                  height: 150,
                  child: const Text('Baris 3 Kolom 3'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}