// lib/services/admin_auth_service.dart 

import 'package:flutter/foundation.dart';
import 'package:sentra_coffee_frontend/models/owner.dart';


class AdminAuthService with ChangeNotifier {
  Owner? _currentOwner;


  Owner? get currentOwner => _currentOwner;
  bool get isAdminLoggedIn => _currentOwner != null;

  void loginWithOwnerData(Owner ownerData) {
    _currentOwner = ownerData;
    notifyListeners(); 
    debugPrint('AdminAuthService: Owner ${ownerData.namaOwner} has been set as logged in.');
  }


  void logout() {
    _currentOwner = null;
    notifyListeners(); 
    debugPrint('Admin has logged out.');
  }
}