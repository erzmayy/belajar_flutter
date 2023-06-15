import 'package:flutter/material.dart';
import '../widget/sidebar.dart';
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
      drawer: Sidebar(),
      appBar: AppBar(title: const Text("Data Pasien"),
        actions: [
          GestureDetector(
            child: const Icon(Icons.add),
            onTap: (){
              Navigator.push(
                  context,MaterialPageRoute(builder: (context) => PasienForm()));
            },
          )
        ],
      ),
      body: ListView(
        children: [
          PasienItem(pasien: Pasien(nomor_rm: "1234",
              nama: "Rangga Pebrianto",
              tanggal_lahir: "14 Februari 1997",
              nomor_telepon: "0891122221",
              alamat: "Jakarta timur")),
          PasienItem(pasien: Pasien(nomor_rm: "1234" ,
              nama: "Rama Sanjaya",
              tanggal_lahir: "4 Juni 1998",
              nomor_telepon: "0891122221",
              alamat: "Bandar Lampung")),
          PasienItem(pasien: Pasien(nomor_rm: "1234",
              nama: "Damayanti Diah P",
              tanggal_lahir: "06 Maret 2003",
              nomor_telepon: "08992578520",
              alamat: "Bandar Lampung")),

        ],
      ),
    );
  }
}