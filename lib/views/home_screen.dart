import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_mvvm/res/routes/routes_name.dart';
import 'package:getx_mvvm/view_models/controller/user_preference/user_preference_view_model.dart';

class HomeSreen extends StatefulWidget {
  const HomeSreen({super.key});

  @override
  State<HomeSreen> createState() => _HomeSreenState();
}

class _HomeSreenState extends State<HomeSreen> {
//
  UserPreferences userPreferences = UserPreferences();

//

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Builder(
            builder: (context) => IconButton(
              icon: const Icon(
                Icons.menu,
                color: Colors.white,
              ),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            ),
          ),
          actions: [
            IconButton(
                color: Colors.white,
                onPressed: () {
                  userPreferences.removeUser().then((value) {
                    Get.toNamed(RouteName.loginView);
                  });
                },
                icon: const Icon(Icons.logout))
          ],
          automaticallyImplyLeading: false,
          backgroundColor: Colors.blue,
          // actions: [
          //   IconButton(
          //     onPressed: () => Get.back(),
          //     icon: const Icon(
          //       Icons.arrow_back_ios_rounded,
          //     ),
          //     // alignment: Alignment.topLeft,
          //   )
          // ],
        ),
        drawer: const MyDrawer(),
        body:
            // InternetExceptionWidget(
            //   onpress: () {
            //     Get.snackbar('Failed !', "Please try after some time.",
            //         duration: const Duration(seconds: 3));
            //   },
            // ),

            const Center(
          child: Text("Welcome to home screen"),
        ));
  }
}

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text(
              'Dashboard',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            leading: const Icon(
              Icons.account_circle_sharp,
              color: Colors.blue,
            ),
            title: const Text('Profile'),
            onTap: () {
              // Handle item tap
              Navigator.pop(context); // Close the drawer
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.hotel_outlined,
              color: Colors.blue,
            ),
            title: const Text('Leave'),
            onTap: () {
              // Handle item tap
              Navigator.pop(context); // Close the drawer
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.punch_clock_sharp,
              color: Colors.blue,
            ),
            title: const Text('ClockWork'),
            onTap: () {
              // Handle item tap
              Navigator.pop(context); // Close the drawer
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.holiday_village_rounded,
              color: Colors.blue,
            ),
            title: const Text('Holiday'),
            onTap: () {
              // Handle item tap
              Navigator.pop(context); // Close the drawer
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.videogame_asset_sharp,
              color: Colors.blue,
            ),
            title: const Text('Assets'),
            onTap: () {
              // Handle item tap
              Navigator.pop(context); // Close the drawer
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.run_circle_outlined,
              color: Colors.blue,
            ),
            title: const Text('Role'),
            onTap: () {
              // Handle item tap
              Navigator.pop(context); // Close the drawer
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.menu_rounded,
              color: Colors.blue,
            ),
            title: const Text('Menu'),
            onTap: () {
              // Handle item tap
              Navigator.pop(context); // Close the drawer
            },
          ),

          // Add more ListTile items as needed
        ],
      ),
    );
  }
}
