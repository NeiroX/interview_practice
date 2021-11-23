import 'package:flutter/material.dart';
import 'package:interview_practicing/constants.dart';

class Information {
  final String title, shortDescription, fullDescription, imageSrc;
  final Color backgroundColor;

  Information({
    this.title,
    this.shortDescription,
    this.fullDescription,
    this.imageSrc,
    this.backgroundColor,
  });
}

List<Information> servicesInfo = [
  Information(
    title: 'System Design \nInterview',
    shortDescription: 'Short description',
    fullDescription: 'Full Description',
    imageSrc: 'images/card_images/system_design.gif',
    backgroundColor: Colors.black,
  ),
  Information(
    title: 'Coding Interview',
    shortDescription: 'Short description',
    fullDescription: 'Full Description',
    imageSrc: 'images/card_images/coding.gif',
    backgroundColor: Colors.black,
  ),
  Information(
    title: 'ML Interview',
    shortDescription: 'Short description',
    fullDescription: 'Full Description',
    imageSrc: 'images/card_images/ml.gif',
    backgroundColor: Colors.black,
  ),
  Information(
    title: 'Frontend to \nBackend/Fullstack',
    shortDescription: 'Short description',
    fullDescription: 'Full Description',
    imageSrc: 'images/card_images/frontend.gif',
    backgroundColor: Colors.black,
  ),
];
