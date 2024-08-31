import 'package:doctor_appointment/pages/details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:doctor_appointment/models/categories.dart';
import 'package:doctor_appointment/models/doctors.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  List<CategoryModel> categories = CategoryModel.getCategories();

  Map<String, List<DoctorModel>> doctorsByCategories = {
    'Cardiologists': DoctorModel.getCardiologists(),
    'Dentists': DoctorModel.getDentists(),
    'General': DoctorModel.getPhysicians(),
    'Gynaecologists': DoctorModel.getGynecologists(),
  };

  String _selectedCategory = 'Cardiologists';
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(
      () {
        _selectedIndex = index;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color(0xff51A8FF),
        toolbarHeight: 6,
      ),
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              head(),
              getcategories(),
              getDoctors(),
            ],
          ),
        ],
      ),
      bottomNavigationBar: bottomNav(),
    );
  }

  Widget getDoctors() {
    List<DoctorModel> doctors = doctorsByCategories[_selectedCategory]!;
    return ListView.separated(
      shrinkWrap: true,
      separatorBuilder: (context, index) => const SizedBox(
        height: 20,
      ),
      itemCount: doctors.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailsPage(
                  doctorsModel: doctors[index],
                ),
              ),
            );
          },
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
                    gradient: doctors[index].color,
                    image: DecorationImage(
                      image: AssetImage(doctors[index].imagePath),
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
                      doctors[index].name,
                      style: const TextStyle(
                          fontFamily: 'SFProDisplay',
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      doctors[index].specialization.first,
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
                            doctors[index].rating.toString(),
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
        );
      },
    );
  }

  Column getcategories() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(top: 16.0, left: 20),
          child: Text(
            'Categories',
            style: TextStyle(
              fontFamily: 'SFProDisplay',
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        Container(
          height: 60,
          margin: const EdgeInsets.all(16),
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: categories.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  _selectedCategory = categories[index].name;
                  for (var item in categories) {
                    item.isSelected = false;
                  }
                  categories[index].isSelected = true;
                  setState(() {});
                },
                child: Container(
                  width: 48,
                  height: 48,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: categories[index].isSelected
                        ? const Color(0xff51A8FF)
                        : Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: categories[index].isSelected
                            ? const Color(0xff51A8FF).withOpacity(0.50)
                            : const Color(0xff050618).withOpacity(0.05),
                        offset: const Offset(0, 2.5),
                        blurRadius: 10,
                      ),
                    ],
                  ),
                  child: SvgPicture.asset(
                    categories[index].iconPath,
                    fit: BoxFit.none,
                  ),
                ),
              );
            },
            separatorBuilder: (context, index) => const SizedBox(
              width: 50,
            ),
          ),
        ),
      ],
    );
  }

  BottomNavigationBar bottomNav() {
    return BottomNavigationBar(
      backgroundColor: Colors.white,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            'assets/icons/Home.svg',
            height: 20,
            color: _selectedIndex == 0 ? Colors.blue : Colors.grey,
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            'assets/icons/Calendar.svg',
            height: 20,
            color: _selectedIndex == 1 ? Colors.blue : Colors.grey,
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            'assets/icons/Chat.svg',
            height: 20,
            color: _selectedIndex == 2 ? Colors.blue : Colors.grey,
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            'assets/icons/Profile.svg',
            height: 20,
            color: _selectedIndex == 3 ? Colors.blue : Colors.grey,
          ),
          label: '',
        ),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.blue,
      onTap: _onItemTapped,
      showSelectedLabels: false,
      showUnselectedLabels: false,
    );
  }

  Container head() {
    return Container(
      color: const Color(0xff51A8FF),
      height: 260,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 20,
              right: 20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Hi, Steven',
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                    Container(
                      width: 48,
                      height: 48,
                      margin: const EdgeInsets.all(8),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: const Color(0xffC4E1FF).withOpacity(0.15),
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: SvgPicture.asset(
                        'assets/icons/notification.svg',
                        colorFilter: const ColorFilter.mode(
                          Colors.white,
                          BlendMode.srcIn,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                const Text(
                  'Let\'s find\nyour top doctor',
                  style: TextStyle(
                    fontFamily: 'SFProDisplay',
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 20),
                TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(40),
                    ),
                    contentPadding: const EdgeInsets.all(15),
                    prefixIcon: Padding(
                      padding: const EdgeInsets.all(12),
                      child: SvgPicture.asset(
                        'assets/icons/search.svg',
                      ),
                    ),
                    hintText: 'Search Here',
                    hintStyle: TextStyle(
                      color: const Color(0xff09121C).withOpacity(0.5),
                      fontFamily: 'Roboto',
                      fontSize: 16,
                      fontWeight: FontWeight.w200,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
