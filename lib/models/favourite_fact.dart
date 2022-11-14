import 'package:see_9ja/models/favourite_model.dart';

/// Represents individual tourism location a user can visit.
class FavouriteFact {
  //properties
  // final int id;
  // final String name;
  // final String imagePath;
  // final String location;
  //final List<FavouriteModel> facts; //list of location facts

  late final List<FavouriteModel> favourite;

  static List<FavouriteModel> fetchFavourite() {
    return [
      FavouriteModel(
        1,
        'Obudu Cattle Ranch',
        'assets/images/obudu.jpg',
        "Calabar Cross River",
      ),
      FavouriteModel(
        2,
        'Agbokim Waterfalls',
        'assets/images/agbokim.jpg',
        "Calabar Cross River",
      ),
      FavouriteModel(
        3,
        'Yankari Game Reserve',
        'assets/images/yankari.jpg',
        "Kaduna Kaduna",
      ),
      FavouriteModel(
        4,
        'Zuma Rock',
        'assets/images/zuma.jpg',
        "Madalla, Niger State ",
      ),
    ];
  }
}
