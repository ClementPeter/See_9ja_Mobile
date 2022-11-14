import 'package:flutter/material.dart';
import 'package:see_9ja/constants.dart';
//import 'package:see_9ja/screens/dashboard/dashboard_widgets/drawer.dart';
// import 'package:see_9ja/screens/dashboard/drawer.dart';
import 'package:see_9ja/screens/discover/discover_page.dart';
// import 'package:see_9ja/widgets/text_field.dart';
import 'package:see_9ja/models/Discover_fact.dart';
// import '../../models/Discover_fact.dart';
import '../../utils/router.dart';

class Discover extends StatefulWidget {
  const Discover({Key? key}) : super(key: key);

  @override
  State<Discover> createState() => _DiscoverState();
}

class _DiscoverState extends State<Discover> {
  // String? hint;
  @override
  Widget build(BuildContext context) {
    final discoveries = DiscoverFact.fetchDiscoveries();

    return Scaffold(
      //drawerScrimColor: Colors.white70,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        toolbarHeight: 80, // Set this height
        // title: Text(
        //   'Discover',
        //   style: TextStyle(color: lightGreen),
        // ),

        flexibleSpace: Container(
          //color: Colors.orange,
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
      //drawer: drawer(context),
      body: ListView.builder(
        itemCount: discoveries.length,
        itemBuilder: ((BuildContext context, int index) {
          return InkWell(
            onTap: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //     builder: (context) =>
              //         DiscoverPage(index: index, details: discoveries),
              //   ),
              // );
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
                        // child: FittedBox(
                        //   fit: BoxFit.fill,
                        //   child: Image.asset(favs[index].imagePath.toString()),
                        // // ),
                        // child: Image.asset(
                        //   favs[index].imagePath.toString(),
                        //   fit: BoxFit.fitWidth,
                        // ),
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                              image: AssetImage(
                                discoveries[index].imagePath.toString(),
                              ),
                              // fit: BoxFit.fitWidth,
                              fit: BoxFit.fill,
                            )
                            //color: lightGrey,
                            ),
                      ),
                      const SizedBox(width: 50.0),
                      // const SizedBox(width: 20.0),
                      Column(
                        children: [
                          const SizedBox(height: 10.0),
                          Text(discoveries[index].name),
                          const SizedBox(height: 20.0),
                          Text(discoveries[index].location),
                          const SizedBox(height: 20.0),
                          //Text(favs[index].name),
                          //SizedBox(height: 10.0),
                        ],
                      ),
                      const Spacer(),
                      // IconButton(
                      //   onPressed: () {
                      //     setState(() {

                      //     });
                      //   },
                      //   icon: Icon(Icons.more_vert_sharp),
                      // )
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
                          // popupmenu item 1
                          PopupMenuItem(
                            value: 1,
                            // row has two child icon and text.
                            child: Row(
                              children: [
                                Icon(
                                  Icons.favorite,
                                  color: lightGreen,
                                ),
                                const SizedBox(
                                    // sized box with width 10
                                    width: 10),
                                const Text("Like")
                              ],
                            ),
                          ),
                          // popupmenu item 2
                          // PopupMenuItem(
                          //   value: 2,
                          //   // row has two child icon and text
                          //   child: Row(
                          //     children: [
                          //       Icon(Icons.chrome_reader_mode),
                          //       SizedBox(
                          //         // sized box with width 10
                          //         width: 10,
                          //       ),
                          //       Text("About")
                          //     ],
                          //   ),
                          // ),
                        ],
                        //offset: Offset(0, 100),
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



//  Container(
//               child: Card(
//                 child: Row(
//                   children: [
//                     const SizedBox(width: 20.0),
//                     Container(
//                       width: 90,
//                       height: 90,
//                       decoration: BoxDecoration(
//                         color: Colors.green,
//                         borderRadius: BorderRadius.circular(10),
//                         //color: lightGrey,
//                       ),
//                     ),
                    // const SizedBox(width: 20.0),
                    // Column(
                    //   children: [
                    //     const SizedBox(height: 10.0),
                    //     Text('Attraction'),
                    //     const SizedBox(height: 20.0),
                    //     Text('State'),
                    //     const SizedBox(height: 20.0),
                    //     Text('Brief description'),
                    //     const SizedBox(height: 10.0),
                    //   ],
                    // ),
                    // Spacer(),
                    // IconButton(
                    //   onPressed: () {},
                    //   icon: Icon(Icons.more_vert_sharp),
                    // )
//                   ],
//                 ),
//               ),
//             ),