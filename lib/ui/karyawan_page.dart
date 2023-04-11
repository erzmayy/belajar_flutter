import 'package:flutter/material.dart';
import '../model/karyawan.dart';
import 'karyawan_detail.dart';

class KaryawanPage extends StatefulWidget {
  const KaryawanPage({super.key});
  @override
  State<KaryawanPage> createState() => _KaryawanPageState();
}

class _KaryawanPageState extends State<KaryawanPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Data Karyawan")),
      body: ListView(
        children: [
          GestureDetector(
            child: Card(
              child: ListTile(
                title: const Text("Rangga Pebrianto"),
              ),
            ),
            onTap: () {
              Karyawan karyawanKlinik = new Karyawan(
                  id: 1,
                  nip: "202110265",
                  nama: "Rangga Pebrianto",
                  tanggal_lahir: "14 Februari 1997",
                  nomor_telepon: "0891122221",
                  email: "rangga.rpo@bsi.ac.id",
                  password: "rangga123");
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          KaryawanDetail(karyawan: karyawanKlinik)));
            },
          ),
          GestureDetector(
            child: Card(
              child: ListTile(
                title: const Text("Abdul Latif"),
              ),
            ),
            onTap: () {
              Karyawan karyawanKlinik = new Karyawan(
                  id: 2,
                  nip: "202110263",
                  nama: "Abdul Latif",
                  tanggal_lahir: "14 November 1994",
                  nomor_telepon: "0891122221",
                  email: "latif@bsi.ac.id",
                  password: "okelah123");
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          KaryawanDetail(karyawan: karyawanKlinik)));
            },
          ),
          GestureDetector(
            child: Card(
              child: ListTile(
                title: const Text("Chelsea"),
              ),
            ),
            onTap: () {
              Karyawan karyawanKlinik = new Karyawan(
                  id: 3,
                  nip: "202110233",
                  nama: "Chelsea",
                  tanggal_lahir: "14 Desember 1994",
                  nomor_telepon: "0891122221",
                  email: "Chelsea@bsi.ac.id",
                  password: "123456qwerty");
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          KaryawanDetail(karyawan: karyawanKlinik)));
            },
          ),
        ],
      ),
    );
  }
}