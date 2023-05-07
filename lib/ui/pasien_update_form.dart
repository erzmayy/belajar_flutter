import 'package:flutter/material.dart';
import '../model/pasien.dart';
import '/ui/pasien_detail.dart';

class PasienUpdateForm extends StatefulWidget {
  final Pasien pasien;

  const PasienUpdateForm({Key? key, required this.pasien}) : super(key: key);
  _PasienUpdateFormState createState() => _PasienUpdateFormState();
}

class _PasienUpdateFormState extends State<PasienUpdateForm> {
  final _formKey = GlobalKey<FormState>();
  final _nomor_rm_Pasienctrl = TextEditingController();
  final _namaPasienctrl = TextEditingController();
  final _tanggal_lahirPasienctrl = TextEditingController();
  final _nomor_teleponPasienctrl = TextEditingController();
  final _alamatPasienctrl = TextEditingController();

  @override
  void initState() {
    super.initState();
    setState(() {
      _nomor_rm_Pasienctrl.text = widget.pasien.nomor_rm;
      _namaPasienctrl.text = widget.pasien.nama;
      _tanggal_lahirPasienctrl.text = widget.pasien.tanggal_lahir;
      _nomor_teleponPasienctrl.text = widget.pasien.nomor_telepon;
      _alamatPasienctrl.text = widget.pasien.alamat;
    });
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: const Text("Ubah Pasien")),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [_fieldNomorRM(),
              _fieldNamaPasien(),
              _fieldTanggalLahir(),
              _fieldNomorTelepon(),
              _fieldAlamat(),
              SizedBox(height: 20), _tombolSimpan()],
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

