import 'package:auvent_flutter_internship_assessment/core/services/services_locator.dart';
import 'package:auvent_flutter_internship_assessment/root/app_root.dart';
import 'package:bloc/bloc.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'core/services/bloc_opserver_service.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  ServicesLocator.init();
  Bloc.observer = MyBlocObserver();

  runApp(const TaskApp());
}
