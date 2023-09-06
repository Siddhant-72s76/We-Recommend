import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';

class MyCarouselSlider extends StatefulWidget {
  final List carouselItems;

  MyCarouselSlider({super.key, required this.carouselItems});

  @override
  State<MyCarouselSlider> createState() => _MyCarouselSliderState();
}

class _MyCarouselSliderState extends State<MyCarouselSlider> {
  final CarouselController carouselController = CarouselController();
  int currentIndex = 0;

  void swapSlide(index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: widget.carouselItems
          .map(
            (item) => InkWell(
              child: Image.network(
                item['imageUrl'],
                fit: BoxFit.cover,
                width: double.infinity,
              ),
            ),
          )
          .toList(),
      carouselController: carouselController,
      options: CarouselOptions(
        height: 200,
        enlargeCenterPage: true,
        enableInfiniteScroll: false,
        autoPlay: true,
        onPageChanged: (index, reason) => swapSlide,
      ),
    );
  }
}
