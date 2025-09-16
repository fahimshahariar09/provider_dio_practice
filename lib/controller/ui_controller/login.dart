
import 'dart:developer';

import 'package:flutter/material.dart';

class LoginProvider with ChangeNotifier{
  bool isLoading = false;
  Future postLogin()async{
    try{

    }catch(e){
      log("error: $e");
    }
  }
}