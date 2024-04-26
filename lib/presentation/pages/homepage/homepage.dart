import 'package:appstoreclone/core/app_constants/colors.dart';
import 'package:appstoreclone/core/models/toplist_tile.dart';
import 'package:appstoreclone/presentation/pages/widgets/homepage/home_gamelist.dart';
import 'package:appstoreclone/presentation/pages/widgets/homepage/home_gameview.dart';
import 'package:appstoreclone/presentation/pages/widgets/homepage/top_listile.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: _buildAppBar(),
        body: _buildBody(),
        bottomNavigationBar: NavigationBar(
          backgroundColor: Colors.transparent,
          destinations: const [
            NavigationDestination(
              selectedIcon: Icon(Icons.home),
              icon: Icon(Icons.home_outlined),
              label: 'Home',
            ),
            NavigationDestination(
              icon: Badge(child: Icon(Icons.notifications_sharp)),
              label: 'Notifications',
            ),
            NavigationDestination(
              icon: Badge(
                label: Text('2'),
                child: Icon(Icons.messenger_sharp),
              ),
              label: 'Messages',
            ),
          ],
        ));
  }

//APPBAR

  _buildAppBar() {
    return AppBar(
      title: const Text('Games'),
      actions: const [
        Padding(
          padding: EdgeInsets.all(8.0),
          child: CircleAvatar(
            radius: 17,
            backgroundColor: AppColors.appbarCircleAvathar,
            child: Text(
              'RS',
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
            ),
          ),
        )
      ],
    );
  }

  //Body

  _buildBody() {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 50,
            width: double.maxFinite,
            child: TopListTile(contents: [
              TopListTileModel(
                  content: 'Ar Games', imageUrl: 'assets/svgicons/ar_game.svg'),
              TopListTileModel(
                  content: 'Role-Playing',
                  imageUrl: 'assets/svgicons/role_play.svg'),
              TopListTileModel(
                  content: 'Causal', imageUrl: 'assets/svgicons/casual.svg'),
              TopListTileModel(
                  content: 'Simulation',
                  imageUrl: 'assets/svgicons/simulation.svg'),
              TopListTileModel(
                  content: 'Racing', imageUrl: 'assets/svgicons/racing.svg'),
              TopListTileModel(
                  content: 'Kids', imageUrl: 'assets/svgicons/kids.svg'),
            ]),
          ),
          const HomeGameView(),
          Divider(
            endIndent: 5,
            indent: 5,
            color: Color.fromARGB(255, 44, 40, 40),
          ),
          const HomeGameList()
        ],
      ),
    );
  }
}
