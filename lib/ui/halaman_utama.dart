import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:belajar_flutter/ui/karyawan_page.dart';
import 'package:belajar_flutter/ui/poli_page.dart';
import 'package:belajar_flutter/ui/pasien_page.dart';

class Halamanutama extends StatefulWidget {
  const Halamanutama({super.key});
  @override
  State<Halamanutama> createState() => _HalamanutamaState();
}

class _HalamanutamaState extends State<Halamanutama> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Halaman Utama")),
      body: Center(
        child: Column(children: [
          Container(
            child: Image.network(
              "https://upload.wikimedia.org/wikipedia/commons/f/fa/Klinik_logo.png",
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 20),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => PoliPage()));
                  },
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
                  child: const Text("Halaman Poli")),
              SizedBox(height: 20),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => KaryawanPage()));
                  },
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                  child: const Text("Halaman Karyawan")),

              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PasienPage()));
                  },
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                  child: const Text("Halaman Pasien")),
            ],
          )
        ]),
      ),
    );
  }
}