import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:multi_store_app/minor_screen/search.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 9,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: InkWell(
            onTap: (() {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const SearchScreen()));
            }),
            child: Container(
              height: 35,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.pink, width: 1.4),
                  borderRadius: BorderRadius.circular(25)),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: const [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Icon(
                            Icons.search,
                            color: Colors.pinkAccent,
                          ),
                        ),
                        Text(
                          "Lets Find Out",
                          style: TextStyle(fontSize: 18, color: Colors.grey),
                        ),
                      ],
                    ),
                    Container(
                      height: 32,
                      width: 75,
                      decoration: BoxDecoration(
                          color: Colors.pink[300],
                          borderRadius: BorderRadius.circular(25)),
                      child: const Center(
                        child: Text(
                          "Search",
                          style: TextStyle(fontSize: 16, color: Colors.grey),
                        ),
                      ),
                    )
                  ]),
            ),
          ),
          bottom: const TabBar(
              isScrollable: true,
              indicatorColor: Colors.pinkAccent,
              indicatorWeight: 8,
              tabs: [
                RepeatedTab(label: 'Men'),
                RepeatedTab(label: 'Women'),
                RepeatedTab(label: 'Shoes'),
                RepeatedTab(label: 'Bags'),
                RepeatedTab(label: 'Electronic'),
                RepeatedTab(label: 'Accesories'),
                RepeatedTab(label: 'HomeGarden'),
                RepeatedTab(label: 'Kids'),
                RepeatedTab(label: 'Beauty'),
              ]),
        ),
        body: const TabBarView(children: [
          Center(child: Text('Men Screen')),
          Center(child: Text('Women Screen')),
          Center(child: Text('Shoes Screen')),
          Center(child: Text('Bags Screen')),
          Center(child: Text('Electronics Screen')),
          Center(child: Text('Accesories Screen')),
          Center(child: Text('Home & Garden Screen')),
          Center(child: Text('Kids Screen')),
          Center(child: Text('Beauty Screen')),
        ]),
      ),
    );
  }
}

class RepeatedTab extends StatelessWidget {
  final String label;
  const RepeatedTab({Key? key, required this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Tab(
      child: Text(
        label,
        style: TextStyle(color: Colors.pink[300]),
      ),
    );
  }
}
