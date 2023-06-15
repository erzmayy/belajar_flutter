import 'package:belajar_flutter/ui/karyawan_form.dart';
import 'package:flutter/material.dart';
import '../widget/sidebar.dart';
import '../model/karyawan.dart';
import 'karyawan_item.dart';

class KaryawanPage extends StatefulWidget {
  const KaryawanPage({super.key});

  @override
  State<KaryawanPage> createState() => _KaryawanPageState();
}

class _KaryawanPageState extends State<KaryawanPage> {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      drawer: Sidebar(),
      appBar: AppBar(title: const Text("Data Karyawan"),
        actions: [
          GestureDetector(
            child: const Icon(Icons.add),
            onTap: (){
              Navigator.push(
                  context,MaterialPageRoute(builder: (context) => KaryawanForm()));
            },
          )
        ],
      ),
      body: ListView(
        children: [
          KaryawanItem(karyawan: Karyawan(nip: "1234",
              nama: "Rangga Pebrianto",
              tanggal_lahir: "14 Februari 1997",
              nomor_telepon: "0891122221",
              email: "rangga.rpo@bsi.ac.id",
              password: "rangga123")),
          KaryawanItem(karyawan: Karyawan(nip: "1234" ,
              nama: "Rama Sanjaya",
              tanggal_lahir: "4 Juni 1998",
              nomor_telepon: "0891122221",
              email: "sanjayarama@bsi.ac.id",
              password: "rangga123")),
          KaryawanItem(karyawan: Karyawan(nip: "1234",
              nama: "Damayanti Diah P",
              tanggal_lahir: "06 Maret 2003",
              nomor_telepon: "0891122221",
              email: "damay.pw@bsi.ac.id",
              password: "rangga123")),

        ],
      ),
    );
  }
}