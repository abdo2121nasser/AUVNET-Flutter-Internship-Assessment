import 'package:auvent_flutter_internship_assessment/features/authentication_feature/data_layer/data_source/local/base_data_source/base_user_local_data_source.dart';
import 'package:auvent_flutter_internship_assessment/features/authentication_feature/data_layer/data_source/local/user_hive_local_data_source.dart';
import 'package:auvent_flutter_internship_assessment/features/authentication_feature/data_layer/data_source/remote/base_data_source/base_authentication_remote_data_source.dart';
import 'package:auvent_flutter_internship_assessment/features/authentication_feature/data_layer/data_source/remote/authentication_by_firebase_data_source.dart';
import 'package:auvent_flutter_internship_assessment/features/authentication_feature/data_layer/data_source/remote/base_data_source/base_user_remote_data_source.dart';
import 'package:auvent_flutter_internship_assessment/features/authentication_feature/data_layer/data_source/remote/user_firebase_remote_data_source.dart';
import 'package:auvent_flutter_internship_assessment/features/authentication_feature/data_layer/repositories/authentication_repository.dart';
import 'package:auvent_flutter_internship_assessment/features/authentication_feature/data_layer/repositories/user_repository.dart';
import 'package:auvent_flutter_internship_assessment/features/authentication_feature/domain_layer/repositories/base_authentication_repository.dart';
import 'package:auvent_flutter_internship_assessment/features/authentication_feature/domain_layer/repositories/base_user_repository.dart';
import 'package:auvent_flutter_internship_assessment/features/authentication_feature/domain_layer/use_cases/create_user_use_case.dart';
import 'package:auvent_flutter_internship_assessment/features/authentication_feature/domain_layer/use_cases/get_user_use_case.dart';
import 'package:auvent_flutter_internship_assessment/features/authentication_feature/domain_layer/use_cases/is_signed_in_use_case.dart';
import 'package:auvent_flutter_internship_assessment/features/authentication_feature/domain_layer/use_cases/sign_in_use_case.dart';
import 'package:auvent_flutter_internship_assessment/features/authentication_feature/presentaion_layer/controllers/sign_in_bloc/sign_in_bloc.dart';
import 'package:auvent_flutter_internship_assessment/features/authentication_feature/presentaion_layer/controllers/user_bloc/user_bloc.dart';
import 'package:auvent_flutter_internship_assessment/features/home_feature/data_layer/data_source/remote/base_data_source/base_popular_remote_data_source.dart';
import 'package:auvent_flutter_internship_assessment/features/home_feature/data_layer/data_source/remote/base_data_source/base_service_remote_data_source.dart';
import 'package:auvent_flutter_internship_assessment/features/home_feature/data_layer/data_source/remote/popular_remote_data_source.dart';
import 'package:auvent_flutter_internship_assessment/features/home_feature/data_layer/data_source/remote/service_remote_data_source.dart';
import 'package:auvent_flutter_internship_assessment/features/home_feature/data_layer/reposities/service_repository.dart';
import 'package:auvent_flutter_internship_assessment/features/home_feature/domain_layer/reposities/base_service_repository.dart';
import 'package:auvent_flutter_internship_assessment/features/home_feature/domain_layer/use_cases/get_services_use_case.dart';
import 'package:auvent_flutter_internship_assessment/features/home_feature/presentation_layer/controllers/popular_bloc/popular_bloc.dart';
import 'package:get_it/get_it.dart';

import '../../features/authentication_feature/domain_layer/use_cases/sign_up_use_case.dart';
import '../../features/authentication_feature/domain_layer/use_cases/store_user_use_case.dart';
import '../../features/authentication_feature/presentaion_layer/controllers/sign_up_bloc/sign_up_bloc.dart';
import '../../features/home_feature/data_layer/reposities/popular_repository.dart';
import '../../features/home_feature/domain_layer/reposities/base_popular_repository.dart';
import '../../features/home_feature/domain_layer/use_cases/get_popular_use_case.dart';
import '../../features/home_feature/presentation_layer/controllers/service_bloc/service_bloc.dart';

final sl = GetIt.instance;

class ServicesLocator {
  static void init() {
    //blocs
    sl.registerFactory(() => SignInBloc(signInUseCase: sl()));
    sl.registerFactory(() => SignUpBloc(signUpUseCase: sl()));
    sl.registerFactory(() => UserBloc(
        createUserUseCase: sl(), storeUserUseCase: sl(), getUserUseCase: sl()));
    sl.registerFactory(() => ServiceBloc(getServicesUseCase: sl()));
    sl.registerFactory(() => PopularBloc(getPopularUseCase: sl()));

    //useCase
    sl.registerLazySingleton(
        () => SignInUseCase(baseAuthenticationRepository: sl()));
    sl.registerLazySingleton(
        () => SignUpUseCase(baseAuthenticationRepository: sl()));
    sl.registerLazySingleton(() => CreateUserUseCase(baseUserRepository: sl()));
    sl.registerLazySingleton(() => StoreUserUseCase(baseUserRepository: sl()));
    sl.registerLazySingleton(() => GetUserUseCase(baseUserRepository: sl()));
    sl.registerLazySingleton(
        () => IsSignedInUseCase(baseAuthenticationRepository: sl()));

    sl.registerLazySingleton(
        () => GetServicesUseCase(baseServiceRepository: sl()));
    sl.registerLazySingleton(
        () => GetPopularUseCase(basePopularRepository: sl()));

    //repositories
    sl.registerLazySingleton<BaseAuthenticationRepository>(() =>
        AuthenticationRepository(baseAuthenticationRemoteDataSource: sl()));
    sl.registerLazySingleton<BaseUserRepository>(() => UserRepository(
        baseUserRemoteDataSource: sl(), baseUserLocalDataSource: sl()));

    sl.registerLazySingleton<BaseServiceRepository>(
        () => ServiceRepository(baseServiceRemoteDataSource: sl()));
    sl.registerLazySingleton<BasePopularRepository>(
        () => PopularRepository(basePopularRemoteDataSource: sl()));

    //data source
    sl.registerLazySingleton<BaseAuthenticationRemoteDataSource>(
        () => AuthenticationByFirebaseDataSource());
    sl.registerLazySingleton<BaseUserRemoteDataSource>(
        () => UserFirebaseRemoteDataSource());
    sl.registerLazySingleton<BaseUserLocalDataSource>(
        () => UserHiveLocalDataSource());

    sl.registerLazySingleton<BaseServiceRemoteDataSource>(
        () => ServiceRemoteDataSource());
    sl.registerLazySingleton<BasePopularRemoteDataSource>(
        () => PopularRemoteDataSource());
  }
}
