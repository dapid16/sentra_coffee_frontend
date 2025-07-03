// lib/models/loyalty.dart

import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

class RewardHistoryItem {
  final String id;
  final String description;
  final int points;
  final DateTime date;

  RewardHistoryItem({
    required this.id,
    required this.description,
    required this.points,
    required this.date,
  });
}

class LoyaltyService extends ChangeNotifier {
  final Uuid _uuid = const Uuid();
  int _currentPoints = 280;
  final int _targetPoints = 25000;

  
  bool _isRedeeming = false; 

  final List<RewardHistoryItem> _history = [
    RewardHistoryItem(
      id: const Uuid().v4(),
      description: 'Americano',
      points: 100,
      date: DateTime(DateTime.now().year, DateTime.now().month, 23, 12, 30),
    ),
    RewardHistoryItem(
      id: const Uuid().v4(),
      description: 'Flat White',
      points: 180,
      date: DateTime(DateTime.now().year, DateTime.now().month, 22, 8, 30),
    ),
  ];

  int get currentPoints => _currentPoints;
  int get targetPoints => _targetPoints;
  List<RewardHistoryItem> get history => List.unmodifiable(_history);
  bool get isRedeeming => _isRedeeming; 

    void setRedeeming(bool value) {
    _isRedeeming = value;
    notifyListeners();
    print('Redeem Mode: $_isRedeeming');
  }

  void addPointsFromPurchase(double purchaseAmount) {
    final int pointsEarned = (purchaseAmount * 0.1).round();

    if (pointsEarned > 0) {
      _currentPoints += pointsEarned;
      _history.insert(0,
        RewardHistoryItem(
          id: _uuid.v4(),
          description: 'Pembelian Produk',
          points: pointsEarned,
          date: DateTime.now(),
        ),
      );
      notifyListeners();
    }
  }

  
  bool deductPoints(int pointsToDeduct) {
    if (_currentPoints >= pointsToDeduct) {
      _currentPoints -= pointsToDeduct;
      _history.insert(0,
        RewardHistoryItem(
          id: _uuid.v4(),
          description: 'Pembayaran dengan Poin',
          points: -pointsToDeduct,
          date: DateTime.now(),
        ),
      );
      notifyListeners();
      return true;
    }
    return false;
  }

  
  bool initiateRedeemProcess() { 
    if (_currentPoints >= _targetPoints) {
      setRedeeming(true); 
      print('Redeem process initiated!');
      return true; 
    }
    print('Poin tidak cukup untuk redeem.');
    return false; 
  }

  
}