import 'package:advanced/core/network/api_constants.dart';
import 'package:advanced/features/loginscreen/data/model/login_req_body.dart';
import 'package:advanced/features/loginscreen/data/model/login_response.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;
  @POST(ApiConstants.login)
  Future<LoginResponse> login(@Body() LoginReqBody loginReqBody);
}
