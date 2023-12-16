import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:get/get.dart';
import 'package:matjar_salla/controller/home/home_controller.dart';

class CustomCarouselSlider extends StatelessWidget
{
  const CustomCarouselSlider({super.key});

  @override
  Widget build(BuildContext context)
  {
    HomeController controller = Get.put(HomeController());

    return CarouselSlider.builder(
      itemCount: controller.data.length,
      itemBuilder: (context, index, realIndex) {
        return Image(
          image: NetworkImage("${controller.data[index]['banners']['image']}"),
          width: double.infinity,
          fit: BoxFit.cover,
        );
      },
      options: CarouselOptions(
        height: 250,
        initialPage: 0,
        enableInfiniteScroll: true,
        scrollDirection: Axis.horizontal,
        reverse: false,
        autoPlay: true,
        autoPlayInterval: Duration(seconds: 3),
        autoPlayAnimationDuration: Duration(seconds: 1),
        autoPlayCurve: Curves.bounceIn,
      ),
    );
  }
}

