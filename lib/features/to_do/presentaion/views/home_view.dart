import 'package:flutter/material.dart';
import 'package:to_do/core/constatnts/size_constant.dart';
import 'package:to_do/core/widgets/header_widget.dart';
import 'package:to_do/features/to_do/presentaion/widgets/home_widgets/list_of_remainders_widget.dart';

class HomeView extends StatefulWidget {
  const HomeView({
    super.key,
  });

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
        Sizes sizes = Sizes(context);

        return Scaffold(
      body: Column(
        children: [

          headerWidget(
              context: context,
              profileName: "name name name",
              numOfTask: "15",
              nameOfTask: "Meeting with client",
              time: "5:45"),

            const ListOfRemaindersWidget(day: "day",
                name: "name name name name",
                time: "time")
        ],
      ),
    );
  }
}

