import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:see_9ja/constants.dart';
import 'package:see_9ja/screens/dashboard/component/drawer.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: lightGreen,
        title: const Text(
          "User Profile",
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(10.0, 35.0, 10.0, 0.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Card(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(color: green),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: ListTile(
                      isThreeLine: true,
                      leading: Icon(Icons.account_circle_sharp, size: 70.0),
                      title: Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                        child: Text('Pelumi Johnson',
                            style: Theme.of(context).textTheme.titleLarge),
                      ),
                      subtitle: Padding(
                        padding: const EdgeInsets.only(top: 5.0, bottom: 20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Text('@pelumi_j',
                                style: Theme.of(context).textTheme.titleMedium),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 10.0),
                    child: Text('General',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18.0)),
                  ),
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 10.0, vertical: 10.0),
                  child: Column(
                    children: [
                      Card(
                        elevation: 0.0,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(color: green),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: ListTile(
                          leading: Icon(Icons.person, color: green),
                          title: const Text('Edit Profile'),
                          trailing: const Icon(Icons.navigate_next),
                        ),
                      ),
                      const SizedBox(height: 10.0),
                      //Badge would be a flip card and preset badges u must unlock
                      Card(
                        elevation: 0.0,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(color: green),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: ListTile(
                          leading: Icon(Icons.badge, color: green),
                          title: const Text('Badges'),
                          trailing: const Icon(Icons.navigate_next),
                        ),
                      ),
                      const SizedBox(height: 10.0),
                      Card(
                        elevation: 0.0,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(color: green),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: ListTile(
                          leading: Icon(
                            Icons.add_circle_outline,
                            color: green,
                          ),
                          title: const Text('Tour Goals'),
                          trailing: const Icon(Icons.navigate_next),
                        ),
                      ),
                      const SizedBox(height: 10.0),
                      Card(
                        elevation: 0.0,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(color: green),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: ListTile(
                          leading: Icon(Icons.redo, color: green),
                          title: const Text('Schedule Trip'),
                          trailing: const Icon(Icons.navigate_next),
                        ),
                      ),
                      const SizedBox(height: 10.0),
                      Card(
                        elevation: 0.0,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(color: green),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: ListTile(
                          leading: Icon(Icons.group, color: green),
                          title: const Text('Invite Friends'),
                          trailing: const Icon(Icons.navigate_next),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
