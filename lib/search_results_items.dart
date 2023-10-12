import 'package:flutter/material.dart';
import 'package:ui_challenge/generated/assets.dart';

class ContainerGrid extends StatelessWidget {
  const ContainerGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GridView.builder(
          physics: const BouncingScrollPhysics(),
          itemCount: 10, // Change this to the number of grids you want.
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1,
            childAspectRatio: 1.5,
          ),
          itemBuilder: (BuildContext context, int index) {
            return Stack(
              clipBehavior: Clip.none,
              children: [
                Positioned(
                  top: 75,
                  child: Container(
                    // Change the color as desired.
                      height: 250.0, // Adjust the height and width as needed.
                      width: 150.0,
                      margin: const EdgeInsets.only(left: 40),
                      decoration: BoxDecoration(
                        color: Colors.white30, // Change the color as desired.

                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset(Assets.imagesPlant2),
                            const Text('Product Name'),
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Product Price'),
                                Icon(Icons.favorite_border),
                              ],
                            ),
                          ],
                        ),
                      )),
                  // Adjust the margin as needed.
                ),
                Positioned(
                  right: 0,
                  child: Container(
                    height: 250.0, // Adjust the height and width as needed.
                    width: 150.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white30, // Change the color as desired.
                    ),
                    margin: const EdgeInsets.only(right: 40),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset(Assets.imagesPlant4),
                          const Text('Product Name'),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Product Price'),
                              Icon(Icons.favorite_border),
                            ],
                          ),
                        ],
                      ),
                    ), // Adjust the margin as needed.
                  ),
                ),

              ],
            );
          },
        ),

      ]
    );
  }
}
