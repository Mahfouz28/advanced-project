import 'package:advanced/core/network/api_result.dart';
import 'package:advanced/features/loginscreen/data/model/login_req_body.dart';
import 'package:advanced/features/loginscreen/data/repo/login_repo.dart';
import 'package:advanced/features/loginscreen/logic/cubit/cubit/login_state.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo loginRepo;
  LoginCubit(this.loginRepo) : super(LoginState.initial());
  final formkey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void emitLoginStates(LoginReqBody loginReqBody) async {
    emit(const LoginState.loading());
    final response = await loginRepo.login(loginReqBody);
    response.when(
      success: (loginResponse) {
        emit(LoginState.success(loginResponse));
      },
      failure: (error) =>
          emit(LoginState.failure(error.apiErrorModel.message ?? '')),
    );
  }
}
