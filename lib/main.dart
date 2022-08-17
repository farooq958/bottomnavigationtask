import 'package:bottomnavigationtask/cubit/page_cubit/bottom_navigation_select_cubit.dart';
import 'package:bottomnavigationtask/cubit/page_cubit/page_controller_cubit.dart';
import 'package:bottomnavigationtask/view/task.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(500, 1000),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) => PageControllerCubit(),
            ),
            BlocProvider(
              create: (context) => BottomNavigationSelectCubit(),
            ),
          ],
          child: MaterialApp(
            debugShowCheckedModeBanner: false,

            // You can use the library anywhere in the app even in theme

            home: child,
          ),
        );
      },
      child: TaskScreen(),
    );
  }
}
