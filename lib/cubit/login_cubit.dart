import 'package:bloc/bloc.dart';
import 'package:couplesapp/repository/login_repository.dart';
import 'package:couplesapp/state/login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepository _loginRepository;

  LoginCubit(this._loginRepository) : super(LoginInitial());

  Future<void> doLogin(String email, String password) async {
    try {
      emit(LoginLoading());
      final loginState = await _loginRepository.doLogin(email, password);
      if (loginState is LoginSuccess) {
        emit(LoginSuccess());
      } else {
        emit(
          LoginError(
            emailError: "",
            passwordError: "",
            errorMessage: "",
          ),
        );
      }
    } on Exception {}
  }
}
