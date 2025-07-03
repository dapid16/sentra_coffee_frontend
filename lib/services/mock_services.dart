// lib/services/mock_service.dart
import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;
import '../models/menu.dart';

class MockService {
  Future<List<Menu>> fetchMenus() async {
    final String dataString =
        await rootBundle.loadString('assets/mock_menu.json');
    final Map<String, dynamic> jsonData = json.decode(dataString);
    List<dynamic> daftar = jsonData['data'];
    return daftar.map((item) => Menu.fromJson(item)).toList();
  }
}
