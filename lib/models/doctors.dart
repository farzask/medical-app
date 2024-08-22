import 'package:flutter/material.dart';

class DoctorsModel {
  String imagePath;
  String name;
  List<String> specialization;
  double rating;
  Gradient color;
  String biography;
  List<CalendarModel> calendar;

  DoctorsModel({
    required this.imagePath,
    required this.name,
    required this.specialization,
    required this.rating,
    required this.color,
    required this.biography,
    required this.calendar,
  });

  static List<DoctorsModel> getDoctors() {
    List<DoctorsModel> doctors = [];

    doctors.add(
      DoctorsModel(
        imagePath: 'assets/images/jenny.png',
        name: 'Dr. Jenny Wilson',
        specialization: [
          'Dental Surgeon',
          'Aesthetic Surgeon',
          'General Dentist'
        ],
        rating: 4.8,
        color: const RadialGradient(
          colors: [
            Color.fromARGB(255, 247, 205, 160),
            Color(0xffFFF2E4),
          ],
        ),
        biography:
            'Dr. Jenny Wilson (Implantologist),  is a Dentist in \nAmerica, she has 20 years of experience.',
        calendar: [
          CalendarModel(
            dayNumber: 14,
            dayName: 'Sun',
          ),
          CalendarModel(
            dayNumber: 15,
            dayName: 'Mon',
          ),
          CalendarModel(
            dayNumber: 16,
            dayName: 'Tue',
          ),
          CalendarModel(
            dayNumber: 17,
            dayName: 'Wed',
          ),
        ],
      ),
    );

    doctors.add(
      DoctorsModel(
        imagePath: 'assets/images/kristin.png',
        name: 'Dr. Kristin Watson',
        specialization: [
          'Dental Surgeon',
          'Aesthetic Surgeon',
          'General Dentist'
        ],
        rating: 4.8,
        color: const RadialGradient(
          colors: [
            Color(0xffD0F8EC),
            Color.fromARGB(255, 239, 250, 247),
          ],
        ),
        biography:
            'Dr. Kristin Watson (Implantologist),  is a Dentist in \nAmerica, she has 15 years of experience.',
        calendar: [
          CalendarModel(
            dayNumber: 14,
            dayName: 'Sun',
          ),
          CalendarModel(
            dayNumber: 15,
            dayName: 'Mon',
          ),
          CalendarModel(
            dayNumber: 16,
            dayName: 'Tue',
          ),
          CalendarModel(
            dayNumber: 17,
            dayName: 'Wed',
          ),
        ],
      ),
    );
    return doctors;
  }
}

class CalendarModel {
  int dayNumber;
  String dayName;

  CalendarModel({
    required this.dayNumber,
    required this.dayName,
  });
}
