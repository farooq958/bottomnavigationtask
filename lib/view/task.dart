import 'package:bottomnavigationtask/cubit/page_cubit/bottom_navigation_select_cubit.dart';
import 'package:bottomnavigationtask/cubit/page_cubit/page_controller_cubit.dart';
import 'package:bottomnavigationtask/view/all_admission_pages/all_admission.dart';
import 'package:bottomnavigationtask/view/english_college_pages/accounts.dart';
import 'package:bottomnavigationtask/view/english_college_pages/finance.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../shared_component/custom_drawer.dart';
import 'all_admission_pages/accounts.dart';
import 'all_admission_pages/accounts2.dart';
import 'all_admission_pages/finance.dart';
import 'arabic_college_pages/accounts.dart';
import 'arabic_college_pages/accounts2.dart';
import 'arabic_college_pages/all_admission.dart';
import 'arabic_college_pages/finance.dart';
import 'english_college_pages/accounts2.dart';
import 'english_college_pages/all_admission.dart';
import 'french_college_pages/accounts.dart';
import 'french_college_pages/accounts2.dart';
import 'french_college_pages/all_admission.dart';
import 'french_college_pages/finance.dart';

class TaskScreen extends StatelessWidget {
  TaskScreen({Key? key}) : super(key: key);

  var listOfAdmissionPages = const [
    AllAdmision(),
    Finance(),
    Accounts(),
    Accounts2()
  ];
  var listOfEnglishPages = const [
    EAllAdmision(),
    EFinance(),
    EAccount(),
    EAccounts()
  ];
  var listOfFrenchPages = const [
    FAllAdmision(),
    FFinance(),
    FAccounts(),
    FAccounts2()
  ];
  var listOfArabicPages = const [
    AAllAdmision(),
    AFinance(),
    AAccounts(),
    AAccounts2()
  ];

  @override
  Widget build(BuildContext context) {
    var pageController = PageController(initialPage: 0);
    return BlocBuilder<PageControllerCubit, int>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(),
          endDrawer: const CustomDrawer(),
          body: Stack(
            children: [
              Positioned(
                  child: PageView(
                onPageChanged: (v) {
                  context
                      .read<BottomNavigationSelectCubit>()
                      .setIsSelected(selected: v);
                },
                physics: const NeverScrollableScrollPhysics(),
                controller: pageController,
                children: state == 0
                    ? listOfAdmissionPages
                    : state == 1
                        ? listOfEnglishPages
                        : state == 2
                            ? listOfFrenchPages
                            : listOfArabicPages,
              )),
              Positioned(
                bottom: 10.sp,
                right: 20.w,
                left: 20.w,
                child: Container(
                  height: 70.h,
                  padding:
                      EdgeInsets.symmetric(vertical: 5.sp, horizontal: 5.sp),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50.sp),
                      gradient: const LinearGradient(colors: [
                        Color(0xff343379),
                        Color(0xff089752),
                      ], end: Alignment.topRight, begin: Alignment.topLeft)),
                  child: BlocBuilder<BottomNavigationSelectCubit, int>(
                    builder: (context, selectedIndex) {
                      return Row(
                        children: [
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                pageController.jumpToPage(0);
                              },
                              child: _bottomNavItem(
                                  title: state == 0
                                      ? "AllAdmission"
                                      : state == 1
                                          ? "EAdmission"
                                          : state == 2
                                              ? "FAdmission"
                                              : "ArAdmission",
                                  icon: Icons.stacked_bar_chart_rounded,
                                  itemindex: 0,
                                  selectedItem: selectedIndex),
                            ),
                          ),
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                pageController.jumpToPage(1);
                              },
                              child: _bottomNavItem(
                                  title: state == 0
                                      ? "Finance"
                                      : state == 1
                                          ? "EFinance"
                                          : state == 2
                                              ? "FFinance"
                                              : "ArFinance",
                                  icon: Icons.perm_identity,
                                  itemindex: 1,
                                  selectedItem: selectedIndex),
                            ),
                          ),
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                pageController.jumpToPage(2);
                              },
                              child: _bottomNavItem(
                                  title: state == 0
                                      ? "Accounts"
                                      : state == 1
                                          ? "EAccounts"
                                          : state == 2
                                              ? "FAccounts"
                                              : "ArAccounts",
                                  icon: Icons.grass_rounded,
                                  itemindex: 2,
                                  selectedItem: selectedIndex),
                            ),
                          ),
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                pageController.jumpToPage(3);
                              },
                              child: _bottomNavItem(
                                  title: state == 0
                                      ? "Accounts2"
                                      : state == 1
                                          ? "EAccounts2"
                                          : state == 2
                                              ? "FAccounts2"
                                              : "ArAccounts2",
                                  icon: Icons.ac_unit,
                                  itemindex: 3,
                                  selectedItem: selectedIndex),
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _bottomNavItem(
      {required String title,
      required IconData icon,
      required int itemindex,
      required int selectedItem}) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          color: itemindex == selectedItem ? Colors.white : Colors.grey,
          size: itemindex == selectedItem ? 40.sp : 36.sp,
        ),
        SizedBox(
          height: 5.sp,
        ),
        Expanded(
          child: Text(
            title,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: itemindex == selectedItem ? Colors.white : Colors.grey,
              fontSize: itemindex == selectedItem ? 14.sp : 12.sp,
            ),
          ),
        )
      ],
    );
  }
}
