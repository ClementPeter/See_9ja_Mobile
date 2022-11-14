import 'package:flutter/material.dart';
import 'package:see_9ja/constants.dart';
import 'package:see_9ja/models/discover_model.dart';

class DiscoverPage extends StatelessWidget {
  const DiscoverPage({Key? key, required this.details, this.index})
      : super(key: key);

  final int? index;
  final List<DiscoverModel> details;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          details[index!].name,
          style: TextStyle(color: lightGreen),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10.0),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30),
                child: Expanded(
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.3,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(details[index!].imagePath),
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
    );
  }
}
