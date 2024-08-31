import 'package:flutter/material.dart';

class DoctorModel {
  String imagePath;
  String name;
  List<String> specialization;
  double rating;
  Gradient color;
  String biography;
  List<CalendarModel> calendar;
  List<TimeModel> time;

  DoctorModel({
    required this.imagePath,
    required this.name,
    required this.specialization,
    required this.rating,
    required this.color,
    required this.biography,
    required this.calendar,
    required this.time,
  });

  static List<DoctorModel> getDentists() {
    List<DoctorModel> dentists = [];

    dentists.add(
      DoctorModel(
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
            'Dr. Jenny Wilson (Implantologist),  is a Dentist in America, she has 20 years of experience.',
        calendar: [
          CalendarModel(
            dayNumber: 14,
            dayName: 'Sun',
            isSelected: true,
          ),
          CalendarModel(
            dayNumber: 15,
            dayName: 'Mon',
            isSelected: false,
          ),
          CalendarModel(
            dayNumber: 16,
            dayName: 'Tue',
            isSelected: false,
          ),
          CalendarModel(
            dayNumber: 17,
            dayName: 'Wed',
            isSelected: false,
          ),
        ],
        time: [
          TimeModel(
            time: '09.00 AM',
            isSelected: true,
          ),
          TimeModel(
            time: '11.00 AM',
            isSelected: false,
          ),
          TimeModel(
            time: '03.00 PM',
            isSelected: false,
          ),
        ],
      ),
    );

    dentists.add(
      DoctorModel(
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
            'Dr. Kristin Watson (Implantologist),  is a Dentist in America, she has 15 years of experience.',
        calendar: [
          CalendarModel(
            dayNumber: 14,
            dayName: 'Sun',
            isSelected: true,
          ),
          CalendarModel(
            dayNumber: 15,
            dayName: 'Mon',
            isSelected: false,
          ),
          CalendarModel(
            dayNumber: 16,
            dayName: 'Tue',
            isSelected: false,
          ),
          CalendarModel(
            dayNumber: 17,
            dayName: 'Wed',
            isSelected: false,
          ),
        ],
        time: [
          TimeModel(
            time: '09.00 AM',
            isSelected: true,
          ),
          TimeModel(
            time: '11.00 AM',
            isSelected: false,
          ),
          TimeModel(
            time: '03.00 PM',
            isSelected: false,
          ),
        ],
      ),
    );

    dentists.add(
      DoctorModel(
        imagePath: 'assets/images/daniel.png',
        name: 'Dr. Daniel Crowe',
        specialization: [
          'Cosmetic Dentistry',
          'Endodontics',
          'Pediatric Dentistry'
        ],
        rating: 4.9,
        color: const RadialGradient(
          colors: [
            Color.fromARGB(255, 247, 205, 160),
            Color(0xffFFF2E4),
          ],
        ),
        biography:
            'Dr. Crowe is a skilled dentist who excels in cosmetic procedures, root canals, and children’s dentistry. He is known for his gentle approach and commitment to dental health education.',
        calendar: [
          CalendarModel(
            dayNumber: 14,
            dayName: 'Sun',
            isSelected: true,
          ),
          CalendarModel(
            dayNumber: 15,
            dayName: 'Mon',
            isSelected: false,
          ),
          CalendarModel(
            dayNumber: 16,
            dayName: 'Tue',
            isSelected: false,
          ),
          CalendarModel(
            dayNumber: 17,
            dayName: 'Wed',
            isSelected: false,
          ),
        ],
        time: [
          TimeModel(
            time: '09.00 AM',
            isSelected: true,
          ),
          TimeModel(
            time: '11.00 AM',
            isSelected: false,
          ),
          TimeModel(
            time: '03.00 PM',
            isSelected: false,
          ),
        ],
      ),
    );
    return dentists;
  }

  static List<DoctorModel> getCardiologists() {
    List<DoctorModel> cardiologists = [];

    cardiologists.add(
      DoctorModel(
        imagePath: 'assets/images/jenny.png',
        name: 'Dr. Jane Austin',
        specialization: [
          'Heart Surgeon',
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
            'Dr. Jenny Wilson (Implantologist),  is a Dentist in America, she has 20 years of experience.',
        calendar: [
          CalendarModel(
            dayNumber: 14,
            dayName: 'Sun',
            isSelected: true,
          ),
          CalendarModel(
            dayNumber: 15,
            dayName: 'Mon',
            isSelected: false,
          ),
          CalendarModel(
            dayNumber: 16,
            dayName: 'Tue',
            isSelected: false,
          ),
          CalendarModel(
            dayNumber: 17,
            dayName: 'Wed',
            isSelected: false,
          ),
        ],
        time: [
          TimeModel(
            time: '09.00 AM',
            isSelected: true,
          ),
          TimeModel(
            time: '11.00 AM',
            isSelected: false,
          ),
          TimeModel(
            time: '03.00 PM',
            isSelected: false,
          ),
        ],
      ),
    );

    cardiologists.add(
      DoctorModel(
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
            'Dr. Kristin Watson (Implantologist),  is a Dentist in America, she has 15 years of experience.',
        calendar: [
          CalendarModel(
            dayNumber: 14,
            dayName: 'Sun',
            isSelected: true,
          ),
          CalendarModel(
            dayNumber: 15,
            dayName: 'Mon',
            isSelected: false,
          ),
          CalendarModel(
            dayNumber: 16,
            dayName: 'Tue',
            isSelected: false,
          ),
          CalendarModel(
            dayNumber: 17,
            dayName: 'Wed',
            isSelected: false,
          ),
        ],
        time: [
          TimeModel(
            time: '09.00 AM',
            isSelected: true,
          ),
          TimeModel(
            time: '11.00 AM',
            isSelected: false,
          ),
          TimeModel(
            time: '03.00 PM',
            isSelected: false,
          ),
        ],
      ),
    );

    cardiologists.add(
      DoctorModel(
        imagePath: 'assets/images/daniel.png',
        name: 'Dr. Daniel Crowe',
        specialization: [
          'Cosmetic Dentistry',
          'Endodontics',
          'Pediatric Dentistry'
        ],
        rating: 4.9,
        color: const RadialGradient(
          colors: [
            Color.fromARGB(255, 247, 205, 160),
            Color(0xffFFF2E4),
          ],
        ),
        biography:
            'Dr. Crowe is a skilled dentist who excels in cosmetic procedures, root canals, and children’s dentistry. He is known for his gentle approach and commitment to dental health education.',
        calendar: [
          CalendarModel(
            dayNumber: 14,
            dayName: 'Sun',
            isSelected: true,
          ),
          CalendarModel(
            dayNumber: 15,
            dayName: 'Mon',
            isSelected: false,
          ),
          CalendarModel(
            dayNumber: 16,
            dayName: 'Tue',
            isSelected: false,
          ),
          CalendarModel(
            dayNumber: 17,
            dayName: 'Wed',
            isSelected: false,
          ),
        ],
        time: [
          TimeModel(
            time: '09.00 AM',
            isSelected: true,
          ),
          TimeModel(
            time: '11.00 AM',
            isSelected: false,
          ),
          TimeModel(
            time: '03.00 PM',
            isSelected: false,
          ),
        ],
      ),
    );
    return cardiologists;
  }
}

// class CardiologistModel {
//   String imagePath;
//   String name;
//   List<String> specialization;
//   double rating;
//   Gradient color;
//   String biography;
//   List<CalendarModel> calendar;
//   List<TimeModel> time;

//   CardiologistModel({
//     required this.imagePath,
//     required this.name,
//     required this.specialization,
//     required this.rating,
//     required this.color,
//     required this.biography,
//     required this.calendar,
//     required this.time,
//   });

//   static List<CardiologistModel> getCardiologists() {
//     List<CardiologistModel> cardiologists = [];

//     cardiologists.add(
//       CardiologistModel(
//         imagePath: 'assets/images/jenny.png',
//         name: 'Dr. Jenny Wilson',
//         specialization: [
//           'Dental Surgeon',
//           'Aesthetic Surgeon',
//           'General Dentist'
//         ],
//         rating: 4.8,
//         color: const RadialGradient(
//           colors: [
//             Color.fromARGB(255, 247, 205, 160),
//             Color(0xffFFF2E4),
//           ],
//         ),
//         biography:
//             'Dr. Jenny Wilson (Implantologist),  is a Dentist in America, she has 20 years of experience.',
//         calendar: [
//           CalendarModel(
//             dayNumber: 14,
//             dayName: 'Sun',
//             isSelected: true,
//           ),
//           CalendarModel(
//             dayNumber: 15,
//             dayName: 'Mon',
//             isSelected: false,
//           ),
//           CalendarModel(
//             dayNumber: 16,
//             dayName: 'Tue',
//             isSelected: false,
//           ),
//           CalendarModel(
//             dayNumber: 17,
//             dayName: 'Wed',
//             isSelected: false,
//           ),
//         ],
//         time: [
//           TimeModel(
//             time: '09.00 AM',
//             isSelected: true,
//           ),
//           TimeModel(
//             time: '11.00 AM',
//             isSelected: false,
//           ),
//           TimeModel(
//             time: '03.00 PM',
//             isSelected: false,
//           ),
//         ],
//       ),
//     );

//     cardiologists.add(
//       CardiologistModel(
//         imagePath: 'assets/images/kristin.png',
//         name: 'Dr. Kristin Watson',
//         specialization: [
//           'Dental Surgeon',
//           'Aesthetic Surgeon',
//           'General Dentist'
//         ],
//         rating: 4.8,
//         color: const RadialGradient(
//           colors: [
//             Color(0xffD0F8EC),
//             Color.fromARGB(255, 239, 250, 247),
//           ],
//         ),
//         biography:
//             'Dr. Kristin Watson (Implantologist),  is a Dentist in America, she has 15 years of experience.',
//         calendar: [
//           CalendarModel(
//             dayNumber: 14,
//             dayName: 'Sun',
//             isSelected: true,
//           ),
//           CalendarModel(
//             dayNumber: 15,
//             dayName: 'Mon',
//             isSelected: false,
//           ),
//           CalendarModel(
//             dayNumber: 16,
//             dayName: 'Tue',
//             isSelected: false,
//           ),
//           CalendarModel(
//             dayNumber: 17,
//             dayName: 'Wed',
//             isSelected: false,
//           ),
//         ],
//         time: [
//           TimeModel(
//             time: '09.00 AM',
//             isSelected: true,
//           ),
//           TimeModel(
//             time: '11.00 AM',
//             isSelected: false,
//           ),
//           TimeModel(
//             time: '03.00 PM',
//             isSelected: false,
//           ),
//         ],
//       ),
//     );

//     cardiologists.add(
//       CardiologistModel(
//         imagePath: 'assets/images/daniel.png',
//         name: 'Dr. Daniel Crowe',
//         specialization: [
//           'Cosmetic Dentistry',
//           'Endodontics',
//           'Pediatric Dentistry'
//         ],
//         rating: 4.9,
//         color: const RadialGradient(
//           colors: [
//             Color.fromARGB(255, 247, 205, 160),
//             Color(0xffFFF2E4),
//           ],
//         ),
//         biography:
//             'Dr. Crowe is a skilled dentist who excels in cosmetic procedures, root canals, and children’s dentistry. He is known for his gentle approach and commitment to dental health education.',
//         calendar: [
//           CalendarModel(
//             dayNumber: 14,
//             dayName: 'Sun',
//             isSelected: true,
//           ),
//           CalendarModel(
//             dayNumber: 15,
//             dayName: 'Mon',
//             isSelected: false,
//           ),
//           CalendarModel(
//             dayNumber: 16,
//             dayName: 'Tue',
//             isSelected: false,
//           ),
//           CalendarModel(
//             dayNumber: 17,
//             dayName: 'Wed',
//             isSelected: false,
//           ),
//         ],
//         time: [
//           TimeModel(
//             time: '09.00 AM',
//             isSelected: true,
//           ),
//           TimeModel(
//             time: '11.00 AM',
//             isSelected: false,
//           ),
//           TimeModel(
//             time: '03.00 PM',
//             isSelected: false,
//           ),
//         ],
//       ),
//     );
//     return cardiologists;
//   }

// }

// class DentistsModel {
//   String imagePath;
//   String name;
//   List<String> specialization;
//   double rating;
//   Gradient color;
//   String biography;
//   List<CalendarModel> calendar;
//   List<TimeModel> time;

//   DentistsModel({
//     required this.imagePath,
//     required this.name,
//     required this.specialization,
//     required this.rating,
//     required this.color,
//     required this.biography,
//     required this.calendar,
//     required this.time,
//   });

//   static List<DentistsModel> getDentists() {
//     List<DentistsModel> dentists = [];

//     dentists.add(
//       DentistsModel(
//         imagePath: 'assets/images/jenny.png',
//         name: 'Dr. Jenny Wilson',
//         specialization: [
//           'Dental Surgeon',
//           'Aesthetic Surgeon',
//           'General Dentist'
//         ],
//         rating: 4.8,
//         color: const RadialGradient(
//           colors: [
//             Color.fromARGB(255, 247, 205, 160),
//             Color(0xffFFF2E4),
//           ],
//         ),
//         biography:
//             'Dr. Jenny Wilson (Implantologist),  is a Dentist in America, she has 20 years of experience.',
//         calendar: [
//           CalendarModel(
//             dayNumber: 14,
//             dayName: 'Sun',
//             isSelected: true,
//           ),
//           CalendarModel(
//             dayNumber: 15,
//             dayName: 'Mon',
//             isSelected: false,
//           ),
//           CalendarModel(
//             dayNumber: 16,
//             dayName: 'Tue',
//             isSelected: false,
//           ),
//           CalendarModel(
//             dayNumber: 17,
//             dayName: 'Wed',
//             isSelected: false,
//           ),
//         ],
//         time: [
//           TimeModel(
//             time: '09.00 AM',
//             isSelected: true,
//           ),
//           TimeModel(
//             time: '11.00 AM',
//             isSelected: false,
//           ),
//           TimeModel(
//             time: '03.00 PM',
//             isSelected: false,
//           ),
//         ],
//       ),
//     );

//     dentists.add(
//       DentistsModel(
//         imagePath: 'assets/images/kristin.png',
//         name: 'Dr. Kristin Watson',
//         specialization: [
//           'Dental Surgeon',
//           'Aesthetic Surgeon',
//           'General Dentist'
//         ],
//         rating: 4.8,
//         color: const RadialGradient(
//           colors: [
//             Color(0xffD0F8EC),
//             Color.fromARGB(255, 239, 250, 247),
//           ],
//         ),
//         biography:
//             'Dr. Kristin Watson (Implantologist),  is a Dentist in America, she has 15 years of experience.',
//         calendar: [
//           CalendarModel(
//             dayNumber: 14,
//             dayName: 'Sun',
//             isSelected: true,
//           ),
//           CalendarModel(
//             dayNumber: 15,
//             dayName: 'Mon',
//             isSelected: false,
//           ),
//           CalendarModel(
//             dayNumber: 16,
//             dayName: 'Tue',
//             isSelected: false,
//           ),
//           CalendarModel(
//             dayNumber: 17,
//             dayName: 'Wed',
//             isSelected: false,
//           ),
//         ],
//         time: [
//           TimeModel(
//             time: '09.00 AM',
//             isSelected: true,
//           ),
//           TimeModel(
//             time: '11.00 AM',
//             isSelected: false,
//           ),
//           TimeModel(
//             time: '03.00 PM',
//             isSelected: false,
//           ),
//         ],
//       ),
//     );

//     dentists.add(
//       DentistsModel(
//         imagePath: 'assets/images/daniel.png',
//         name: 'Dr. Daniel Crowe',
//         specialization: [
//           'Cosmetic Dentistry',
//           'Endodontics',
//           'Pediatric Dentistry'
//         ],
//         rating: 4.9,
//         color: const RadialGradient(
//           colors: [
//             Color.fromARGB(255, 247, 205, 160),
//             Color(0xffFFF2E4),
//           ],
//         ),
//         biography:
//             'Dr. Crowe is a skilled dentist who excels in cosmetic procedures, root canals, and children’s dentistry. He is known for his gentle approach and commitment to dental health education.',
//         calendar: [
//           CalendarModel(
//             dayNumber: 14,
//             dayName: 'Sun',
//             isSelected: true,
//           ),
//           CalendarModel(
//             dayNumber: 15,
//             dayName: 'Mon',
//             isSelected: false,
//           ),
//           CalendarModel(
//             dayNumber: 16,
//             dayName: 'Tue',
//             isSelected: false,
//           ),
//           CalendarModel(
//             dayNumber: 17,
//             dayName: 'Wed',
//             isSelected: false,
//           ),
//         ],
//         time: [
//           TimeModel(
//             time: '09.00 AM',
//             isSelected: true,
//           ),
//           TimeModel(
//             time: '11.00 AM',
//             isSelected: false,
//           ),
//           TimeModel(
//             time: '03.00 PM',
//             isSelected: false,
//           ),
//         ],
//       ),
//     );
//     return dentists;
//   }
// }

class CalendarModel {
  int dayNumber;
  String dayName;
  bool isSelected;
  CalendarModel(
      {required this.dayNumber,
      required this.dayName,
      required this.isSelected});
}

class TimeModel {
  String time;
  bool isSelected;

  TimeModel({
    required this.time,
    required this.isSelected,
  });
}
