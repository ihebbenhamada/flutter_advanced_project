import 'package:flutter/material.dart';
import 'package:flutter_advanced_project/doc_app.dart';

import 'core/routing/app_router.dart';

void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  //FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp(
    DocApp(
      appRouter: AppRouter(),
    ),
  );
}
