import 'dart:async';
import 'package:auvent_flutter_internship_assessment/core/utils/values/app_size.dart';
import 'package:flutter/material.dart';
import 'number_of_images_widget.dart';
import 'slider_image_widget.dart';
import 'package:auvent_flutter_internship_assessment/core/utils/constants/images.dart';

class SliderWidget extends StatefulWidget {
  const SliderWidget({super.key, required this.links});
  final List<String> links;

  @override
  State<SliderWidget> createState() => _SliderWidgetState();
}

class _SliderWidgetState extends State<SliderWidget> {
  int currentIndex = 0;
  late PageController _pageController;
  Timer? _timer;



  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: currentIndex);

    _timer = Timer.periodic(const Duration(seconds: 5), (Timer timer) {
      if (currentIndex < widget.links.length - 1) {
        currentIndex++;
      } else {
        currentIndex = 0;
      }
      _pageController.animateToPage(
        currentIndex,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.maybeOf(context)!.size.height * 0.3,
          child: PageView.builder(
            controller: _pageController,
            itemCount: widget.links.length,
            onPageChanged: (index) {
              setState(() {
                currentIndex = index;
              });
            },
            itemBuilder: (context, index) {
              return SliderImageWidget(imagePath: widget.links[index]);
            },
          ),
        ),
         SizedBox(height: k16V),
        NumberOfImagesWidget(
          itemCount: widget.links.length,
          currentIndex: currentIndex,
        ),
      ],
    );
  }
}
