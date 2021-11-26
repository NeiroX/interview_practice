import 'package:flutter/material.dart';

class Feature {
  final int id;
  final String title, description, imageSrc;
  final Color backgroundColor;

  Feature(
      {this.id,
      this.title,
      this.description,
      this.imageSrc,
      this.backgroundColor});
}

List<Feature> features = [
  Feature(
    id: 1,
    title: 'Feature 1',
    description:
        'Description of this feature has to contain words which I haven\'t come up with yet',
    backgroundColor: Color(0xFF260003),
    imageSrc: 'images/icons/ui.png',
  ),
  Feature(
    id: 2,
    title: 'Feature 2',
    description:
        'Description of this feature has to contain words which I haven\'t come up with yet',
    backgroundColor: Color(0xFF1b0038),
    imageSrc: 'images/icons/desktop.png',
  ),
  Feature(
    id: 3,
    title: 'Feature 3',
    description:
        'Description of this feature has to contain words which I haven\'t come up with yet',
    backgroundColor: Color(0xFF000c22),
    imageSrc: 'images/icons/graphic.png',
  ),
  Feature(
    id: 4,
    title: 'Feature 4',
    description:
        'Description of this feature has to contain words which I haven\'t come up with yet',
    backgroundColor: Color(0xFF001f1f),
    imageSrc: 'images/icons/Intreaction_design.png',
  )
];
