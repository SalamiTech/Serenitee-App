import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  late PageController _pageController;

  int _pageIndex = 0;

  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  } //

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                itemCount: demo_data.length,
                controller: _pageController,
                onPageChanged: (index) {
                  setState(() {
                    _pageIndex = index;
                  });
                },
                itemBuilder: (context, index) => OnboardContent(
                  image: demo_data[index].image,
                  title: demo_data[index].title,
                ),
              ),
            ),
            Row(
              children: [
                ...List.generate(
                    demo_data.length,
                    (index) => Padding(
                          padding: EdgeInsets.only(right: 4),
                          child: DotIndicator(
                            isActive: index == _pageIndex,
                          ),
                        )),
                const Spacer(),
                SizedBox(
                  height: 150,
                  width: 150,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: const CircleBorder(),
                      backgroundColor: Colors.white,
                      elevation: 0,
                    ),
                    onPressed: () {
                      _pageController.nextPage(
                          curve: Curves.ease,
                          duration: const Duration(microseconds: 300));
                    },
                    child: SvgPicture.asset(
                      "assets/nextbutton.svg",
                      height: 500,
                      width: 500,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      )),
    );
  }
}

class DotIndicator extends StatelessWidget {
  const DotIndicator({
    super.key,
    this.isActive = false,
  });

  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 300),
      height: isActive ? 13 : 7,
      width: 7,
      decoration: BoxDecoration(
          color: isActive ? Colors.green : Colors.green.withOpacity(0.4),
          borderRadius: const BorderRadius.all(Radius.circular(12))),
    );
  }
}

class Onboard {
  final String image, title;

  Onboard({
    required this.image,
    required this.title,
  });
}

final List<Onboard> demo_data = [
  Onboard(
    image: "assets/onboard1.png",
    title: "Your Personal \nJourney Begins Here",
  ),
  Onboard(
    image: "assets/pic2.png",
    title: "Talk to Your Therapist \n Virtually or In-person",
  ),
  Onboard(
    image: "assets/pic3.png",
    title: "Find Groups or Events \n At Your Comfort",
  ),
];

class OnboardContent extends StatelessWidget {
  const OnboardContent({
    super.key,
    required this.image,
    required this.title,
  });

  final String image, title;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const SizedBox(
        height: 10,
      ),
      Image.asset(
        image,
        height: 400,
      ),
      const SizedBox(
        height: 25,
      ),
      Text(
        title,
        textAlign: TextAlign.left,
        style: Theme.of(context).textTheme.headlineSmall!.copyWith(
              fontWeight: FontWeight.w500,
              color: Colors.black,
              fontSize: 32,
              fontFamily: 'PlayfairDisplay-VariableFont_wght',
            ),
      )
    ]);
  }
}
