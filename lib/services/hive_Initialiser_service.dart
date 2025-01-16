
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class InitialiseHiveBox{
  void intialise() async {  
    WidgetsFlutterBinding.ensureInitialized();   
    await Hive.openBox<String>('cart');
  }
}