import 'package:flutter/material.dart';
import '../model/karyawan.dart';
import '/ui/karyawan_detail.dart';

class KaryawanUpdateForm extends StatefulWidget {
  final Karyawan karyawan;

  const KaryawanUpdateForm({Key? key, required this.karyawan}) : super(key: key);
  _KaryawanUpdateFormState createState() => _KaryawanUpdateFormState();
}

class _KaryawanUpdateFormState extends State<KaryawanUpdateForm> {
  final _formKey = GlobalKey<FormState>();
  final _nipKaryawanctrl = TextEditingController();
  final _namaKaryawanctrl = TextEditingController();
  final _tanggal_lahirKaryawanctrl = TextEditingController();
  final _nomor_teleponKaryawanctrl = TextEditingController();
  final _emailKaryawanctrl = TextEditingController();
  final _passwordKaryawanctrl = TextEditingController();

  @override
  void initState() {
    super.initState();
    setState(() {
      _nipKaryawanctrl.text = widget.karyawan.nip;
      _namaKaryawanctrl.text = widget.karyawan.nama;
      _tanggal_lahirKaryawanctrl.text = widget.karyawan.tanggal_lahir;
      _nomor_teleponKaryawanctrl.text = widget.karyawan.nomor_telepon;
      _emailKaryawanctrl.text = widget.karyawan.email;
      _passwordKaryawanctrl.text = widget.karyawan.password;

    });
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: const Text("Ubah Karyawan")),
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

