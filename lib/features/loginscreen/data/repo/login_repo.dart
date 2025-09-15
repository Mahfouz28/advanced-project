import 'package:advanced/core/network/api_error_handelar.dart';
import 'package:advanced/core/network/api_service.dart';
import 'package:advanced/core/network/api_result.dart';
import 'package:advanced/features/loginscreen/data/model/login_req_body.dart';
import 'package:advanced/features/loginscreen/data/model/login_response.dart';

class LoginRepo {
  final ApiService apiService;

  LoginRepo(this.apiService);

  Future<ApiResult<LoginResponse>> login(LoginReqBody loginReqBody) async {
    try {
      final response = await apiService.login(loginReqBody);
      return ApiResult.success(response);
    } on Exception catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }
}
