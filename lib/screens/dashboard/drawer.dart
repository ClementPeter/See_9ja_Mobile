import 'package:flutter/material.dart';
import 'package:see_9ja/constants.dart';
import 'package:see_9ja/screens/accomodation/accomodation.dart';
import 'package:see_9ja/screens/assistant/assistant.dart';
import 'package:see_9ja/screens/commute/commute.dart';
import 'package:see_9ja/screens/discover/discover.dart';
import 'package:see_9ja/screens/favourite/favourite.dart';
import '../../utils/router.dart';

Drawer drawer(BuildContext context) {
  return Drawer(
    //backgroundColor: lightGreen,
    child: ListView(
      children: [
        Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(height: 30),
              CircleAvatar(
                radius: 30.0,
                backgroundColor: lightGreen,
                child: Image.asset("assets/images/profile.png"),
              ),
              const Text(
                'Pelumi',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text('@pelumi_j'),
              const SizedBox(height: 30),
            ],
          ),
          decoration: BoxDecoration(
            color: lightGrey,
          ),
        ),
        ListTile(
          leading: const Icon(Icons.account_box_outlined),
          title: const Text('Profile'),
          selectedTileColor: lightGreen,
          onTap: () {
            // PageNavigator(ctx: context).nextPage(page: const Profile());
            //Navigator.of(context).pushNamed(AddTaskPage.id);
          },
        ),
        ListTile(
          leading: const Icon(Icons.bookmark_added_outlined),
          title: const Text('Discover'),
          onTap: () {
            PageNavigator(ctx: context).nextPage(page: const Discover());
            // databaseProvider.logOut(context);
            //AuthProvider.of(context).logout();
          },
        ),
        ListTile(
          leading: const Icon(Icons.near_me_outlined),
          title: const Text('Favourite Places'),
          onTap: () {
            PageNavigator(ctx: context).nextPage(page: Favourite());
            //Navigator.of(context).pushNamed(AddTaskPage.id);
          },
        ),
        ListTile(
          leading: const Icon(Icons.restore_outlined),
          title: const Text('Recently Viewed'),
          onTap: () {
            //Navigator.of(context).pushNamed(AddTaskPage.id);
          },
        ),
        const Divider(),
        ListTile(
          leading: const Icon(Icons.hotel),
          title: const Text('Accomodation'),
          onTap: () {
            PageNavigator(ctx: context).nextPage(page: const Accomodation());
            //Navigator.of(context).pushNamed(AddTaskPage.id);
          },
        ),
        ListTile(
          leading: const Icon(Icons.commute),
          title: const Text('Commute'),
          onTap: () {
            PageNavigator(ctx: context).nextPage(page: const Commute());
            //Navigator.of(context).pushNamed(AddTaskPage.id);
          },
        ),
        ListTile(
          leading: const Icon(Icons.assistant),
          title: const Text('Tour Assistant'),
          onTap: () {
            PageNavigator(ctx: context).nextPage(page: const AssistantPage());
            //Navigator.of(context).pushNamed(AddTaskPage.id);
          },
        ),
        const Divider(),
        ListTile(
          leading: const Icon(Icons.account_balance_outlined),
          title: const Text('Payments'),
          onTap: () {
            //Navigator.of(context).pushNamed(AddTaskPage.id);
          },
        ),
        ListTile(
          leading: const Icon(Icons.settings_suggest_outlined),
          title: const Text('Settings'),
          onTap: () {
            //Navigator.of(context).pushNamed(AddTaskPage.id);
          },
        ),
        ListTile(
          leading: const Icon(Icons.share_outlined),
          title: const Text('Share the See9ja App'),
          onTap: () {
            //Navigator.of(context).pushNamed(AddTaskPage.id);
          },
        ),
        ListTile(
          leading: const Icon(Icons.logout_outlined),
          title: const Text('Log out'),
          onTap: () {
            //Navigator.of(context).pushNamed(AddTaskPage.id);
          },
        ),
        const Divider(),
        ListTile(
          title: const Text('Contact Us'),
          onTap: () {
            //Navigator.of(context).pushNamed(AddTaskPage.id);
          },
        ),
      ],
    ),
  );
}
