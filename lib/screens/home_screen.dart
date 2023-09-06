import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:we_recommend/widgets/my_carousel_slider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List carouselItems = [
    {
      'id': 1,
      'imageUrl':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRMcugRAov2leGRcs95MDtoTacZr_vyHHUBFA&usqp=CAU',
    },
    {
      'id': 2,
      'imageUrl':
          'https://images.theconversation.com/files/45159/original/rptgtpxd-1396254731.jpg?ixlib=rb-1.1.0&q=45&auto=format&w=754&fit=clip',
    },
    {
      'id': 3,
      'imageUrl':
          'https://www.shutterstock.com/image-vector/music-notes-curves-swirls-vector-600w-1705493965.jpg',
    },
    {
      'id': 4,
      'imageUrl':
          'https://cdn2.unrealengine.com/Unreal+Engine%2Findustry%2Fgames%2FNews_UEWeb_Games_blog_share_img3-1200x630-1fbacc68fcbff51163d2ecf620015252ad841aee.jpg',
    },
    {
      'id': 5,
      'imageUrl':
          'https://www.shutterstock.com/image-vector/welcome-poster-spectrum-brush-strokes-260nw-1146069941.jpg',
    },
  ];
  // // final CarouselController carouselController = CarouselController();
  // int currentIndex = 0;

  // void swapSlide(index) {
  //   setState(() {
  //     currentIndex = index;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          MyCarouselSlider(carouselItems: carouselItems),
        ],
      ),
    );
  }
}
