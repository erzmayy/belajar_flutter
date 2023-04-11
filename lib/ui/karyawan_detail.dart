import 'package:flutter/material.dart';
import '../model/karyawan.dart';

class KaryawanDetail extends StatefulWidget {
  final Karyawan karyawan;
  const KaryawanDetail({super.key, required this.karyawan});
  @override
  State<KaryawanDetail> createState() => _KaryawanDetailState();
}

class _KaryawanDetailState extends State<KaryawanDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Detail Karyawan")),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20),
          Text(
            "ID : ${widget.karyawan.id}",
            style: TextStyle(fontSize: 20),
          ),
          Text(
            "NIP : ${widget.karyawan.nip}",
            style: TextStyle(fontSize: 20),
          ),
          Text(
            "Nama : ${widget.karyawan.nama}",
            style: TextStyle(fontSize: 20),
          ),
          Text(
            "Tanggal Lahir : ${widget.karyawan.tanggal_lahir}",
            style: TextStyle(fontSize: 20),
          ),
          Text(
            "Telpon : ${widget.karyawan.nomor_telepon}",
            style: TextStyle(fontSize: 20),
          ),
          Text(
            "Email : ${widget.karyawan.email}",
            style: TextStyle(fontSize: 20),
          ),
          Text(
            "Password : ${widget.karyawan.password}",
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
                  child: const Text("Ubah")),
              ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                  child: const Text("Hapus")),
            ],
          )
        ],
      ),
    );
  }
}