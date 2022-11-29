import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uzum_clone/screens/bascket/basket_page.dart';
import 'package:uzum_clone/screens/cabinet/cabinet_page.dart';
import 'package:uzum_clone/screens/desire/desire_page.dart';
import 'package:uzum_clone/screens/search/search_page.dart';

import '../../cubit/cubit/main_cubit.dart';
import '../../widgets/app_bottom_bar.dart';
import '../home/home_page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => MainCubit(),
      child: BlocBuilder<MainCubit, MainState>(
        builder: (ctx, state) {
          MainCubit cubit = ctx.watch();
          return Scaffold(
              body: _showBody(cubit.currentPageIndex, cubit.onBottomBarChanged),
              bottomNavigationBar: AppBottomNavBar(
                currentIndex: cubit.currentPageIndex,
                onPressed: cubit.onBottomBarChanged,
              ));
        },
      ),
    );
  }

  Widget _showBody(int index, final onpressed) {
    switch (index) {
      case 0:
        return const HomePage();
      case 1:
        return const SeachPage();
      case 2:
        return const BasketPage();
      case 3:
        return const DesirePage();

      default:
        return const CabinetPage();
    }
  }
}
