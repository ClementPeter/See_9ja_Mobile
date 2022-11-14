import 'package:flutter/material.dart';
import 'package:see_9ja/constants.dart';
import 'package:see_9ja/models/favourite_fact.dart';

class Favourite extends StatelessWidget {
  Favourite({Key? key}) : super(key: key);

  bool isFavourite = true;

  @override
  Widget build(BuildContext context) {
    final favs =
        FavouriteFact.fetchFavourite(); //Fetching data from locally from Models

    return Scaffold(
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
