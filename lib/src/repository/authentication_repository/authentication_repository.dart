import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:gt_2/src/features/authentication/screens/wellcome_screen/WellcomeScreen.dart';
import 'package:gt_2/src/features/core/screen/dashboard/dashboard.dart';
import 'package:gt_2/src/repository/authentication_repository/exceptions/signup_email_password_failure.dart';

class AuthenticationRepository extends GetxController{
  static AuthenticationRepository get instance => Get.find();

  //varibale
  final _auth = FirebaseAuth.instance;
  late final Rx<User?> firebaseUser;

  @override
  void onReady() {
    firebaseUser = Rx<User?>(_auth.currentUser);
    firebaseUser.bindStream(_auth.userChanges());
    ever(firebaseUser, _setInitialScreen);
  }

  _setInitialScreen(User? user){
    user == null ? Get.offAll(() =>  WellComeScreen()) : Get.offAll(()=>  Dashboard());
  }
  Future<void> createUserWithEmailAndPassword(String email,String password) async {
    try {
      await _auth.createUserWithEmailAndPassword(email: email, password: password);
    }on FirebaseAuthException catch(e){
      final ex = SignUpWithEmailAndPasswordFailure.code(e.code);
      print("Firebase Auth"+e.code);
      throw ex;
    }catch(_){
      const ex = SignUpWithEmailAndPasswordFailure();
      throw ex;
    }

  }

  Future<void> loginWithEmailAndPassword(String email,String password) async {
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
    }on FirebaseAuthException catch(e){

    }catch(_){}
  }

  Future<void> logout() async => await _auth.signOut();

}