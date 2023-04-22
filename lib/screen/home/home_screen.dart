import 'package:flutter/material.dart';
import 'package:flutter_commerce/screen/home/home_view_model.dart';
import 'package:flutter_commerce/screen/home/widgets/home_widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

HomeWidgets homeWidgets = HomeWidgets();
HomeViewModel homeViewModel = HomeViewModel();
PageController pageController = PageController();



class _HomeScreenState extends State<HomeScreen> {

  @override
  void initState() {
    pageController.addListener(() {
      // 페이지뷰 움직일때 마다 호출
      setState(() {

      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          homeWidgets.pageView(
            imageList: homeViewModel.imageList,
            pageController: pageController,
          ),
          const SizedBox(height: 10,),
          /// 인디케이터
          homeWidgets.indicator(
            currentIndex:
                /// 페이지 컨트롤러에 달라붙었떄와 아닐때 뭐 구분용도라곤하는데 해보면서 이해해봐야 할 듯
                pageController.hasClients ? pageController.page!.round() : 0,
            length: homeViewModel.imageList.length,
          ),
        ],
      ),
    );
  }
}
