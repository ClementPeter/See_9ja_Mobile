import 'package:see_9ja/models/discover_model.dart';

//Class that Auto dynamically generates a List of Discoveries
//Represents individual tourism location a user can visit.
class DiscoverFact {
  //properties
  // final int id;
  // final String name;
  // final String imagePath;
  // final String location;
  //final List<DiscoverModel> facts; //list of location facts

  late final List<DiscoverModel> favourite;

  static List<DiscoverModel> fetchDiscoveries() {
    return [
      DiscoverModel(
        2,
        'Agbokim Waterfalls',
        'assets/images/agbokim.jpg',
        "Calabar Cross River",
        "Surrounded by steep hills and valleys, which are encircled in a rainbow-like atmosphere; Agbokim fall remains one of the best destinations in Cross River State and Nigeria.Fun-seekers and tourists, who desire to have a mind-blowing experience with nature at its peak, should pay a visit to Agbokim waterfalls,The community waterfalls area is a major source of foreign attraction as it serves as recreational center where entertainment and relaxation takes place.",
      ),
      DiscoverModel(
          2,
          'Idanre Hills',
          'assets/images/idanre.jpg',
          "Akure,Ondo state",
          "Idanre Hills is a major tourist destination in Ondo state, Nigeria. In the past, the hills offered protection against invaders. The ancient town of Idanre is fifteen kilometers South West of Akure, the State Capital of Ondo. The Idanre hills was added to the UNESCO World Heritage in 2007. In the past, the hills provided protection for the ancient town of Idanre from invaders The ancient town can be found on top of the hill while the modern day settlement is at the base of the hills.  The Idanre town is one of the highest Cocoa producers in Nigeria."),
      DiscoverModel(
          3,
          'Obudu Cattle Ranch',
          'assets/images/obudu.jpg',
          "Calabar Cross River",
          "This place is surrounded by gorgeous mountains and green hills which will definitely captivate your eyes, mind and soul. Once you visit the resort, you will not want to leave it. It is a perfect place for reuniting with nature and find peace for your thoughts. This amazing place was established in the year 1951. Its founders are Scottish ranchers M. McCaughley and Mr Hugh Jones together with Dr Crawfeild. When McCaughley was discovering the mountain ranges, he considered this territory a perfect spot for a ranch."),
      DiscoverModel(
          3,
          'Ogbunike Cave Rock',
          'assets/images/ogbunike.jpg',
          "Anambra, Onistha",
          "The Ogbunike caves are actually a system of many caves linked together by small, tunnels and passages. They take their name from Ogbunike, a town in Oyi Local Government Area of Anambra State where they are situated.he main cave consists of a massive structure with a big open chamber of about 5m high, 10m wide and 30m long at the entrance. Beyond their storied history as a place of refuge, the Ogbunike caves have an important spiritual heritage that dates back many years before the white man first set foot on African soil, to a time when they worshiped in its darkest recesses."),
      DiscoverModel(
        3,
        'Olumo Rock',
        'assets/images/olumo.jpg',
        "Abeokuta, Ogun",
        "Olumo Rock is located in the city of Abeokuta, Ogun State. Historically, the rock was a natural fortress for the Egbas during inter-tribal warfare in the 19th century. It provided protection to the Egba people when they needed it, and is now held in high esteem by the members of the clan.The mountain, one of the most popular tourist destinations in Nigeria, sits in the heart of Abeokuta a name which means “Under the rock” in the Yoruba language; it has a height of 137 metres above sea level. Abeokuta was originally inhabited by the Egbas, who the rock provided with sanctuary and gave a vantage point to monitor the enemy’s advance, leading to eventual triumph in war.",
      ),
      DiscoverModel(
        4,
        'Yankari Game Reserve',
        'assets/images/yankari.jpg',
        "Kaduna, Kaduna ",
        "Yankari has rich and abundant wildlife resources. The park is an important habitat for over 50 species of mammals including African bush elephant, olive baboon, patas monkey, Tantalus monkey, roan antelope, Western hartebeest, West African lion, African buffalo, waterbuck, bushbuck and hippopotamus. It also has a large and diverse freshwater ecosystem around its freshwater springs and the Gaji River. Don’t be surprised when a monkey comes to your window to wake you up early in the morning! There are also over 350 species of bird found in the park. Of these, 130 are resident, 50 are Palearctic migrants and the rest are African migrants that move locally within Nigeria. These birds include the saddle-billed stork, white-rumped vulture, guinea fowl, grey hornbill, and the cattle egret. You can take a safari ride with trained guards for an amazing tour in wildlife, who knows…. you could be lucky enough to spot the African bush elephants! ",
      ),
      DiscoverModel(
        5,
        'Zuma Rock',
        'assets/images/zuma.jpg',
        "Madalla, Niger",
        "Zuma Rock is a large natural monolith  located immediately west of Nigeria's capital Abuja, Zuma is a beautiful, giant of a rock used for defensive purposes by the Gwari natives against invading neighbouring tribes during the inter tribal wars,The iconic images of Zuma Rock appears on the 100 Naira bill (National currency)",
      ),
      // DiscoverModel(
      //   3,
      //   'Olumo Rock',
      //   'assets/images/olumo.jpg',
      //   "Abeokuta, Ogun",
      //   "Olumo Rock is located in the city of Abeokuta, Ogun State. Historically, the rock was a natural fortress for the Egbas during inter-tribal warfare in the 19th century. It provided protection to the Egba people when they needed it, and is now held in high esteem by the members of the clan.The mountain, one of the most popular tourist destinations in Nigeria, sits in the heart of Abeokuta a name which means “Under the rock” in the Yoruba language; it has a height of 137 metres above sea level. Abeokuta was originally inhabited by the Egbas, who the rock provided with sanctuary and gave a vantage point to monitor the enemy’s advance, leading to eventual triumph in war.",
      // ),
      // DiscoverModel(
      //   4,
      //   'Yankari Game Reserve',
      //   'assets/images/yankari.jpg',
      //   "Kaduna, Kaduna ",
      //   "Yankari has rich and abundant wildlife resources. The park is an important habitat for over 50 species of mammals including African bush elephant, olive baboon, patas monkey, Tantalus monkey, roan antelope, Western hartebeest, West African lion, African buffalo, waterbuck, bushbuck and hippopotamus. It also has a large and diverse freshwater ecosystem around its freshwater springs and the Gaji River. Don’t be surprised when a monkey comes to your window to wake you up early in the morning! There are also over 350 species of bird found in the park. Of these, 130 are resident, 50 are Palearctic migrants and the rest are African migrants that move locally within Nigeria. These birds include the saddle-billed stork, white-rumped vulture, guinea fowl, grey hornbill, and the cattle egret. You can take a safari ride with trained guards for an amazing tour in wildlife, who knows…. you could be lucky enough to spot the African bush elephants! ",
      // ),
      // DiscoverModel(
      //   5,
      //   'Zuma Rock',
      //   'assets/images/zuma.jpg',
      //   "Madalla, Niger",
      //   "Zuma Rock is a large natural monolith  located immediately west of Nigeria's capital Abuja, Zuma is a beautiful, giant of a rock used for defensive purposes by the Gwari natives against invading neighbouring tribes during the inter tribal wars,The iconic images of Zuma Rock appears on the 100 Naira bill (National currency)",
      // ),
    ];
  }
}
