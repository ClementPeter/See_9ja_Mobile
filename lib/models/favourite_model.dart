/// Represents some descriptive information about any Location.
class FavouriteModel {
  // final String attraction;
  // final String location;

  final int id;
  final String name;
  final String imagePath;
  final String location;
  //final List<FavouriteModel> facts; //list of location facts

  FavouriteModel(
    this.id,
    this.name,
    this.imagePath,
    this.location,
  );
  // ContactModels(this.name, this.image, this.number);
  // FavouriteModel(this.id,this.name,this.imagePath,this.location);
}
