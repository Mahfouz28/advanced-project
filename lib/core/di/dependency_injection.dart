import 'package:advanced/core/network/api_service.dart';
import 'package:advanced/core/network/doi_factory.dart';
import 'package:advanced/features/loginscreen/logic/cubit/cubit/login_cubit.dart';
import 'package:dio/dio.dart';
import 'package:advanced/features/loginscreen/data/repo/login_repo.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;
Future<void> setupGetIt() async {
  // Dio & Api services
  Dio dio = await DoiFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  getIt.registerLazySingleton<LoginCubit>(() => LoginCubit(getIt()));
}
