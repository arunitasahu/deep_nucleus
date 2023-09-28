import 'dart:async';

import 'package:flutter/material.dart';

class LoginProvider extends ChangeNotifier {
  String mobileNumber = '';
  String otp = '';

  void setMobileNumber(String value) {
    mobileNumber = value;
    notifyListeners();
  }

  void setOTP(String value) {
    otp = value;
    notifyListeners();
  }
}

class TimerProvider with ChangeNotifier {
  int _remainingTime = 0;
  bool _isResendButtonEnabled = true;
  Timer? _timer;

  int get remainingTime => _remainingTime;

  bool get isResendButtonEnabled => _isResendButtonEnabled;

  void startTimer() {
    _remainingTime = 60;
    _isResendButtonEnabled = false;
    notifyListeners();

    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      if (_remainingTime > 0) {
        _remainingTime--;
        notifyListeners();
      } else {
        _isResendButtonEnabled = true;
        _timer?.cancel();
        notifyListeners();
      }
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }
}
