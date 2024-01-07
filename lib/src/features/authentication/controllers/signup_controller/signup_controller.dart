import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:gt_2/src/repository/authentication_repository/authentication_repository.dart';

class SignUpController extends GetxController{
  static SignUpController get instance => Get.find();

  //Textfield Controller to get data from textFileds
  final email = TextEditingController();
  final password = TextEditingController();
  final fullName = TextEditingController();
  final phoneNo = TextEditingController();

  //Call this Function from design
  void registerUser(String email,String password){
    AuthenticationRepository.instance.createUserWithEmailAndPassword(email, password);
  }

}