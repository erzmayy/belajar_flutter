import 'package:flutter/material.dart';
import '../model/karyawan.dart';
import '../ui/karyawan_detail.dart';

class KaryawanForm extends StatefulWidget {
  const KaryawanForm({Key? key}) : super(key: key);
  _KaryawanFormState createState() => _KaryawanFormState();
}

class _KaryawanFormState extends State<KaryawanForm> {
  final _formKey = GlobalKey<FormState>();
  final _nipKaryawanctrl = TextEditingController();
  final _namaKaryawanctrl = TextEditingController();
  final _tanggal_lahirKaryawanctrl = TextEditingController();
  final _nomor_teleponKaryawanctrl = TextEditingController();
  final _emailKaryawanctrl = TextEditingController();
  final _passwordKaryawanctrl = TextEditingController();

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: const Text("Tambah Karyawan")),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [_fieldNip(),
              _fieldNamaKaryawan(),
              _fieldTanggalLahir(),
              _fieldNomorTelepon(),
              _fieldEmail(),
              _fieldPassword(),
              SizedBox(height: 20), _tombolSimpan()],
          ),
        ),
      ),
    );
  }
  _fieldNip() {
    return TextField(
      decoration: const InputDecoration(labelText: "NIP"),
      controller: _nipKaryawanctrl,
    );
  }
  _fieldNamaKaryawan() {
    return TextField(
      decoration: const InputDecoration(labelText: "Nama Karyawan"),
      controller: _namaKaryawanctrl,
    );
  }
  _fieldTanggalLahir() {
    return TextField(
      decoration: const InputDecoration(labelText: "Tanggal Lahir Karyawan"),
      controller: _tanggal_lahirKaryawanctrl,
    );
  }
  _fieldNomorTelepon() {
    return TextField(
      decoration: const InputDecoration(labelText: "No Telepon Karyawan"),
      controller: _nomor_teleponKaryawanctrl,
    );
  }
  _fieldEmail() {
    return TextField(
      decoration: const InputDecoration(labelText: "Email Karyawan"),
      controller: _emailKaryawanctrl,
    );
  }
  _fieldPassword() {
    return TextField(
      decoration: const InputDecoration(labelText: "Password Karyawan"),
      controller: _passwordKaryawanctrl,
    );
  }

  _tombolSimpan(){
    return ElevatedButton(
        onPressed: (){
          Karyawan karyawan = new Karyawan(nip: _nipKaryawanctrl.text,
          nama: _namaKaryawanctrl.text,
          tanggal_lahir: _tanggal_lahirKaryawanctrl.text,
          nomor_telepon: _nomor_teleponKaryawanctrl.text,
          email: _emailKaryawanctrl.text,
          password: _passwordKaryawanctrl.text);
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) => KaryawanDetail(karyawan: karyawan)));
        },
        child: const Text("Simpan"));
  }
}