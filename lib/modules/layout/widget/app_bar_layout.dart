import 'package:flutter/material.dart';
import 'package:matjar_salla/shared/styles/icons/icon_broken.dart';

AppBar kAppBarLayout() => AppBar(
  title: Text(
    "Matjar Salla",
  ),
  actions:
  [
    GestureDetector(
      onTap: (){},
      child: Padding(
        padding: const EdgeInsetsDirectional.only(
          end: 16,
        ),
        child: Icon(
          IconBroken.Notification,
        ),
      ),
    ),
    GestureDetector(
      onTap: (){},
      child: Padding(
        padding: const EdgeInsetsDirectional.only(
          end: 16,
        ),
        child: Icon(
          IconBroken.Search,
        ),
      ),
    ),
  ],
);