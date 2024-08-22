import 'package:doctor_appointment/models/doctors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DetailsPage extends StatefulWidget {
  final DoctorsModel doctorModel;
  const DetailsPage({
    required this.doctorModel,
    super.key,
  });

  @override
  State<DetailsPage> createState() => _DetailsState();
}

class _DetailsState extends State<DetailsPage> {
  List<CalendarModel> calendar = [];

  @override
  void initState() {
    super.initState();
    calendar = widget.doctorModel.calendar;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: appbar(context),
      body: ListView(
        shrinkWrap: true,
        children: [
          info(),
          booking(),
        ],
      ),
    );
  }

  Widget booking() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 30, top: 10, right: 30),
          child: Text(
            'Calendar',
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                fontFamily: 'SFProDisplay'),
          ),
        ),
        SizedBox(
          height: 70,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: const Color(0xff51A8FF),
                  boxShadow: [
                    BoxShadow(
                      color:
                          // widget.doctorModel.isSelected
                          //     ?
                          const Color(0xff51A8FF).withOpacity(0.50),
                      // : const Color(0xff050618).withOpacity(0.05),
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
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        calendar[index].dayName,
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ]),
              );
            },
            separatorBuilder: (context, index) => const SizedBox(
              width: 30,
            ),
            itemCount: calendar.length,
          ),
        )
      ],
    );
  }

  Widget info() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Container(
                  height: 94,
                  width: 94,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    gradient: widget.doctorModel.color,
                    image: DecorationImage(
                      image: AssetImage(widget.doctorModel.imagePath),
                      alignment: Alignment.bottomCenter,
                    ),
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
                      widget.doctorModel.name,
                      style: const TextStyle(
                          fontFamily: 'SFProDisplay',
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      widget.doctorModel.specialization.first,
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
                            widget.doctorModel.rating.toString(),
                            style: TextStyle(
                                fontSize: 12,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w300,
                                color:
                                    const Color(0xff09121C).withOpacity(0.5)),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Biography',
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                ),
              ),
              Text(
                widget.doctorModel.biography,
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
                  fontSize: 18,
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
                      widget.doctorModel.specialization[index],
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
                  itemCount: widget.doctorModel.specialization.length,
                ),
              )
            ],
          ),
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
