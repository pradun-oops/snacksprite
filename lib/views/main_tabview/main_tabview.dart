import 'package:flutter/material.dart';
import 'package:snacksprite/common/color_extension.dart';
import 'package:snacksprite/common_widget/tab_button.dart';
import 'package:snacksprite/views/home/home_view.dart';

class MainTabview extends StatefulWidget {
  const MainTabview({super.key});

  @override
  State<MainTabview> createState() => _MainTabviewState();
}

class _MainTabviewState extends State<MainTabview> {
  int selectTab = 2;
  PageStorageBucket storageBucket = PageStorageBucket();
  Widget selectPageView = const HomeView();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(bucket: storageBucket, child: selectPageView),
      floatingActionButton: SizedBox(
        width: 65,
        height: 65,
        child: FloatingActionButton(
          onPressed: () {
            if (selectTab == 2) {
              selectTab = 2;
              selectPageView = const HomeView();
            } else {}
            if (mounted) {
              setState(() {});
            }
          },
          shape: const CircleBorder(),
          backgroundColor: selectTab == 2 ? TColor.primary : TColor.placeholder,
          child: Image.asset(
            'assets/img/tab_home.png',
            width: 40,
            height: 40,
          ),
        ),
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
      bottomNavigationBar: BottomAppBar(
        surfaceTintColor: TColor.white,
        shadowColor: Colors.black,
        elevation: 1,
        notchMargin: 12,
        height: 64,
        shape: const CircularNotchedRectangle(),
        child: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TabButton(
                  title: "Menu",
                  icon: "assets/img/tab_menu.png",
                  onTap: () {
                    if (selectTab == 0) {
                      selectTab = 0;
                      selectPageView = const HomeView();
                    } else {}
                    if (mounted) {
                      setState(() {});
                    }
                  },
                  isSelected: selectTab == 0),
              TabButton(
                  title: "Offer",
                  icon: "assets/img/tab_offer.png",
                  onTap: () {
                    if (selectTab == 1) {
                      selectTab = 1;
                      selectPageView = const HomeView();
                    } else {}
                    if (mounted) {
                      setState(() {});
                    }
                  },
                  isSelected: selectTab == 1),
              const SizedBox(
                width: 40,
                height: 40,
              ),
              TabButton(
                  title: "Profile",
                  icon: "assets/img/tab_profile.png",
                  onTap: () {
                    if (selectTab == 3) {
                      selectTab = 3;
                      selectPageView = const HomeView();
                    } else {}
                    if (mounted) {
                      setState(() {});
                    }
                  },
                  isSelected: selectTab == 3),
              TabButton(
                  title: "More",
                  icon: "assets/img/tab_more.png",
                  onTap: () {
                    if (selectTab == 4) {
                      selectTab = 4;
                      selectPageView = const HomeView();
                    } else {}
                    if (mounted) {
                      setState(() {});
                    }
                  },
                  isSelected: selectTab == 4),
            ],
          ),
        ),
      ),
    );
  }
}
