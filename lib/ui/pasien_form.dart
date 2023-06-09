import 'package:flutter/material.dart';
import '../model/pasien.dart';
import '../ui/pasien_detail.dart';

class PasienForm extends StatefulWidget {
  const PasienForm({Key? key}) : super(key: key);
  _PasienFormState createState() => _PasienFormState();
}

class _PasienFormState extends State<PasienForm> {
  final _formKey = GlobalKey<FormState>();
  final _nomor_rm_Pasienctrl = TextEditingController();
  final _namaPasienctrl = TextEditingController();
  final _tanggal_lahirPasienctrl = TextEditingController();
  final _nomor_teleponPasienctrl = TextEditingController();
  final _alamatPasienctrl = TextEditingController();

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: const Text("Tambah Pasien")),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [_fieldNomorRM(),
              _fieldNamaPasien(),
              _fieldTanggalLahir(),
              _fieldNomorTelepon(),
              _fieldAlamat(),
              SizedBox(height: 20),_tombolSimpan()],
          ),
        ),
      ),
    );
  }
  _fieldNomorRM() {
    return TextField(
      decoration: const InputDecoration(labelText: "Nomor RM"),
      controller: _nomor_rm_Pasienctrl,
    );
  }
  _fieldNamaPasien() {
    return TextField(
      decoration: const InputDecoration(labelText: "Nama Pasien"),
      controller: _namaPasienctrl,
    );
  }
  _fieldTanggalLahir() {
    return TextField(
      decoration: const InputDecoration(labelText: "Tanggal Lahir Pasien"),
      controller: _tanggal_lahirPasienctrl,
    );
  }
  _fieldNomorTelepon() {
    return TextField(
      decoration: const InputDecoration(labelText: "No Telepon Pasien"),
      controller: _nomor_teleponPasienctrl,
    );
  }
  _fieldAlamat() {
    return TextField(
      decoration: const InputDecoration(labelText: "Alamat Pasien"),
      controller: _alamatPasienctrl,
    );
  }

  _tombolSimpan(){
    return ElevatedButton(
        onPressed: (){
          Pasien pasien = new Pasien(nomor_rm: _nomor_rm_Pasienctrl.text,
              nama: _namaPasienctrl.text,
              tanggal_lahir: _tanggal_lahirPasienctrl.text,
              nomor_telepon: _nomor_teleponPasienctrl.text,
              alamat: _alamatPasienctrl.text);
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) => PasienDetail(pasien: pasien)));
        },
        child: const Text("Simpan"));
  }
}