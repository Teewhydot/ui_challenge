import 'package:flutter/material.dart';
import 'package:ui_challenge/generated/assets.dart';

class ItemDetails extends StatefulWidget {
  const ItemDetails({Key? key}) : super(key: key);

  @override
  State<ItemDetails> createState() => _ItemDetailsState();
}

class _ItemDetailsState extends State<ItemDetails> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              children: [
                const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.chevron_left),
                      CircleAvatar(
                        backgroundColor: Colors.grey,
                        child: Icon(Icons.shopping_cart),
                      )
                    ],
                  ),
                ),
                Image.asset(
                  Assets.imagesPlant1,
                  height: 400,
                ),
                const Text(
                  'Lucky jade plant',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Description of the plant',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                      color: Colors.grey),
                ),
              ],
            ),
            Positioned(
              bottom: 0,
              child: Container(
                height: 200,
                width: width,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30)),
                  color: Colors.blueGrey,
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10,bottom: 20,top: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              Icon(Icons.height),
                              Text('Height'),
                              Text('30 - 40 cm'),
                            ],
                          ),
                          // temperature
                          Column(
                            children: [
                              Icon(Icons.thermostat_outlined),
                              Text('Temperature'),
                              Text('18 - 25 C'),
                            ],
                          ),
                          //type of pot plant is in
                          Column(
                            children: [
                              Icon(Icons.pedal_bike),
                              Text('Pot'),
                              Text('Plastic'),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Column(
                            children: [
                              Text(
                                'Total Price',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              Text(
                                '12\$',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                          Container(
                            height: 80,
                            width: 150,
                            decoration: BoxDecoration(
                                color: Colors.blueGrey.shade300,
                                borderRadius: BorderRadius.circular(30)),
                            child: const Center(
                              child: Text(
                                'Add to cart',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
