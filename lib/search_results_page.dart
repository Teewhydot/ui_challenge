import 'package:flutter/material.dart';
import 'package:ui_challenge/search_results_items.dart';

class SearchResults extends StatefulWidget {
  const SearchResults({Key? key}) : super(key: key);

  @override
  State<SearchResults> createState() => _SearchResultsState();
}

class _SearchResultsState extends State<SearchResults> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.chevron_left),
                Text(
                  'Search Products',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal),
                ),
                CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(Icons.person),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),

          Row(
            children: [
              // text field for search
              Expanded(
                child: Container(
                  margin: const EdgeInsets.only(left: 10, right: 10),
                  decoration: BoxDecoration(
                      color: Colors.white70,
                      borderRadius: BorderRadius.circular(10)),
                  child: const TextField(
                    decoration: InputDecoration(
                        hintText: 'Search',
                        border: InputBorder.none,
                        prefixIcon: Icon(Icons.search)),
                  ),
                ),
              ),
              // filter button
              Container(
                margin: const EdgeInsets.only(right: 10),
                decoration: BoxDecoration(
                    color: Colors.white70,
                    borderRadius: BorderRadius.circular(10)),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.filter_alt),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.only(left: 40, top: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Found', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                Text('10 Results', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
              ],
            ),
          ),
          const Expanded(child: ContainerGrid()),
        ],
      )),
    );
  }
}
