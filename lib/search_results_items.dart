import 'package:flutter/material.dart';

class ContainerGrid extends StatelessWidget {
  const ContainerGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
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
              top: 125,
              child: Container(// Change the color as desired.
                height: 250.0, // Adjust the height and width as needed.
                width: 150.0,
                margin: const EdgeInsets.only(left: 40),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blue, // Change the color as desired.
                ),
                // Adjust the margin as needed.
              ),
            ),
            Positioned(
              right: 0,
              child: Container(
                height: 250.0, // Adjust the height and width as needed.
                width:150.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blue, // Change the color as desired.
                ),
                margin: const EdgeInsets.only(right: 40), // Adjust the margin as needed.
              ),
            ),
          ],
        );
      },
    );
  }
}
