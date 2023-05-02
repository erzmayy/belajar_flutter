import 'package:flutter/material.dart';
import '../model/pasien.dart';
import 'pasien_detail.dart';
import 'pasien_item.dart';
import 'pasien_form.dart';

class PasienPage extends StatefulWidget {
  const PasienPage({super.key});
  @override
  State<PasienPage> createState() => _PasienPageState();
}

class _PasienPageState extends State<PasienPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Data Pasien")),
      body: ListView(
        children: [
          GestureDetector(
            child: Card(
              child: ListTile(
                title: const Text("Rangga Pebrianto"),
              ),
            ),
            onTap: () {
              Pasien PasienKlinik = new Pasien(
                  id: 1,
                  nomor_rm: "202110265",
                  nama: "Rangga Pebrianto",
                  tanggal_lahir: "14 Februari 1997",
                  nomor_telepon: "0891122221",
                  alamat: "Jakarta");
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          PasienDetail(pasien: PasienKlinik)));
            },
          ),
          GestureDetector(
            child: Card(
              child: ListTile(
                title: const Text("Rama Sanjaya"),
              ),
            ),
            onTap: () {
              Pasien PasienKlinik = new Pasien(
                  id: 1,
                  nomor_rm: "202110265",
                  nama: "Rama Sanjaya",
                  tanggal_lahir: "14 Februari 1997",
                  nomor_telepon: "0891122221",
                  alamat: "Jakarta");
                  Navigator.push(
                  context,
                  MaterialPageRoute(
                  builder: (context) =>
                  PasienDetail(pasien: PasienKlinik)));
            },
          ),
          GestureDetector(
            child: Card(
              child: ListTile(
                title: const Text("Damayanti "),
              ),
            ),
            onTap: () {
              Pasien PasienKlinik = new Pasien(
                  id: 1,
                  nomor_rm: "202110265",
                  nama: "Damayanti",
                  tanggal_lahir: "14 Februari 1997",
                  nomor_telepon: "0891122221",
                  alamat: "Jakarta");
                  Navigator.push(
                  context,
                  MaterialPageRoute(
                  builder: (context) =>
                  PasienDetail(pasien: PasienKlinik)));
            },
          ),
        ],
      ),
    );
  }
}