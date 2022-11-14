import 'package:flutter/material.dart';
import 'package:see_9ja/constants.dart';
import 'package:see_9ja/models/discover_model.dart';

class DiscoverPage extends StatelessWidget {
  const DiscoverPage({Key? key, required this.details, this.index})
      : super(key: key);

  // final DiscoverFact details;
  final int? index;
  final List<DiscoverModel> details;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //backgroundColor: lightGreen,
        //shadowColor: lightGreen,
        title: Text(
          details[index!].name,
          style: TextStyle(color: lightGreen),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          //scrollDirection: Axis.horizontal,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // cross
            //mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(height: 10.0),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30),
                child: Expanded(
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.3,
                    // width: double.infinity,
                    // color: lightGrey,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        //image: const Image(image: AssetImage("assetName")),
                        image: AssetImage(details[index!].imagePath),
                        //image: Image(image: AssetImage(widget.image!)),
                        // fit: BoxFit.fitWidth,
                        fit: BoxFit.fill,
                      ),
                      color: lightGrey,
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10.0),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Fun fact",
                          style: TextStyle(
                            fontSize: 18,
                            color: lightGreen,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                            // w//idth: 2.0,
                            child: Row(
                          children: [
                            Icon(Icons.location_on, color: lightGreen),
                            const SizedBox(width: 2.0),
                            Text(
                              details[index!].location,
                              style:
                                  const TextStyle(fontWeight: FontWeight.bold),
                            )
                          ],
                        )),
                      ],
                    ),
                    const SizedBox(height: 13.0),
                    Text(
                      details[index!].description,
                      style: const TextStyle(
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),

      //Better way-- Generating with ListVew
      // body: ListView.builder(
      //   itemCount:5,
      //   itemBuilder: (BuildContext context, int index) {
      //     return Padding(
      //       padding: const EdgeInsets.all(8.0),
      //       child: ClipRRect(
      //         borderRadius: const BorderRadius.all(Radius.circular(20)),
      //         child: ListTile(
      //           onTap: () {},
      //           tileColor: const Color(0xFFEEEEEE),
      //           title: Text(contacts[index].name),
      //           leading: CircleAvatar(
      //             backgroundColor: Colors.white,
      //             child: Image.asset(contacts[index].image),
      //           ),
      //           subtitle: Text(contacts[index].number),
      //         ),
      //       ),
      //     );
      //   },
      // ),
    );
  }
}

// import 'package:flutter/material.dart';
// // import '../../models/contact.dart';

// //UI Screen to display Contact Information Locations
// class ContactPage extends StatelessWidget {
//   const ContactPage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     final contacts = Contact.fetchAll();

//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Contact"),
//         centerTitle: true,
//       ),

//       //Better way-- Generating with ListVew
//       body: ListView.builder(
//         itemCount: contacts.length,
//         itemBuilder: (BuildContext context, int index) {
//           return Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: ClipRRect(
//               borderRadius: const BorderRadius.all(Radius.circular(20)),
//               child: ListTile(
//                 onTap: () {},
//                 tileColor: const Color(0xFFEEEEEE),
//                 title: Text(contacts[index].name),
//                 leading: CircleAvatar(
//                   backgroundColor: Colors.white,
//                   child: Image.asset(contacts[index].image),
//                 ),
//                 subtitle: Text(contacts[index].number),
//               ),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }
