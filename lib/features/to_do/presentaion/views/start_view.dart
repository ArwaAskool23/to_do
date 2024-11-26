import 'package:flutter/material.dart';
import 'package:to_do/features/to_do/presentaion/views/home_view.dart';
import 'package:to_do/features/to_do/presentaion/widgets/start_widgets/button_start.dart';
import 'package:to_do/features/to_do/presentaion/widgets/start_widgets/content_widget.dart';
import 'package:to_do/features/to_do/presentaion/widgets/start_widgets/title_widget.dart';


import '../../../../core/constatnts/fixed_assets.dart';

void main() {
  runApp(const StartView());
}

class StartView extends StatefulWidget {
  const StartView({super.key});

  @override
  State<StartView> createState() => _StartViewState();
}

class _StartViewState extends State<StartView> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(clipboard),
              const TitleWidget(),
              const ContentWidget(),
              buttonStart(onPress: (){
                Navigator.push(context,
                 MaterialPageRoute(builder: (context) => HomeView()),);
              })
            ],
          ),
        ),
      ),
    );
  }
}
