// import 'package:dots_indicator/dots_indicator.dart';
// import 'package:flutter/material.dart';
// import 'package:see_9ja_/styles/colors.dart';
// import 'package:see_9ja_/widgets/category_widget.dart';
// import 'package:see_9ja_/widgets/text_field.dart';
// // import 'package:todo_provider_rest_api/providers/auth_provider/auth_provider.dart';
// // import 'package:todo_provider_rest_api/providers/database/database_provider.dart';
// // import 'package:todo_provider_rest_api/screens/task_page/add_task_page.dart';
// // import 'package:todo_provider_rest_api/screens/task_page/task_field_container.dart';
// // import 'package:todo_provider_rest_api/styles/colors.dart';
// // import 'package:todo_provider_rest_api/utils/router.dart';

// class Dashboard extends StatefulWidget {
//   const Dashboard({Key? key}) : super(key: key);
//   static String id = "Dashboard";

//   @override
//   State<Dashboard> createState() => _DashboardState();
// }

// class _DashboardState extends State<Dashboard> {

//   // List tasks = [];
//   //Create a key

//   final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
//   final TextEditingController _searchController = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       key: _scaffoldKey,
//        backgroundColor: const Color(0XFFFCFAFF),
//       //backgroundColor: bgColor,
//       //backgroundColor: green,

//       //drawer
//       drawer: Drawer(
//         child: ListView(
//           children: [
//             ListTile(
//               title: const Text('Add Task'),
//               onTap: () {
//                 //Navigator.of(context).pushNamed(AddTaskPage.id);
//               },
//             ),
//             ListTile(
//               title: const Text('Logout'),
//               onTap: () {
//                 // databaseProvider.logOut(context);
//                 //AuthProvider.of(context).logout();
//               },
//             ),
//           ],
//         ),
//       ),
//             appBar: AppBar(
//         title: customTextField(),
//         actions: [
//           IconButton(
//             icon: const Icon(Icons.exit_to_app),
//             onPressed: () {
//              // databaseProvider.logOut(context);
//               //AuthProvider.of(context).logout();
//             },
//           ),
//         ],
//       ),
//       body: SafeArea(
//         child: ListView(
//           children: [
//             //dashboard
//             Container(
//               //margin: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
//               color: lightGreen,
//               height: MediaQuery.of(context).size.height * 0.1,
//               child: Row(
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   IconButton(
//                       iconSize: 28,
//                       icon: const Icon(Icons.menu),
//                       onPressed: () => _scaffoldKey.currentState!.openDrawer()),
//                   const SizedBox(width: 30),
//                   // doesnt work
//                   // customTextField(
//                   //   // title: '',
//                   //   controller: _searchController,
//                   //   hint: 'search places',
//                   // ),
//                   customTextField(
//                     title: '',
//                     controller: _searchController,
//                     hint: 'search places',
//                   ),
//                   // //works
//                   // Expanded(
//                   //   child: customTextField(
//                   //     title: '',
//                   //     controller: _searchController,
//                   //     hint: 'search places',
//                   //   ),
//                   // ),
//                   const SizedBox(width: 30),

//                   //right side
//                   // Container(
//                   //   width: MediaQuery.of(context).size.width * 0.05,
//                   //   child: Column(
//                   //     mainAxisAlignment: MainAxisAlignment.center,
//                   //     children: [
//                   //       constText(
//                   //         'Today',
//                   //         style: TextStyle(
//                   //           fontSize: 10,
//                   //           fontWeight: FontWeight.bold,
//                   //         ),
//                   //       ),
//                   //       Text(
//                   //         '${DateTime.now().day}',
//                   //         style: TextStyle(
//                   //           fontSize: 15,
//                   //           fontWeight: FontWeight.bold,
//                   //         ),
//                   //       ),
//                   //     ],
//                   //   ),
//                   // ),
//                 ],
//               ),
//             ),
//             const SizedBox(height: 10.0),
//             Container(
//               color: green,
//               height: MediaQuery.of(context).size.height * 0.3,
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: const [
//                   Text(
//                     'mini_view 1',
//                     style: TextStyle(
//                       fontSize: 20,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             const SizedBox(height: 10.0),
//             Container(
//               color: green,
//               height: MediaQuery.of(context).size.height * 0.2,
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: const [
//                   Text(
//                     'mini_view 2 ',
//                     style: TextStyle(
//                       fontSize: 20,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             const SizedBox(height: 20.0),

//             // SingleChildScrollView(
//             //   scrollDirection: Axis.horizontal,
//             //   child: Column(
//             //     children: [
//             //       ListView.builder(
//             //         itemCount: 5,
//             //         itemBuilder: (context, index) {
//             //           return CategoryWidget(color: green);
//             //         },
//             //       ),
//             //     ],
//             //   ),
//             // ),
//           ],
//         ),
//       ),
//     );

//     //       SafeArea(
//     //         child: ListView(
//     //           children: [
//     //                    Row(
//     //           mainAxisAlignment: MainAxisAlignment.center,
//     //           children: [
//     // IconButton(
//     //   icon: const Icon(Icons.menu),
//     //   onPressed: () => _scaffoldKey.currentState!.openDrawer(),
//     // ),
//     // }

//     //           ],

//     // Container(
//     //   height: MediaQuery.of(context).size.height * 1,
//     //   width: MediaQuery.of(context).size.width * 1,
//     //   margin: const EdgeInsets.all(20.0),
//     // child: Row(
//     //   mainAxisAlignment: MainAxisAlignment.center,
//     //   children: [
//     //     IconButton(
//     //       icon: const Icon(Icons.menu),
//     //       onPressed: () => _scaffoldKey.currentState!.openDrawer(),
//     //     ),
//     //       const SizedBox(width: 20),
//     //       customTextField(
//     //         title: '',
//     //         hint: 'Search',
//     //         controller: _searchController,
//     //       ),
//     //     ],
//     //   ),
//     // ),
//   }
// }

//import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:see_9ja/styles/colors.dart';
import 'package:see_9ja/widgets/category_widget.dart';
import 'package:see_9ja/widgets/nearby_places.dart';
import 'package:see_9ja/widgets/popular_places.dart';
import 'package:see_9ja/widgets/text_field.dart';
// import 'package:todo_provider_rest_api/providers/auth_provider/auth_provider.dart';
// import 'package:todo_provider_rest_api/providers/database/database_provider.dart';
// import 'package:todo_provider_rest_api/screens/task_page/add_task_page.dart';
// import 'package:todo_provider_rest_api/screens/task_page/task_field_container.dart';
// import 'package:todo_provider_rest_api/styles/colors.dart';
// import 'package:todo_provider_rest_api/utils/router.dart';

class Dashboard extends StatelessWidget {
  //const Dashboard({Key? key}) : super(key: key);
  static String id = "Dashboard";

  // List tasks = [];
  //Create a key

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      // backgroundColor: const Color(0XFFFCFAFF),
      //backgroundColor: bgColor,
      //backgroundColor: green,

      //App drawer
      drawer: SafeArea(
        child: Drawer(
          child: ListView(
            children: [
              Container(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const SizedBox(height: 30),
                      CircleAvatar(backgroundColor: green),
                      const Text(
                        'Odunayo Joshua',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Text('@odun_josh24'),
                      const SizedBox(height: 30),
                    ]),
                decoration: BoxDecoration(
                  // borderRadius: BorderRadius.circular(12),
                  color: lightGrey,
                ),
              ),
              ListTile(
                leading: const Icon(Icons.account_box_outlined),
                title: const Text('Profile'),
                onTap: () {
                  //Navigator.of(context).pushNamed(AddTaskPage.id);
                },
              ),
              ListTile(
                leading: const Icon(Icons.bookmark_added_outlined),
                title: const Text('Discover'),
                onTap: () {
                  // databaseProvider.logOut(context);
                  //AuthProvider.of(context).logout();
                },
              ),
              ListTile(
                leading: const Icon(Icons.near_me_outlined),
                title: const Text('Saved Places'),
                onTap: () {
                  //Navigator.of(context).pushNamed(AddTaskPage.id);
                },
              ),
              ListTile(
                leading: const Icon(Icons.restore_outlined),
                title: const Text('Recently Viewed'),
                onTap: () {
                  //Navigator.of(context).pushNamed(AddTaskPage.id);
                },
              ),
              ListTile(
                leading: const Icon(Icons.account_balance_outlined),
                title: const Text('Payment History'),
                onTap: () {
                  //Navigator.of(context).pushNamed(AddTaskPage.id);
                },
              ),
              ListTile(
                leading: const Icon(Icons.settings_suggest_outlined),
                title: const Text('Settings'),
                onTap: () {
                  //Navigator.of(context).pushNamed(AddTaskPage.id);
                },
              ),
              ListTile(
                leading: const Icon(Icons.share_outlined),
                title: const Text('Share the See9ja App'),
                onTap: () {
                  //Navigator.of(context).pushNamed(AddTaskPage.id);
                },
              ),
              ListTile(
                leading: const Icon(Icons.logout_outlined),
                title: const Text('Log out'),
                onTap: () {
                  //Navigator.of(context).pushNamed(AddTaskPage.id);
                },
              ),
              Divider(),
              ListTile(
                title: const Text('Help and Support'),
                onTap: () {
                  //Navigator.of(context).pushNamed(AddTaskPage.id);
                },
              ),
              Divider(),
              ListTile(
                title: const Text('Contact us'),
                onTap: () {
                  //Navigator.of(context).pushNamed(AddTaskPage.id);
                },
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        iconTheme: IconThemeData(color: green),
        backgroundColor: const Color(0XFFFCFAFF),
        elevation: 0,
        title: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Container(
            // alignment: Alignment.centerLeft,
            //margin: const EdgeInsets.symmetric(vertical: 20),
            padding: const EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: lightGrey,
            ),
            child: TextFormField(
              // style: ,
              controller: _searchController,

              decoration: InputDecoration(
                //fillColor: lightGrey,
                hintText: "Search Places",
                border: InputBorder.none,
                suffixIcon: const Icon(Icons.clear),
                suffixIconColor: lightGreen,
              ),
              cursorColor: lightGreen,
            ),
            // decoration: ,
          ),
        ),
        actions: [CircleAvatar(backgroundColor: green)],
      ),
      body: SafeArea(
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // //dashboard
                  // Container(
                  //   //margin: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                  //   color: grey,
                  //   height: MediaQuery.of(context).size.height * 0.1,
                  //   child: Row(
                  //     crossAxisAlignment: CrossAxisAlignment.center,
                  //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //     children: [
                  //       // IconButton(
                  //       //   iconSize: 28,
                  //       //   icon: const Icon(Icons.menu),
                  //       //   onPressed: () => _scaffoldKey.currentState!.openDrawer(),
                  //       // ),
                  //       const SizedBox(width: 30),
                  //       // doesnt work
                  //       // customTextField(
                  //       //   // title: '',
                  //       //   controller: _searchController,
                  //       //   hint: 'search places',
                  //       // ),

                  //       // //works
                  //       // Expanded(
                  //       //   child: customTextField(
                  //       //     title: '',
                  //       //     controller: _searchController,
                  //       //     hint: 'search places',
                  //       //   ),
                  //       // ),

                  //       //right side
                  //       Container(
                  //         width: MediaQuery.of(context).size.width * 0.5,
                  //         child: Column(
                  //           mainAxisAlignment: MainAxisAlignment.center,
                  //           children: [
                  //             const Text(
                  //               'Today',
                  //               style: TextStyle(
                  //                 fontSize: 10,
                  //                 fontWeight: FontWeight.bold,
                  //               ),
                  //             ),
                  //             Text(
                  //               '${DateTime.now().day}',
                  //               style: const TextStyle(
                  //                 fontSize: 15,
                  //                 fontWeight: FontWeight.bold,
                  //               ),
                  //             ),
                  //           ],
                  //         ),
                  //       ),
                  //     ],
                  //   ),
                  // ),
                  const Text(
                    'Hello, Odunayo',
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

                  //Text('Explore amazing tours today'),
                  const SizedBox(height: 10.0),
                  // Container(
                  //   //color: grey,
                  //   width: MediaQuery.of(context).size.width,
                  //   height: MediaQuery.of(context).size.height * 0.2,
                  //   decoration: BoxDecoration(
                  //     borderRadius: BorderRadius.circular(12),
                  //     color: lightGreen,
                  //   ),
                  //   child: Column(
                  //     mainAxisAlignment: MainAxisAlignment.center,
                  //     children: const [
                  //       Text(
                  //         'mini_view 1',
                  //         style: TextStyle(
                  //           fontSize: 20,
                  //           fontWeight: FontWeight.bold,
                  //         ),
                  //       ),
                  //     ],
                  //   ),
                  // ),
                  const SizedBox(height: 10.0),
                  Container(
                    //color: green,
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.2,
                    // height: MediaQuery.of(context).size.height * 0.2,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: lightGreen,
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          bottom: 10,
                          left: 10,
                          child: Row(
                            children: [
                              const Icon(Icons.location_on_outlined,
                                  color: Colors.white),
                              Text(
                                'Obudu Moutain Resort',
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
                  Text(
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
                          key: key,
                          category: "Resort",
                          color: green,
                          onPressed: () {}, //Goes to tour view page
                        ),
                        const SizedBox(height: 10.0),
                        CategoryWidget(
                          key: key,
                          category: "Museum",
                          color: grey,
                          onPressed: () {}, //Goes to place view page
                        ),
                        // const SizedBox(height: 10.0),
                        CategoryWidget(
                          key: key,
                          category: "Beach",
                          color: green,
                          onPressed: () {}, //Goes to tour view page
                        ),
                        //const SizedBox(height: 10.0),
                        CategoryWidget(
                          key: key,
                          category: "Mountain",
                          color: grey,
                          onPressed: () {}, //Goes to tour view page
                        ),
                        CategoryWidget(
                          key: key,
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
                          category: "Olumo Rock",
                          color: green,
                          location: "Abeikuta, state",
                          onPressed: () {}, //Goes to tour view page
                        ),
                        const SizedBox(height: 10.0),

                        NearbyPlaces(
                          key: key,
                          category: "Agbokim Waterfalls",
                          color: green,
                          location: "location, state",
                          onPressed: () {}, //Goes to tour view page
                        ),
                        const SizedBox(height: 10.0),
                        NearbyPlaces(
                          key: key,
                          category: "Zuma Rock",
                          color: green,
                          location: "location, state",
                          onPressed: () {}, //Goes to tour view page
                        ),
                        const SizedBox(height: 10.0),
                        NearbyPlaces(
                          key: key,
                          category: "Obudu cattle ranch",
                          color: green,
                          location: "location, state",
                          onPressed: () {}, //Goes to tour view page
                        ),
                        const SizedBox(height: 10.0),
                        NearbyPlaces(
                          key: key,
                          category: "Zuma Rock",
                          color: green,
                          location: "location, state",
                          onPressed: () {}, //Goes to tour view page
                        ),
                        const SizedBox(height: 10.0),

                        ///
                        //////

                        ////
                        ///
                        ///
                        ///
                        // ///
                      ],
                    ),
                  ),

                  //
                  //
                  //
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
                          category: "Resorts",
                          color: green,
                          onPressed: () {}, //Goes to tour view page
                        ),
                        PopularPlaces(
                          key: key,
                          category: "Resorts",
                          color: green,
                          onPressed: () {}, //Goes to tour view page
                        ),
                        PopularPlaces(
                          key: key,
                          category: "Resorts",
                          color: green,
                          onPressed: () {}, //Goes to tour view page
                        ),
                        PopularPlaces(
                          key: key,
                          category: "Resorts",
                          color: green,
                          onPressed: () {}, //Goes to tour view page
                        ),
                        PopularPlaces(
                          key: key,
                          category: "Resorts",
                          color: green,
                          onPressed: () {}, //Goes to tour view page
                        ),

                        ///
                        //////

                        ////
                        ///
                        ///
                        ///
                        // ///
                      ],
                    ),
                  ),
                  // ListView(
                  //   scrollDirection: Axis.horizontal,
                  //   children: [
                  //     const SizedBox(width: 10.0),
                  //     Container(
                  //       width: 100,
                  //       decoration: const BoxDecoration(
                  //         borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  //       ),
                  //     ),
                  //     const SizedBox(width: 10.0),
                  //     Container(
                  //       width: 100,
                  //       decoration: const BoxDecoration(
                  //         borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  //       ),
                  //     ),
                  //     const SizedBox(width: 10.0),
                  //     Container(
                  //       width: 100,
                  //       decoration: const BoxDecoration(
                  //         borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  //       ),
                  //     ),
                  //     const SizedBox(width: 10.0),
                  //     Container(
                  //       width: 100,
                  //       decoration: const BoxDecoration(
                  //         borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  //       ),
                  //     ),
                  //     const SizedBox(width: 10.0),
                  //     Container(
                  //       width: 100,
                  //       decoration: const BoxDecoration(
                  //         borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  //       ),
                  //     ),
                  //     const SizedBox(width: 10.0),
                  //   ],
                  // ),
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
