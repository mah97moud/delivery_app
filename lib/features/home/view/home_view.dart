import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../core/utils/app_assets.dart';
import '../../../core/utils/app_colors.dart';
import '../home.dart';

class HomeView extends StatefulWidget {
  const HomeView({
    Key? key,
    required this.navigationShell,
  }) : super(key: key);
  final StatefulNavigationShell navigationShell;

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widget.navigationShell,
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) => _onTap(context, index),
        currentIndex: widget.navigationShell.currentIndex,
        selectedItemColor: AppColors.primaryColor,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          AppBottomNaviationBarItem(
            assetName: AppAssets.grid,
          ),
          AppBottomNaviationBarItem(
            assetName: AppAssets.shoppingCart,
          ),
          AppBottomNaviationBarItem(
            assetName: AppAssets.user,
          ),
        ],
      ),
    );
  }

  void _onTap(BuildContext context, int index) {
    widget.navigationShell.goBranch(
      index,
      initialLocation: index == widget.navigationShell.currentIndex,
    );
  }
}
