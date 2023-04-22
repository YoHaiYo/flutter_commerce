import 'package:flutter/material.dart';

class HomeWidgets {
  Widget pageView({
    required List<String> imageList,
    required PageController pageController,
  }) {
    return SizedBox(
      height: 300,
      child: PageView.builder(
        physics: BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return Image.asset(
            imageList[index],
            fit: BoxFit.cover,
          );
        },
        itemCount: imageList.length,
        controller: pageController,
      ),
    );
  }

  /// 이미지 좌우로 밀때 위치 표시해주는것.
  Widget indicator({
    required int length,
    required int currentIndex,

  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ...List.generate(length, (index) {
          return AnimatedContainer(
            duration: Duration(milliseconds: 300),
            height: 10,
            /// 선택됬을때 폭 20, 아닐때 10
            width: currentIndex == index ? 20 : 10,
            margin: EdgeInsets.symmetric(horizontal: 5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.grey,
            ),
          );
          })

      ],
    );
  }
}
