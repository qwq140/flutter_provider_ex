import 'package:flutter/material.dart';
import 'package:flutter_provider_ex/change_notifier_listener/success_page.dart';

enum AppState{
  initial,
  loading,
  success,
  error,
}

class AppProvider with ChangeNotifier {
  AppState _state = AppState.initial;

  AppState get state => _state;

  // AppProvider가 UI와 관련된 코드가 추가된다.(UI와 비즈니스 로직이 분리가 안된다)
  Future<void> getResult(String searchTerm) async {
    _state = AppState.loading;
    notifyListeners();

    await Future.delayed(Duration(seconds: 1));

    try {
      if(searchTerm == 'fail'){
        throw 'Something went wrong';
      }
      _state = AppState.success;
      notifyListeners();
      // Navigator.push(
      //   context,
      //   MaterialPageRoute(
      //     builder: (context) {
      //       return SuccessPage();
      //     },
      //   ),
      // );
    } catch(e) {
      _state = AppState.error;
      notifyListeners();
      // showDialog(
      //   context: context,
      //   builder: (context) {
      //     return AlertDialog(
      //       content: Text('Somthing went wrong'),
      //     );
      //   },
      // );
    }
  }
}