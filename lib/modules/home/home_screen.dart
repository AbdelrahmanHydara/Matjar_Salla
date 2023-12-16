import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:matjar_salla/controller/home/home_controller.dart';
import '../../core/class/handling/handling_data_request.dart';
import 'widget/custom_carousel_slider.dart';

class HomeScreen extends StatelessWidget
{
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context)
  {
    Get.put(HomeController());

    return GetBuilder<HomeController>(
        builder: (controller) => HandlingDataRequest(
          statusRequest: controller.statusRequest,
          widget: Column(
            children:
            [
              const CustomCarouselSlider(),
            ],
          ),
        ),
    );
  }
}
