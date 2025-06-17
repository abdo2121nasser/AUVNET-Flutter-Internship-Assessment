import 'package:auvent_flutter_internship_assessment/core/services/services_locator.dart';
import 'package:auvent_flutter_internship_assessment/root/app_root.dart';
import 'package:bloc/bloc.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'core/services/bloc_opserver_service.dart';
import 'core/utils/constants/logic_strings.dart';
import 'features/authentication_feature/domain_layer/entities/user_entity.dart';

Future<void> main() async {
await setUp();
  runApp(const TaskApp());
}

Future<void> setUp() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  ServicesLocator.init();
  Bloc.observer = MyBlocObserver();
  await Hive.initFlutter();
  Hive.registerAdapter(UserEntityAdapter());
  await Hive.openBox(LogicStrings.kUserBox);


}