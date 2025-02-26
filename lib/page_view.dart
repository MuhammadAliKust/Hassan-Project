import 'package:flutter/material.dart';
import 'package:hassan_project/models/onboarding.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PageViewDemo extends StatelessWidget {
  PageViewDemo({super.key});


  PageController controller = PageController();
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
      body: Column(
        children: [

          Expanded(
            child: PageView.builder(
              controller: controller,
                scrollDirection: Axis.horizontal,
                itemCount: onBoarding.length,
                itemBuilder: (context, i) {
                  return Column(
                    children: [
                      Image.asset(onBoarding[i].image.toString()),
                      Text(onBoarding[i].title.toString())
                    ],
                  );
                }),
          ),
          SmoothPageIndicator(
              controller: controller,  // PageController
              count:  onBoarding.length,
              effect:  ExpandingDotsEffect(),  // your preferred effect
              onDotClicked: (index){
              }
          ),
          SizedBox(height: 40,)

        ],
      ),
    );
  }
}
