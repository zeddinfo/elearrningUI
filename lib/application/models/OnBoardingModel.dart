import 'package:flutter/cupertino.dart';

class OnBoardingModel {
  final String? imagePath;
  final String? title;
  final String? description;
  final Color? primaryColor;
  final Color? secondaryColor;
  final String? type;

  OnBoardingModel(
      {this.imagePath,
      this.title,
      this.description,
      this.primaryColor,
      this.secondaryColor,
      this.type});
}
