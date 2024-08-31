import 'package:doctor_appointment/models/doctors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DetailsPage extends StatefulWidget {
  final DoctorModel doctorsModel;
  const DetailsPage({
    required this.doctorsModel,
    super.key,
  });

  @override
  State<DetailsPage> createState() => _DetailsState();
}

List<CalendarModel> calendar = [];
List<TimeModel> time = [];

class _DetailsState extends State<DetailsPage> {
  @override
  void initState() {
    super.initState();
    calendar = widget.doctorsModel.calendar;
    time = widget.doctorsModel.time;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: appbar(context),
      body: ListView(
        shrinkWrap: true,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 30, top: 10, right: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                info(),
                const SizedBox(
                  height: 20,
                ),
                booking(),
                const SizedBox(
                  height: 30,
                ),
                bookTime(),
                const SizedBox(
                  height: 30,
                ),
                button(),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget button() {
    return MaterialButton(
      onPressed: () {},
      height: 55,
      minWidth: double.infinity,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50),
      ),
      color: const Color(0xff51A8FF),
      child: const Text(
        'Book Appointment',
        style: TextStyle(
          fontSize: 18,
          color: Colors.white,
          fontFamily: 'SFProDisplay',
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Column bookTime() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Time',
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              fontFamily: 'SFProDisplay'),
        ),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          height: 40,
          child: ListView.separated(
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  for (var item in time) {
                    item.isSelected = false;
                  }
                  time[index].isSelected = true;
                  setState(() {});
                },
                child: Container(
                  alignment: Alignment.center,
                  height: 40,
                  width: 80,
                  decoration: BoxDecoration(
                      color: time[index].isSelected
                          ? const Color(0xff51A8FF)
                          : Colors.white,
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                          color: time[index].isSelected
                              ? const Color(0xff51A8FF).withOpacity(0.50)
                              : const Color(0xff050618).withOpacity(0.05),
                          offset: const Offset(0, 2.5),
                          blurRadius: 10,
                        )
                      ]),
                  child: Text(
                    time[index].time,
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color:
                          time[index].isSelected ? Colors.white : Colors.black,
                    ),
                  ),
                ),
              );
            },
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) => const SizedBox(
              width: 30,
            ),
            itemCount: time.length,
          ),
        ),
      ],
    );
  }

  Column booking() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Calendar',
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              fontFamily: 'SFProDisplay'),
        ),
        SizedBox(
          height: 70,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  for (var item in calendar) {
                    item.isSelected = false;
                  }
                  calendar[index].isSelected = true;

                  setState(() {});
                },
                child: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: calendar[index].isSelected
                        ? const Color(0xff51A8FF)
                        : Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: calendar[index].isSelected
                            ? const Color(0xff51A8FF).withOpacity(0.50)
                            : const Color(0xff050618).withOpacity(0.05),
                        offset: const Offset(0, 2.5),
                        blurRadius: 10,
                      ),
                    ],
                  ),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          calendar[index].dayNumber.toString(),
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: calendar[index].isSelected
                                ? Colors.white
                                : Colors.black,
                          ),
                        ),
                        Text(
                          calendar[index].dayName,
                          style: TextStyle(
                            fontSize: 12,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w200,
                            color: calendar[index].isSelected
                                ? Colors.white
                                : Colors.black,
                          ),
                        ),
                      ]),
                ),
              );
            },
            separatorBuilder: (context, index) => const SizedBox(
              width: 30,
            ),
            itemCount: calendar.length,
          ),
        ),
      ],
    );
  }

  Widget info() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 94,
              width: 94,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                gradient: widget.doctorsModel.color,
                image: DecorationImage(
                  image: AssetImage(widget.doctorsModel.imagePath),
                  alignment: Alignment.bottomCenter,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 10,
                left: 20,
                bottom: 10,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.doctorsModel.name,
                    style: const TextStyle(
                        fontFamily: 'SFProDisplay',
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    widget.doctorsModel.specialization.first,
                    style: TextStyle(
                        fontSize: 12,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w300,
                        color: const Color(0xff09121C).withOpacity(0.5)),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      SvgPicture.asset(
                        'assets/icons/star.svg',
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Text(
                          widget.doctorsModel.rating.toString(),
                          style: TextStyle(
                              fontSize: 12,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w300,
                              color: const Color(0xff09121C).withOpacity(0.5)),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Biography',
              style: TextStyle(
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w500,
                fontSize: 16,
              ),
            ),
            Text(
              widget.doctorsModel.biography,
              style: TextStyle(
                  fontSize: 13,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w300,
                  color: const Color(0xff09121C).withOpacity(0.6)),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Specialities',
              style: TextStyle(
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w500,
                fontSize: 16,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 30,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Text(
                    widget.doctorsModel.specialization[index],
                    style: TextStyle(
                        fontSize: 13,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w300,
                        decoration: TextDecoration.underline,
                        color: const Color(0xff09121C).withOpacity(0.5)),
                  );
                },
                separatorBuilder: (context, index) => const SizedBox(
                  width: 15,
                ),
                itemCount: widget.doctorsModel.specialization.length,
              ),
            ),
          ],
        ),
      ],
    );
  }

  AppBar appbar(BuildContext context) {
    return AppBar(
      centerTitle: true,
      toolbarHeight: 100,
      leadingWidth: 100,
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(14),
            boxShadow: [
              BoxShadow(
                color: const Color(0xff050618).withOpacity(0.06),
                blurRadius: 10,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: SvgPicture.asset('assets/icons/Arrow - Left.svg'),
          ),
        ),
      ),
      backgroundColor: Colors.white,
      title: const Text(
        'Doctor Details',
        style: TextStyle(
          fontFamily: 'Roboto',
          fontSize: 20,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}
