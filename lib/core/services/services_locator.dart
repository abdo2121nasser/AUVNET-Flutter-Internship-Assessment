import 'package:auvent_flutter_internship_assessment/core/utils/usecase/base_usecase.dart';
import 'package:auvent_flutter_internship_assessment/features/authentication_feature/data_layer/data_source/remote/base_authentication_remote_data_source.dart';
import 'package:auvent_flutter_internship_assessment/features/authentication_feature/data_layer/data_source/remote/authentication_by_firebase_data_source.dart';
import 'package:auvent_flutter_internship_assessment/features/authentication_feature/data_layer/repositories/authentication_repository.dart';
import 'package:auvent_flutter_internship_assessment/features/authentication_feature/domain_layer/repositories/base_authentication_repository.dart';
import 'package:auvent_flutter_internship_assessment/features/authentication_feature/domain_layer/use_cases/sign_in_use_case.dart';
import 'package:auvent_flutter_internship_assessment/features/authentication_feature/presentaion_layer/controllers/sign_in_bloc/sign_in_bloc.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

class ServicesLocator {
 static void init() {


   //blocs
   sl.registerFactory(() => SignInBloc(signInUseCase: sl()));

   //useCase
   sl.registerLazySingleton(() => SignInUseCase(baseAuthenticationRepository: sl()));


   //repositories
   sl.registerLazySingleton<BaseAuthenticationRepository>(
           () => AuthenticationRepository(baseAuthenticationRemoteDataSource: sl()));


   //data source
   sl.registerLazySingleton<BaseAuthenticationRemoteDataSource>(
           () => AuthenticationByFirebaseDataSource());
  }
}
