import 'package:flutter/material.dart';
import 'package:hassan_project/models/onboarding.dart';

class PageViewDemo extends StatelessWidget {
  PageViewDemo({super.key});

  List<OnBoardingModel> onBoarding = [
    OnBoardingModel(title: 'Trending News', image: 'assets/images/Group.png'),
    OnBoardingModel(
        title: 'React, Save & Share News', image: 'assets/images/Group-1.png'),
    OnBoardingModel(
        title: 'Videos & Live News From YouTube',
        image: 'assets/images/Group-2.png'),
    OnBoardingModel(
        title: 'Browse News From Variety Of Categories',
        image: 'assets/images/Group-3.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page View"),
      ),
      body: PageView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: onBoarding.length,
          itemBuilder: (context, i) {
            return Column(children: [
              Image.asset(onBoarding[i].image.toString()),
              Text(onBoarding[i].title.toString())
            ],);
          }),
    );
  }
}
