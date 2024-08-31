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
        imagePath: 'assets/images/alexander.png',
        name: 'Dr. Alexander Hartfield',
        specialization: [
          'Heart Surgeon',
          'Cardiac Electrophysiology',
          'Heart Failure Management'
        ],
        rating: 4.5,
        color: const RadialGradient(
          colors: [
            Color.fromARGB(255, 247, 205, 160),
            Color(0xffFFF2E4),
          ],
        ),
        biography:
            'Dr. Hartfield has over 15 years of experience in treating complex cardiac arrhythmias and performing minimally invasive heart procedures. He is known for his patient-centric approach and thorough diagnostics.',
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
        imagePath: 'assets/images/clara.png',
        name: 'Dr. Clara Mendel',
        specialization: [
          'Pediatric Cardiology',
          'Cardiovascular Imaging',
          'Hypertrophic Cardiomyopathy'
        ],
        rating: 4.7,
        color: const RadialGradient(
          colors: [
            Color(0xffD0F8EC),
            Color.fromARGB(255, 239, 250, 247),
          ],
        ),
        biography:
            'A compassionate pediatric cardiologist, Dr. Mendel specializes in congenital heart defects and advanced cardiovascular imaging techniques. Her work focuses on early detection and management of pediatric heart conditions.',
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
        imagePath: 'assets/images/sameul.png',
        name: 'Dr. Samuel Rivers',
        specialization: [
          'Preventive Cardiology',
          'Coronary Artery Disease',
          'Cardiac Rehabilitation'
        ],
        rating: 4.3,
        color: const RadialGradient(
          colors: [
            Color.fromARGB(255, 247, 205, 160),
            Color(0xffFFF2E4),
          ],
        ),
        biography:
            'Dr. Rivers is an expert in preventive cardiology and lifestyle medicine, helping patients reduce their risk of heart disease through comprehensive cardiac rehabilitation programs.',
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

  static List<DoctorModel> getPhysicians() {
    List<DoctorModel> physicians = [];

    physicians.add(
      DoctorModel(
        imagePath: 'assets/images/maria.png',
        name: 'Dr. Maria Vasquez',
        specialization: [
          'Internal Medicine',
          'Geriatric Care',
          'Chronic Disease Management'
        ],
        rating: 4.8,
        color: const RadialGradient(
          colors: [
            Color.fromARGB(255, 247, 205, 160),
            Color(0xffFFF2E4),
          ],
        ),
        biography:
            'Dr. Vasquez is an experienced general physician with a special focus on elderly care and chronic disease management, dedicated to improving the quality of life for her patients.',
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

    physicians.add(
      DoctorModel(
        imagePath: 'assets/images/jonathan.png',
        name: 'Dr. Jonathan Lee',
        specialization: [
          'Family Medicine',
          'Diabetes Care',
          'Preventive Health'
        ],
        rating: 4.6,
        color: const RadialGradient(
          colors: [
            Color(0xffD0F8EC),
            Color.fromARGB(255, 239, 250, 247),
          ],
        ),
        biography:
            'Known for his holistic approach, Dr. Lee provides comprehensive care for families, emphasizing preventive health and diabetes management through personalized care plans.',
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

    physicians.add(
      DoctorModel(
        imagePath: 'assets/images/priya.png',
        name: 'Dr. Priya Sharma',
        specialization: [
          'Asthma and Allergy'
              'Hypertension',
          'Women’s Health',
        ],
        rating: 4.4,
        color: const RadialGradient(
          colors: [
            Color.fromARGB(255, 247, 205, 160),
            Color(0xffFFF2E4),
          ],
        ),
        biography:
            'Dr. Sharma combines expertise in women’s health with a deep understanding of managing chronic conditions like hypertension and asthma in a primary care setting.',
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
    return physicians;
  }

  static List<DoctorModel> getGynecologists() {
    List<DoctorModel> gynecologists = [];

    gynecologists.add(
      DoctorModel(
        imagePath: 'assets/images/lila.png',
        name: 'Dr. Lila Kapoor',
        specialization: [
          'Adolescent Gynecologist',
          'Urogynecology',
          'Contraceptive Management'
        ],
        rating: 4.6,
        color: const RadialGradient(
          colors: [
            Color.fromARGB(255, 247, 205, 160),
            Color(0xffFFF2E4),
          ],
        ),
        biography:
            'Dr. Kapoor specializes in adolescent gynecology and urogynecology, providing empathetic care to young women and those with complex pelvic health needs.',
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

    gynecologists.add(
      DoctorModel(
        imagePath: 'assets/images/evelyn.png',
        name: 'Dr. Evelyn Porter',
        specialization: [
          'Fertility Preservation',
          'Menopause Management',
          'Pelvic Floor Disorders'
        ],
        rating: 4.5,
        color: const RadialGradient(
          colors: [
            Color(0xffD0F8EC),
            Color.fromARGB(255, 239, 250, 247),
          ],
        ),
        biography:
            ' A leading gynecologist, Dr. Porter focuses on fertility preservation and comprehensive menopause care, with a strong emphasis on patient education and empowerment.',
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

    gynecologists.add(
      DoctorModel(
        imagePath: 'assets/images/sarah.png',
        name: 'Dr. Sarah Mitchell',
        specialization: [
          'High-Risk Obstetrics',
          'Reproductive Endocrinology',
          'Laparoscopic Surgery'
        ],
        rating: 4.7,
        color: const RadialGradient(
          colors: [
            Color.fromARGB(255, 247, 205, 160),
            Color(0xffFFF2E4),
          ],
        ),
        biography:
            'Dr. Mitchell is an expert in managing high-risk pregnancies and complex reproductive issues, using minimally invasive techniques to improve patient outcomes.',
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
    return gynecologists;
  }
}

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
