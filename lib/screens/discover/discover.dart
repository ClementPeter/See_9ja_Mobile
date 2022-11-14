import 'package:flutter/material.dart';
import 'package:see_9ja/constants.dart';
import 'package:see_9ja/screens/discover/discover_page.dart';
import 'package:see_9ja/models/Discover_fact.dart';
import '../../utils/router.dart';

class Discover extends StatefulWidget {
  const Discover({Key? key}) : super(key: key);

  @override
  State<Discover> createState() => _DiscoverState();
}

class _DiscoverState extends State<Discover> {
  @override
  Widget build(BuildContext context) {
    final discoveries = DiscoverFact.fetchDiscoveries();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        toolbarHeight: 80,
        flexibleSpace: Container(
          color: Colors.transparent,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 20),
              Text(
                'Discover',
                style: TextStyle(
                  color: lightGreen,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text('Discover our natural landmarks in Nigeria'),
            ],
          ),
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: discoveries.length,
        itemBuilder: ((BuildContext context, int index) {
          return InkWell(
            onTap: () {
              PageNavigator(ctx: context).nextPage(
                page: DiscoverPage(index: index, details: discoveries),
              );
            },
            child: Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 5, right: 5, top: 5, bottom: 5),
                  child: Row(
                    children: [
                      const SizedBox(width: 5.0),
                      Container(
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                              image: AssetImage(
                                discoveries[index].imagePath.toString(),
                              ),
                              fit: BoxFit.fill,
                            )),
                      ),
                      const SizedBox(width: 50.0),
                      Column(
                        children: [
                          const SizedBox(height: 10.0),
                          Text(discoveries[index].name),
                          const SizedBox(height: 20.0),
                          Text(discoveries[index].location),
                          const SizedBox(height: 20.0),
                        ],
                      ),
                      const Spacer(),
                      PopupMenuButton<int>(
                        color: lightGrey,
                        elevation: 2,
                        onSelected: (value) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text("Added to favourite"),
                            ),
                          );
                        },
                        itemBuilder: (context) => [
                          PopupMenuItem(
                            value: 1,
                            child: Row(
                              children: [
                                Icon(
                                  Icons.favorite,
                                  color: lightGreen,
                                ),
                                const SizedBox(width: 10),
                                const Text("Like")
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
