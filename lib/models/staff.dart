// lib/models/staff.dart

import 'dart:convert';


List<Staff> staffFromJson(String str) =>
    List<Staff>.from(json.decode(str)["records"].map((x) => Staff.fromJson(x)));

class Staff {
  final int idStaff;
  final String namaStaff;
  final String email;
  final String? noHp;
  final String role; 
  final String? gambar; 

  Staff({
    required this.idStaff,
    required this.namaStaff,
    required this.email,
    this.noHp,
    required this.role,
    this.gambar,
  });

  factory Staff.fromJson(Map<String, dynamic> json) => Staff(
        idStaff: int.parse(json["id_staff"].toString()),
        namaStaff: json["nama_staff"],
        email: json["email"],
        noHp: json["no_hp"],
        role: json["role"],
        gambar: json["gambar"],
      );
}