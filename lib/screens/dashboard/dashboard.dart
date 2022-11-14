//import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:see_9ja/constants.dart';
import 'package:see_9ja/screens/dashboard/drawer.dart';
import 'package:see_9ja/widgets/category_widget.dart';
import 'package:see_9ja/widgets/nearby_places.dart';
import 'package:see_9ja/widgets/popular_places.dart';
//import 'package:see_9ja/widgets/text_field.dart';
//mport 'package:dots_indicator/dots_indicator.dart';
// import 'package:todo_provider_rest_api/providers/auth_provider/auth_provider.dart';
// import 'package:todo_provider_rest_api/providers/database/database_provider.dart';

class Dashboard extends StatelessWidget {
  //const Dashboard({Key? key}) : super(key: key);
  static String id = "Dashboard";

  // List tasks = [];
  //Create a key

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
  final TextEditingController _searchController = TextEditingController();

  Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      // backgroundColor: const Color(0XFFFCFAFF),

      //backgroundColor: green,
      //App drawer Section containing ListTiles
      drawer: SafeArea(
        child: drawer(context),
      ),
      //Custom AppBar section to be refactore to singe widget later
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
              // style: ,
              controller: _searchController,
              decoration: InputDecoration(
                hintText: "Search Places",
                border: InputBorder.none,
                suffixIcon: Icon(
                  Icons.clear,
                  color: lightGreen,
                ),
                // suffixIconColor: lightGreen,
              ),
              cursorColor: lightGreen,
            ),
            // decoration: ,
          ),
        ),
        actions: [CircleAvatar(backgroundColor: green)],
      ),
      //Body of the App - contains Hello, User section, catergories ,nearby places, popular places
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
                      //fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  Container(
                    //color: green,
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.2,
                    // height: MediaQuery.of(context).size.height * 0.2,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(15),
                        image: const DecorationImage(
                          image: AssetImage(
                            "assets/images/abuja.jpg",
                          ),
                          fit: BoxFit.fitWidth,
                        )
                        //color: lightGrey,
                        ),
                    // decoration: BoxDecoration(
                    //   borderRadius: BorderRadius.circular(12),
                    //   color: lightGreen,
                    //   image: DecorationImage(
                    //       image: NetworkImage(
                    //           "https://g.co/arts/6e6ziF6YLLr4wbaLA"),
                    //       fit: BoxFit.cover),
                    // ),
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
                  //Not so feasible cos individual pages cant be passed or maybe not
                  // SingleChildScrollView(
                  //   scrollDirection: Axis.horizontal,
                  //   child: Column(
                  //     // remove column
                  //     children: [
                  //       ListView.builder(
                  //         itemCount: 5,
                  //         itemBuilder: (context, index) {
                  //           return CategoryWidget(
                  //             key: key,
                  //             category: "My tour",
                  //             color: green,
                  //             onPressed:
                  //                 () {}, //Navigate to detailed view of that category
                  //           );
                  //         },
                  //       ),
                  //     ],
                  //   ),
                  // ),
                  const Text(
                    'Categories',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8.0),
                  //Plan B incase of responsiveness issues
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      // remove column
                      children: [
                        CategoryWidget(
                          image: const AssetImage("assets/images/resort.jpg"),
                          key: key,
                          category: "Resort",
                          color: green,
                          onPressed: () {}, //Goes to tour view page
                        ),
                        const SizedBox(height: 10.0),
                        CategoryWidget(
                          key: key,
                          image: const AssetImage("assets/images/museum.jpg"),

                          category: "Museum",
                          color: grey,
                          onPressed: () {}, //Goes to place view page
                        ),
                        CategoryWidget(
                          key: key,
                          image: const AssetImage("assets/images/festival.png"),
                          category: "Festivals",
                          color: green,
                          onPressed: () {}, //Goes to tour view page
                        ),
                        const SizedBox(height: 10.0),
                        CategoryWidget(
                          key: key,
                          image: const AssetImage("assets/images/beach.jpg"),
                          category: "Beaches",
                          color: green,
                          onPressed: () {}, //Goes to tour view page
                        ),
                        //const SizedBox(height: 10.0),
                        // CategoryWidget(
                        //   key: key,
                        //    image: AssetImage("assets/images/mountainss.jpg"),
                        //   category: "Mountain",
                        //   color: grey,
                        //   onPressed: () {}, //Goes to tour view page
                        // ),
                        CategoryWidget(
                          key: key,
                          image: const AssetImage("assets/images/garden.jpg"),
                          category: "Gardens",
                          color: grey,
                          onPressed: () {}, //Goes to tour view page
                        ),
                        //const SizedBox(height: 10.0),
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
                      // remove column
                      children: [
                        NearbyPlaces(
                          key: key,
                          image: "assets/images/zuma.jpg",
                          category: "Zuma Rock",
                          color: green,
                          location: "Madalla, Niger",
                          onPressed: () {}, //Goes to tour view page
                        ),
                        const SizedBox(height: 10.0),
                        NearbyPlaces(
                          key: key,
                          image: "assets/images/mosque.jpg",
                          category: "Abuja Central Mosque",
                          color: lightGreen,
                          location: "FCT ,Abuja",
                          onPressed: () {}, //Goes to tour view page
                        ),
                        const SizedBox(height: 10.0),
                        NearbyPlaces(
                          key: key,
                          image: "assets/images/boat.jpg",
                          category: "Jabi Boat Club",
                          color: lightGreen,
                          location: "FCT ,Abuja",
                          onPressed: () {}, //Goes to tour view page
                        ),
                        const SizedBox(height: 10.0),
                        NearbyPlaces(
                          key: key,
                          image: "assets/images/aso.jpg",
                          category: "Aso Rock",
                          color: lightGreen,
                          location: "FCT ,Abuja",
                          onPressed: () {}, //Goes to tour view page
                        ),
                        const SizedBox(height: 10.0),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  //Polpuar places card
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
                      // remove column
                      children: [
                        PopularPlaces(
                          key: key,
                          image: "assets/images/obudu.jpg",
                          attraction: "Obudu Cattle Ranch",
                          location: "Cross River, Calabar",
                          color: green,
                          onPressed: () {}, //Goes to tour view page
                        ),
                        PopularPlaces(
                          key: key,
                          image: "assets/images/yankari.jpg",
                          location: "Bauchi, Bauchi",
                          attraction: "Yankari Reserve",
                          color: green,
                          onPressed: () {}, //Goes to tour view page
                        ),
                        PopularPlaces(
                          key: key,
                          image: "assets/images/zuma.jpg",
                          attraction: "Zuma Rock",
                          location: "Madalla, Niger",
                          color: green,
                          onPressed: () {}, //Goes to tour view page
                        ),
                        PopularPlaces(
                          key: key,
                          image: "assets/images/agbokim.jpg",
                          attraction: "Agbokim Waterfalls",
                          location: "Cross River, Calabar",
                          color: green,
                          onPressed: () {}, //Goes to tour view page
                        ),
                        PopularPlaces(
                          key: key,
                          image: "assets/images/yankari.jpg",
                          location: "Bauchi, Bauchi",
                          attraction: "Yankari Reserve",
                          color: green,
                          onPressed: () {}, //Goes to tour view page
                        ),
                        PopularPlaces(
                          key: key,
                          image: "assets/images/agbokim.jpg",
                          attraction: "Agbokim Waterfalls",
                          location: "Cross River, Calabar",
                          color: green,
                          onPressed: () {}, //Goes to tour view page
                        ),
                        PopularPlaces(
                          key: key,
                          image: "assets/images/aso.jpg",
                          location: "FCT, Abuja",
                          attraction: "Aso Rock",
                          color: green,
                          onPressed: () {}, //Goes to tour view page
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

    //       SafeArea(
    //         child: ListView(
    //           children: [
    //                    Row(
    //           mainAxisAlignment: MainAxisAlignment.center,
    //           children: [
    // IconButton(
    //   icon: const Icon(Icons.menu),
    //   onPressed: () => _scaffoldKey.currentState!.openDrawer(),
    // ),
    // }

    //           ],

    // Container(
    //   height: MediaQuery.of(context).size.height * 1,
    //   width: MediaQuery.of(context).size.width * 1,
    //   margin: const EdgeInsets.all(20.0),
    // child: Row(
    //   mainAxisAlignment: MainAxisAlignment.center,
    //   children: [
    //     IconButton(
    //       icon: const Icon(Icons.menu),
    //       onPressed: () => _scaffoldKey.currentState!.openDrawer(),
    //     ),
    //       const SizedBox(width: 20),
    //       customTextField(
    //         title: '',
    //         hint: 'Search',
    //         controller: _searchController,
    //       ),
    //     ],
    //   ),
    // ),
  }
}
