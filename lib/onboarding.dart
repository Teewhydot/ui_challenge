import 'package:flutter/material.dart';
import 'package:ui_challenge/generated/assets.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  _IntroPageState createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _nextPage() {
    if (_currentPage < 2) {
      _pageController.nextPage(
        duration: const Duration(milliseconds: 500),
        curve: Curves.ease,
      );
    }
  }

  void lastPage() {
    Navigator.pushNamed(context, '/home');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                flex: 3,
                child: PageView(
                  controller: _pageController,
                  onPageChanged: (index) {
                    setState(() {
                      _currentPage = index;
                    });
                  },
                  children: const [
                    IntroItem(
                      image:
                          Assets.imagesPlant1, // Replace with your image asset.
                    ),
                    IntroItem(
                      image:
                          Assets.imagesPlant2, // Replace with your image asset.
                    ),
                    IntroItem(
                      image:
                          Assets.imagesPlant3, // Replace with your image asset.
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(3, (index) {
                  return Container(
                    margin: const EdgeInsets.symmetric(horizontal: 5.0),
                    width: 16.0,
                    height: 8.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(13.0),
                      color: _currentPage == index
                          ? Colors.green // Active page indicator color
                          : Colors.grey, // Inactive page indicator color
                    ),
                  );
                }),
              ),
              const SizedBox(height: 56.0),
              const Text(
                'Get started with plants',
                style: TextStyle(fontSize: 36),
              ),
              Expanded(
                flex: 1,
                child: GestureDetector(
                  onTap: _nextPage,
                  child: CircleAvatar(
                    backgroundColor: Colors.green,
                    radius: 50,
                    child: _currentPage == 2
                        ? const Icon(
                            Icons.check,
                            size: 50,
                          )
                        : const Icon(
                            Icons.arrow_forward,
                            size: 50,
                          ),
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            top: 20,
            right: 0,
            child: TextButton(
                onPressed: () {
                  lastPage();
                },
                child: const Text('Skip')),
          ),
        ],
      ),
    );
  }
}

class IntroItem extends StatelessWidget {
  final String image;

  const IntroItem({
    super.key,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      image,
      fit: BoxFit.cover,
    ); // Adjust the height as needed.
  }
}
