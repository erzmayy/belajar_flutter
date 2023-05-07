import 'package:flutter/material.dart';
import '../model/pasien.dart';
import 'pasien_update_form.dart';

class PasienDetail extends StatefulWidget {
  final Pasien pasien;
  const PasienDetail({super.key, required this.pasien});
  @override
  State<PasienDetail> createState() => _PasienDetailState();
}

class _PasienDetailState extends State<PasienDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Detail Pasien")),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20),
          Text(
            "ID : ${widget.pasien.id}",
            style: TextStyle(fontSize: 20),
          ),
          Text(
            "Nomor RM : ${widget.pasien.nomor_rm}",
            style: TextStyle(fontSize: 20),
          ),
          Text(
            "Nama : ${widget.pasien.nama}",
            style: TextStyle(fontSize: 20),
          ),
          Text(
            "Tanggal Lahir : ${widget.pasien.tanggal_lahir}",
            style: TextStyle(fontSize: 20),
          ),
          Text(
            "Telpon : ${widget.pasien.nomor_telepon}",
            style: TextStyle(fontSize: 20),
          ),
          Text(
            "Alamat : ${widget.pasien.alamat}",
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _tombolUbah(),
              _tombolHapus(),
            ],
          )
        ],
      ),
    );
  }
  _tombolUbah() {
    return ElevatedButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => PasienUpdateForm(pasien: widget.pasien)));
        },
        style:
        ElevatedButton.styleFrom(backgroundColor: Colors.green),
        child: const Text("Ubah"));
  }
  _tombolHapus() {
    return  ElevatedButton(
        onPressed: (){},
        style:
        ElevatedButton.styleFrom(backgroundColor: Colors.red),
        child: const Text("Hapus"));
  }
}