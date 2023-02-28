import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:te_veo_app/constants/app_colors.dart';
import 'package:te_veo_app/controllers/gps_controller.dart';
import 'package:te_veo_app/screens/screens.dart';

class TabsPage extends StatelessWidget {
  const TabsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final navegacionController =  Get.put(NavegacionController());
    return  Scaffold(
        body: _Paginas(),
        bottomNavigationBar: _Navegacion(),
    );
  }
}

class _Navegacion extends StatelessWidget {
  const _Navegacion({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final navegacionController =  Get.find<NavegacionController>();
    final gpsController =  Get.find<GpsController>();
    return Obx( () =>
       BottomNavigationBar(
        currentIndex: navegacionController.getpage.value!,
        selectedItemColor: AppColors.orangeMainColor,
        unselectedItemColor: AppColors.blackTextColor,
        onTap: (valor) {
          if(valor == 3){
            if(!gpsController.isAllGranted)  return;
          }
          navegacionController.paginaActual = valor;
          navegacionController.page.value = valor;
        },
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset("assets/icons/home.svg",
            color: navegacionController.page.value == 0 ? AppColors.orangeMainColor : AppColors.blackTextColor , width: 28,), label: ""),
          BottomNavigationBarItem(icon: SvgPicture.asset("assets/icons/location_pen.svg",
          color: navegacionController.page.value == 1 ?  AppColors.orangeMainColor : AppColors.blackTextColor, width: 28,), label: ""),
          BottomNavigationBarItem(icon: SvgPicture.asset("assets/icons/message.svg",
          color: navegacionController.page.value == 2 ?  AppColors.orangeMainColor : AppColors.blackTextColor, width: 28,), label: ""),
          BottomNavigationBarItem(icon: Image.asset("assets/icons/person.png",
          color: navegacionController.page.value == 3 ?  AppColors.orangeMainColor : AppColors.blackTextColor , width: 32,), label: "")
        ],
      ),
    );
  }
}

class _Paginas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final navegacionController =  Get.find<NavegacionController>();
    return PageView(
      // physics: BouncingScrollPhysics(),
      controller: navegacionController.pageController,
      physics: NeverScrollableScrollPhysics(),
      children: const[
        SearchCategoryScreen(),
        ProductMapScreen( locations: [])
      ],
    );
  }
}

class NavegacionController extends GetxController {
  final PageController _pageController = PageController();

  Rxn<int> get getpage => page;
  var page = Rxn<int>(0);

  set paginaActual(int valor) {
    this.page.value = valor;
    _pageController.animateToPage(valor,
        duration: Duration(milliseconds: 250), curve: Curves.easeInOut);
  }

  PageController get pageController => this._pageController;
}
