import 'package:flutter/material.dart';
import 'package:interview_practicing/models/Service.dart';

class Company {
  final String companyName, logoSrc;
  final Color backgroundColor;
  final List<Service> services;

  Company({
    this.companyName,
    this.logoSrc,
    this.backgroundColor,
    this.services,
  });
}

List<Company> companies = [
  Company(
    companyName: 'LinkedIn',
    backgroundColor: Color(0xFF054769),
    logoSrc: 'images/logos/LinkedIn_icon.png',
    services: [
      Service(
        title: 'System Design Interview',
        description:
            'A standard system design interview with a guaranteed interviewer from LinkedIn.',
        hours: 1,
        price: 190,
      ),
      Service(
        title: 'Coding Interview',
        description:
            'A standard coding interview with a guaranteed interviewer from LinkedIn.',
        hours: 1,
        price: 190,
      ),
    ],
  ),
  Company(
    companyName: 'Google',
    backgroundColor: Color(0xFF086905),
    logoSrc: 'images/logos/Google_icon.png',
    services: [
      Service(
        title: 'System Design Interview',
        description:
            'A standard system design interview with a guaranteed interviewer from Google.',
        hours: 1,
        price: 190,
      ),
      Service(
        title: 'Coding Interview',
        description:
            'A standard coding interview with a guaranteed interviewer from Google.',
        hours: 1,
        price: 190,
      ),
    ],
  ),
  // Company(
  //   companyName: 'Microsoft',
  //   backgroundColor: Color(0xFF695005),
  //   logoSrc: 'images/logos_transparent/Microsoft.png',
  // ),
  Company(
    companyName: 'Facebook',
    backgroundColor: Color(0xFF052569),
    logoSrc: 'images/logos/Facebook_icon.png',
    services: [
      Service(
        title: 'System Design Interview',
        description:
            'A standard system design interview with a guaranteed interviewer from Facebook.',
        hours: 1,
        price: 190,
      ),
      Service(
        title: 'Coding Interview',
        description:
            'A standard coding interview with a guaranteed interviewer from Facebook.',
        hours: 1,
        price: 190,
      ),
    ],
  ),
  Company(
    companyName: 'Amazon',
    backgroundColor: Color(0xFF693D05),
    logoSrc: 'images/logos/Amazon_icon.png',
    services: [
      Service(
        title: 'System Design Interview',
        description:
            'A standard system design interview with a guaranteed interviewer from Amazon.',
        hours: 1,
        price: 190,
      ),
      Service(
        title: 'Coding Interview',
        description:
            'A standard coding interview with a guaranteed interviewer from Amazon.',
        hours: 1,
        price: 190,
      ),
    ],
  ),
  // Company(
  //   companyName: 'Netflix',
  //   backgroundColor: Color(0xFF690805),
  //   logoSrc: 'images/logos_transparent/Netflix.png',
  // ),
  Company(
    companyName: 'ML',
    backgroundColor: Color(0xFF690554),
    logoSrc: 'images/icons/red_brain.png',
    services: [
      Service(
        title: 'ML Interview',
        description: 'A standard ML interview with a guaranteed interviewer.',
        hours: 1,
        price: 190,
      ),
      Service(
        title: 'ML Theory',
        description: 'A standard ML theory with a guaranteed interviewer.',
        hours: 1,
        price: 190,
      ),
      Service(
        title: 'Improve Skills',
        description: 'Improvement ML skills with a guaranteed interviewer.',
        hours: 1,
        price: 190,
      ),
    ],
  ),
  Company(
    companyName: 'Coding Interview',
    backgroundColor: Color(0xFF690505),
    logoSrc: 'images/icons/red_brain.png',
    services: [
      Service(
        title: 'Coding Interview',
        description:
            'A standard coding interview with a guaranteed interviewer.',
        hours: 1,
        price: 190,
      ),
      Service(
        title: 'Improve Skills',
        description: 'Improvement coding skills with a guaranteed interviewer.',
        hours: 1,
        price: 190,
      ),
    ],
  ),
  Company(
    companyName: 'System Design',
    backgroundColor: Color(0xFF450569),
    logoSrc: 'images/icons/red_brain.png',
    services: [
      Service(
        title: 'System Design Interview',
        description:
            'A standard system design interview with a guaranteed interviewer.',
        hours: 1,
        price: 190,
      ),
      Service(
        title: 'Improve Skills',
        description:
            'Improvement system design skills with a guaranteed interviewer.',
        hours: 1,
        price: 190,
      ),
    ],
  ),
  Company(
    companyName: 'Frontend to Backend/Fullstack',
    backgroundColor: Color(0xFF686905),
    logoSrc: 'images/icons/red_brain.png',
    services: [
      Service(
        title: 'Convert skills',
        description: 'Converting frontend skills to backend with specialists.',
        hours: 1,
        price: 190,
      ),
    ],
  )
];
