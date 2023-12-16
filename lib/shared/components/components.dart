import 'package:flutter/material.dart';
import '../styles/colors/app_colors.dart';

myDivider() => Container(
  height: 1,
  color: Colors.grey[200],
  width: double.infinity,
);

myCircularProgressIndicator() => const Center(
  child: CircularProgressIndicator(
    color: AppColors.defaultColor,
  ),
);