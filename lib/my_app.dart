import 'package:flutter/material.dart';
import 'package:to_do/core/app_router.dart';
import 'package:to_do/core/constatnts/screen_routes.dart';
import 'package:to_do/features/to_do/presentaion/views/start_view.dart';

class MyApp extends StatelessWidget {
   MyApp({super.key});
  

  final AppRouter _appRouter = AppRouter();
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const StartView(),
      onGenerateRoute: _appRouter.generateRoute, 
      initialRoute: startRouter,
    );
  }
}

