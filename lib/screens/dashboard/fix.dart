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
//    static String id = "Dashboard";

//   @override
//   State<Dashboard> createState() => _DashboardState();
// }

// class _DashboardState extends State<Dashboard> {
//   //databaseprovider instance
//   //DatabaseProvider databaseProvider = DatabaseProvider();
//   // List tasks = [];


   
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       //backgroundColor: bgColor,
//       backgroundColor: green,
//       // appBar: AppBar(
//       //   title: const Text('To-Do'),
//       //   actions: [
//       //     IconButton(
//       //       icon: const Icon(Icons.exit_to_app),
//       //       onPressed: () {
//       //        // databaseProvider.logOut(context);
//       //         //AuthProvider.of(context).logout();
//       //       },
//       //     ),
//       //   ],
//       // ),
//       //drawer
//       // drawer: Drawer(
//       //   child: ListView(
//       //     children: [
//       //       const DrawerHeader(
//       //         child: Text('Favourite'),
//       //         decoration: BoxDecoration(
//       //           color: Colors.green,
//       //         ),
//       //       ),
//       //       ListTile(
//       //         title: const Text('Add Task'),
//       //         onTap: () {
//       //           //Navigator.of(context).pushNamed(AddTaskPage.id);
//       //         },
//       //       ),
//       //       ListTile(
//       //         title: const Text('Logout'),
//       //         onTap: () {
//       //           // databaseProvider.logOut(context);
//       //           //AuthProvider.of(context).logout();
//       //         },
//       //       ),
//       //     ],
//       //   ),
//       // ),

//       body: CustomScrollView(
//         slivers: [
//           SliverToBoxAdapter(
//             child: Padding(
//               padding: const EdgeInsets.all(20.0),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children:  [
//                    SizedBox(height: 20),

//                    TextField(
//                    // hintText: 'Search',
                    
//                    )
//                   // Stack(),
//                   // Row(
//                   //   children: [
//                   //     const Icon(Icons.menu),
//                   //     customTextField(),
//                   //   ],
//                   // ),
//                   //User name and profile picture
//                   // Column(
//                   //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   //   children: [
//                   //     Row(
//                   //       children: const [
//                   //         Icon(Icons.person),
//                   //         Text(
//                   //           'Hello, User',
//                   //           style: TextStyle(
//                   //             fontSize: 20,
//                   //             fontWeight: FontWeight.bold,
//                   //           ),
//                   //         ),
//                   //         Text(
//                   //           'Explore Amazing Tours Today',
//                   //           style: TextStyle(
//                   //             fontSize: 14,
//                   //             //fontWeight: FontWeight.bold,
//                   //           ),
//                   //         ),

//                   //         //customTextField(),
//                   //       ],
//                   //     ),
//                   //     // CircleAvatar(
//                   //     //   radius: 40,
//                   //     //   backgroundColor: green,
//                   //     //   //backgroundImage: AssetImage('assets/images/profile.jpg'),
//                   //     // ),
//                   //   ],
//                   // ),

//                   // //container with rounder corners
//                   // Stack(
//                   //   children: [
//                   //     Container(
//                   //       color: green,
//                   //       height: 200,
//                   //       width: double.infinity,
//                   //       decoration: BoxDecoration(
//                   //         color: Colors.white,
//                   //         borderRadius: BorderRadius.circular(20),
//                   //         boxShadow: const [
//                   //           BoxShadow(
//                   //             color: Colors.black12,
//                   //             offset: Offset(0, 10),
//                   //             blurRadius: 10,
//                   //           ),
//                   //         ],
//                   //       ),
//                   //       child: Column(
//                   //         mainAxisAlignment: MainAxisAlignment.center,
//                   //         children: const [
//                   //           Text(
//                   //             'Your Tasks',
//                   //             style: TextStyle(
//                   //               fontSize: 20,
//                   //               fontWeight: FontWeight.bold,
//                   //             ),
//                   //           ),
//                   //           SizedBox(height: 20),
//                   //           Text(
//                   //             'You have no tasks',
//                   //             style: TextStyle(
//                   //               fontSize: 20,
//                   //               fontWeight: FontWeight.bold,
//                   //             ),
//                   //           ),
//                   //         ],
//                   //       ),
//                   //     ),
//                   //     DotsIndicator(dotsCount: 3),
//                   //   ],
//                   // ),
//                   //const SizedBox(height: 10),
//                   //category widget
//                   // const Text(
//                   //   'Category',
//                   //   style: TextStyle(
//                   //     fontSize: 20,
//                   //     fontWeight: FontWeight.bold,
//                   //   ),
//                   // ),
//                   //single child scroll view
//                   // SingleChildScrollView(
//                   //   scrollDirection: Axis.horizontal,
//                   //   child: Row(
//                   //     children: [
//                   //       CategoryWidget(
//                   //         category: 'Resort',
//                   //         color: amber,
//                   //         onPressed: () {},
//                   //       ),
//                   //       CategoryWidget(
//                   //         category: 'Beach',
//                   //         color: green,
//                   //         onPressed: () {},
//                   //       ),
//                   //       CategoryWidget(
//                   //         category: 'Family',
//                   //         color: grey,
//                   //         onPressed: () {},
//                   //       ),
//                   //     ],
//                   //   ),
//                   // ),
//                   //
//                   // Container(
//                   //   // color: black,
//                   //   height: 200,
//                   //   width: double.infinity,
//                   //   decoration: BoxDecoration(
//                   //     color: Colors.white,
//                   //     borderRadius: BorderRadius.circular(20),
//                   //     boxShadow: const [
//                   //       BoxShadow(
//                   //         color: Colors.black12,
//                   //         offset: Offset(0, 10),
//                   //         blurRadius: 10,
//                   //       ),
//                   //     ],
//                   //   ),
//                   // ),

//                   //Nearby widget
//                   // const Text(
//                   //   'Nearby Places',
//                   //   style: TextStyle(
//                   //     fontSize: 20,
//                   //     fontWeight: FontWeight.bold,
//                   //   ),
//                   // ),
//                   //single child scroll view
//                   // SingleChildScrollView(
//                   //   scrollDirection: Axis.horizontal,
//                   //   child: Container(
//                   //     decoration: BoxDecoration(
//                   //       color: Colors.white,
//                   //       borderRadius: BorderRadius.circular(25),
//                   //       boxShadow: const [
//                   //         BoxShadow(
//                   //           color: Colors.black12,
//                   //           offset: Offset(0, 10),
//                   //           blurRadius: 10,
//                   //         ),
//                   //       ],
//                   //     ),
//                   //     child: Stack(
//                   //       children: const [],
//                   //     ),
//                   //   ),
//                   // ),

//                   // Text(
//                   //   'Tasks',
//                   //   style: TextStyle(
//                   //     fontSize: 30,
//                   //     fontWeight: FontWeight.bold,
//                   //   ),
//                   // ),

//                   // Expanded(
//                   //   child: TaskFieldContainer(),
//                   // ),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
