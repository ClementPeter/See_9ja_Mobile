import 'package:flutter/material.dart';
import 'package:see_9ja/constants.dart';
import 'package:see_9ja/screens/dashboard/drawer.dart';
import 'package:see_9ja/widgets/category_widget.dart';
import 'package:see_9ja/widgets/nearby_places.dart';
import 'package:see_9ja/widgets/popular_places.dart';

class Dashboard extends StatelessWidget {
  static String id = "Dashboard";

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
  final TextEditingController _searchController = TextEditingController();

  Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: SafeArea(
        child: drawer(context),
      ),
      appBar: AppBar(
        iconTheme: IconThemeData(color: green),
        backgroundColor: const Color(0XFFFCFAFF),
        elevation: 0,
        title: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: lightGrey,
            ),
            child: TextFormField(
              textAlignVertical: TextAlignVertical.bottom,
              controller: _searchController,
              decoration: InputDecoration(
                hintText: "Search Places",
                border: InputBorder.none,
                suffixIcon: Icon(
                  Icons.clear,
                  color: lightGreen,
                ),
              ),
              cursorColor: lightGreen,
            ),
          ),
        ),
        actions: [CircleAvatar(backgroundColor: green)],
      ),
      body: SafeArea(
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Hello, Pelumi',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8.0),
                  const Text(
                    'Explore amazing tours today',
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.2,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(15),
                        image: const DecorationImage(
                          image: AssetImage(
                            "assets/images/abuja.jpg",
                          ),
                          fit: BoxFit.fitWidth,
                        )),
                    child: Stack(
                      children: [
                        Positioned(
                          bottom: 10,
                          left: 10,
                          child: Row(
                            children: [
                              const Icon(
                                Icons.location_on_outlined,
                                color: Colors.white,
                              ),
                              Text(
                                'Abuja City Gate',
                                style: TextStyle(
                                  color: white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  const Text(
                    'Categories',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8.0),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CategoryWidget(
                          image: const AssetImage("assets/images/resort.jpg"),
                          key: key,
                          category: "Resort",
                          color: green,
                          onPressed: () {},
                        ),
                        const SizedBox(height: 10.0),
                        CategoryWidget(
                          key: key,
                          image: const AssetImage("assets/images/museum.jpg"),
                          category: "Museum",
                          color: grey,
                          onPressed: () {},
                        ),
                        CategoryWidget(
                          key: key,
                          image: const AssetImage("assets/images/festival.png"),
                          category: "Festivals",
                          color: green,
                          onPressed: () {},
                        ),
                        const SizedBox(height: 10.0),
                        CategoryWidget(
                          key: key,
                          image: const AssetImage("assets/images/beach.jpg"),
                          category: "Beaches",
                          color: green,
                          onPressed: () {},
                        ),
                        CategoryWidget(
                          key: key,
                          image: const AssetImage("assets/images/garden.jpg"),
                          category: "Gardens",
                          color: grey,
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  const Text(
                    'Nearby Places',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8.0),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        NearbyPlaces(
                          key: key,
                          image: "assets/images/zuma.jpg",
                          category: "Zuma Rock",
                          color: green,
                          location: "Madalla, Niger",
                          onPressed: () {},
                        ),
                        const SizedBox(height: 10.0),
                        NearbyPlaces(
                          key: key,
                          image: "assets/images/mosque.jpg",
                          category: "Abuja Central Mosque",
                          color: lightGreen,
                          location: "FCT ,Abuja",
                          onPressed: () {},
                        ),
                        const SizedBox(height: 10.0),
                        NearbyPlaces(
                          key: key,
                          image: "assets/images/boat.jpg",
                          category: "Jabi Boat Club",
                          color: lightGreen,
                          location: "FCT ,Abuja",
                          onPressed: () {},
                        ),
                        const SizedBox(height: 10.0),
                        NearbyPlaces(
                          key: key,
                          image: "assets/images/aso.jpg",
                          category: "Aso Rock",
                          color: lightGreen,
                          location: "FCT ,Abuja",
                          onPressed: () {},
                        ),
                        const SizedBox(height: 10.0),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  const Text(
                    'Popular Places',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8.0),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        PopularPlaces(
                          key: key,
                          image: "assets/images/obudu.jpg",
                          attraction: "Obudu Cattle Ranch",
                          location: "Cross River, Calabar",
                          color: green,
                          onPressed: () {},
                        ),
                        PopularPlaces(
                          key: key,
                          image: "assets/images/yankari.jpg",
                          location: "Bauchi, Bauchi",
                          attraction: "Yankari Reserve",
                          color: green,
                          onPressed: () {},
                        ),
                        PopularPlaces(
                          key: key,
                          image: "assets/images/zuma.jpg",
                          attraction: "Zuma Rock",
                          location: "Madalla, Niger",
                          color: green,
                          onPressed: () {},
                        ),
                        PopularPlaces(
                          key: key,
                          image: "assets/images/agbokim.jpg",
                          attraction: "Agbokim Waterfalls",
                          location: "Cross River, Calabar",
                          color: green,
                          onPressed: () {},
                        ),
                        PopularPlaces(
                          key: key,
                          image: "assets/images/yankari.jpg",
                          location: "Bauchi, Bauchi",
                          attraction: "Yankari Reserve",
                          color: green,
                          onPressed: () {},
                        ),
                        PopularPlaces(
                          key: key,
                          image: "assets/images/agbokim.jpg",
                          attraction: "Agbokim Waterfalls",
                          location: "Cross River, Calabar",
                          color: green,
                          onPressed: () {},
                        ),
                        PopularPlaces(
                          key: key,
                          image: "assets/images/aso.jpg",
                          location: "FCT, Abuja",
                          attraction: "Aso Rock",
                          color: green,
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
