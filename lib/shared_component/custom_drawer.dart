import 'package:bottomnavigationtask/cubit/page_cubit/page_controller_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.8,
      child: Stack(
        children: [
          Positioned(
            top: 0,
            right: 0,
            bottom: 0,
            child: Container(
              width: MediaQuery.of(context).size.width * 0.4,
              decoration: const BoxDecoration(
                  gradient: LinearGradient(colors: [
                Color(0xff343379),
                Color(0xff089752),
              ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
            ),
          ),
          Positioned(
            top: 0,
            right: 0,
            child: Column(
              children: [
                SizedBox(
                  height: 100,
                  width: MediaQuery.of(context).size.width * 0.4,
                  child: const Center(
                    child: Text(
                      "Menu",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white24),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    context.read<PageControllerCubit>().getIndex(index: 0);
                  },
                  child: Container(
                    height: 30,
                    width: MediaQuery.of(context).size.width * 0.43,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(5),
                            bottomLeft: Radius.circular(5)),
                        gradient: LinearGradient(colors: [
                          Color(0xff343379),
                          Color(0xff089752),
                          Color(0xff089752),
                        ], begin: Alignment.topRight, end: Alignment.topLeft)),
                    child: const Center(
                        child: Text(
                      "Home",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    )),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.width * 0.04,
                ),
                InkWell(
                  onTap: () {
                    context.read<PageControllerCubit>().getIndex(index: 1);
                  },
                  child: Container(
                    height: 30,
                    width: MediaQuery.of(context).size.width * 0.43,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(5),
                            bottomLeft: Radius.circular(5)),
                        gradient: LinearGradient(colors: [
                          Color(0xff343379),
                          Color(0xff089752),
                          Color(0xff089752),
                        ], begin: Alignment.topRight, end: Alignment.topLeft)),
                    child: const Center(
                        child: Text(
                      "English College",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    )),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.width * 0.04,
                ),
                InkWell(
                  onTap: () {
                    context.read<PageControllerCubit>().getIndex(index: 2);
                  },
                  child: Container(
                    height: 30,
                    width: MediaQuery.of(context).size.width * 0.43,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(5),
                            bottomLeft: Radius.circular(5)),
                        gradient: LinearGradient(colors: [
                          Color(0xff343379),
                          Color(0xff089752),
                          Color(0xff089752),
                        ], begin: Alignment.topRight, end: Alignment.topLeft)),
                    child: const Center(
                        child: Text(
                      "French College",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    )),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.width * 0.04,
                ),
                InkWell(
                  onTap: () {
                    context.read<PageControllerCubit>().getIndex(index: 3);
                  },
                  child: Container(
                    height: 30,
                    width: MediaQuery.of(context).size.width * 0.43,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(5),
                            bottomLeft: Radius.circular(5)),
                        gradient: LinearGradient(colors: [
                          Color(0xff343379),
                          Color(0xff089752),
                          Color(0xff089752),
                        ], begin: Alignment.topRight, end: Alignment.topLeft)),
                    child: const Center(
                        child: Text(
                      "Arabic College",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    )),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
