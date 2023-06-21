

import 'package:flutter/material.dart';

showMessage(BuildContext context,String message){
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(duration:const Duration(milliseconds: 100),content: Text(message)),);

}