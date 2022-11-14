import 'package:flutter/material.dart';
import 'package:see_9ja/constants.dart';
//import 'package:see_9ja/screens/dashboard/dashboard_widgets/drawer.dart';
import 'package:see_9ja/screens/dashboard/drawer.dart';
import 'package:see_9ja/widgets/text_field.dart';
import 'package:see_9ja/models/favourite_fact.dart';
import '../../models/favourite_fact.dart';

class Favourite extends StatelessWidget {
  Favourite({Key? key}) : super(key: key);

  bool isFavourite = true;

  // String? hint;
  @override
  Widget build(BuildContext context) {
    // var result = favourites.
    // final favourites =Favourite
    final favs =
        FavouriteFact.fetchFavourite(); //Fetching data from locally from Models

    return Scaffold(
      //drawerScrimColor: Colors.white70,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'Favourite',
          style: TextStyle(color: lightGreen),
        ),
        centerTitle: true,
      ),

      //body:
      body: ListView.builder(
        itemCount: favs.length,
        itemBuilder: ((BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Card(
              child: Padding(
                padding:
                    const EdgeInsets.only(left: 5, right: 5, top: 5, bottom: 5),
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
                            favs[index].imagePath.toString(),
                          ),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    const SizedBox(width: 50.0),
                    Column(
                      children: [
                        const SizedBox(height: 10.0),
                        Text(favs[index].name),
                        const SizedBox(height: 20.0),
                        Text(favs[index].location),
                        const SizedBox(height: 20.0),
                      ],
                    ),
                    const Spacer(),
                    IconButton(
                      onPressed: () {
                        if (isFavourite == false) {
                          isFavourite = true;
                        }
                        isFavourite = true;
                        print(isFavourite);
                      },
                      icon: Icon(
                        Icons.favorite,
                        color: isFavourite ? Colors.lightGreen : Colors.grey,
                      ),
                    )
                  ],
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