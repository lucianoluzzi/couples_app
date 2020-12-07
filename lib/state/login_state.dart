abstract class LoginState {
  const LoginState();
}

class LoginError extends LoginState {
  String emailError;
  String passwordError;
  String errorMessage;

  LoginError({this.emailError, this.passwordError, this.errorMessage});
}

class LoginSuccess extends LoginState {}

class LoginLoading extends LoginState {}

class LoginInitial extends LoginState {}
