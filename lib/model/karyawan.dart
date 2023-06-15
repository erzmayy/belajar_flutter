class Karyawan {
  int? id;
  String nip;
  String nama;
  String tanggal_lahir;
  String nomor_telepon;
  String email;
  String password;

  Karyawan({this.id, required this.nip,
    required this.nama,
    required this.tanggal_lahir,
    required this.nomor_telepon,
    required this.email,
    required this.password});

  factory Karyawan.fromJson(Map<String, dynamic> json) =>
      Karyawan(id: json["id"],
          nip: json["nip"],
          nama: json["nama"],
          tanggal_lahir: json["tanggal_lahir"],
          nomor_telepon: json["nomor_telepon"],
          email: json["email"],
          password: json["password"]);


  Map<String, dynamic> toJson() => {"nama": nama};
}