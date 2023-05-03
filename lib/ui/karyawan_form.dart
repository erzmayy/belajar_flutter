import 'package:flutter/material.dart';

class KaryawanForm extends StatefulWidget {
  const KaryawanForm({Key? key}) : super(key: key);
  _KaryawanFormState createState() => _KaryawanFormState();
}

class _KaryawanFormState extends State<KaryawanForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: const Text("Tambah Karyawan")),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextField(
                  decoration: const InputDecoration(labelText: "Nama Karyawan")),
              SizedBox(height: 20),
              ElevatedButton(onPressed: () {}, child: const Text("Simpan"))
            ],
          ),
        ),
      ),
    );
  }
}