// import 'package:geolocator/geolocator.dart';

// //Class that gets the device location using geolocator package

// class Location {
//   double? latitude;
//   double? longitude;

//   Future<void> getCurrentLocation() async {
//     try {
//       Position position = await Geolocator.getCurrentPosition(
//         desiredAccuracy: LocationAccuracy.medium,
//       );

//       latitude = position.latitude;
//       longitude = position.longitude;
//       print("$position from location package");
//     } catch (e) {
//       print(e);
//     }
//   }
// }
