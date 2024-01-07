class SignUpWithEmailAndPasswordFailure {
  final String message;


  const SignUpWithEmailAndPasswordFailure([this.message = "An Unknow error occurred."]);

  factory SignUpWithEmailAndPasswordFailure.code(String code){
    switch(code){
      case 'weak-password' : return SignUpWithEmailAndPasswordFailure('Please enter a stronger password');
      case 'invalid-email' : return SignUpWithEmailAndPasswordFailure('Email is not valid or body formatted');
      case 'email-already-in-use' : return SignUpWithEmailAndPasswordFailure('Operation is not allowed. Please contact support');
      case 'operation-not-allowed' : return SignUpWithEmailAndPasswordFailure('Please enter a stronger password');
      case 'user-disabled' : return SignUpWithEmailAndPasswordFailure('This user has been disabled.Please concat support for the help');

      default : return SignUpWithEmailAndPasswordFailure();
    }
  }
}
