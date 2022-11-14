/// Represents the descriptive information about the Model
class DiscoverModel {
  final int id;
  final String name;
  final String imagePath;
  final String location;
  final String description;
  //final List<DiscoverModel> facts; //list of location facts

  DiscoverModel(
    this.id,
    this.name,
    this.imagePath,
    this.location,
    this.description,
  );
}
