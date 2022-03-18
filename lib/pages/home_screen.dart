import 'package:apptravel/models/holiday.dart';
import 'package:apptravel/style_theme.dart';
import 'package:apptravel/text_theme.dart';
import 'package:apptravel/widgets/holiday_box.dart';
import 'package:apptravel/widgets/holiday_card.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFAFAFA),
      body: SafeArea(
        top: true,
        bottom: false,
        child: Container(
          margin: const EdgeInsets.only(
            top: 30,
            left: 24,
            right: 24,
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text(
                          "Howdy , \nWahyu Rizqy",
                          style: mainHeading,
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        Text(
                          "Where to fly today",
                          style: paragraph,
                        ),
                      ],
                    ),
                    Image.asset(
                      "assets/avatar.png",
                      width: 80,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  height: 320,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      HolidayCard(
                        cardHoliday: Holiday(
                            id: 1,
                            name: "Lake Ciliwung",
                            rating: 4.8,
                            imageUrl: "assets/holiday_1.png",
                            nameCity: "Tangerang"),
                      ),
                      const SizedBox(
                        width: 24,
                      ),
                      HolidayCard(
                        cardHoliday: Holiday(
                            id: 2,
                            name: "Rumah Impiann",
                            rating: 9.0,
                            imageUrl: "assets/holiday_2.png",
                            nameCity: "Kudus"),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Text(
                  "New This Year",
                  style: subHeading,
                ),
                const SizedBox(
                  height: 16,
                ),
                Container(
                  child: BoxHoliday(
                    holidayBox: Holiday(
                        id: 1,
                        name: "Danau Beratan",
                        rating: 4.8,
                        imageUrl: "assets/danau.png",
                        nameCity: "Singaraja"),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Container(
                  child: BoxHoliday(
                    holidayBox: Holiday(
                        id: 2,
                        name: "Sydney Opera",
                        rating: 9.8,
                        imageUrl: "assets/australia.png",
                        nameCity: "Australia"),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Container(
                  child: BoxHoliday(
                    holidayBox: Holiday(
                        id: 1,
                        name: "Roma",
                        rating: 9.9,
                        imageUrl: "assets/roma.png",
                        nameCity: "Italy"),
                  ),
                ),
                const SizedBox(
                  height: 24,
                )
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.only(left: 10, right: 10, bottom: 30, top: 5),
        decoration: const BoxDecoration(),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(18),
          child: BottomNavigationBar(
            showSelectedLabels: false,
            showUnselectedLabels: false,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                backgroundColor: whiteColor,
                icon: const ImageIcon(
                  AssetImage("assets/fi_globe.png"),
                  color: Color(0xff5C40CC),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(
                  const AssetImage("assets/fi_book-open.png"),
                  color: greyColor,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(
                  const AssetImage("assets/fi_credit-card.png"),
                  color: greyColor,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(
                  const AssetImage("assets/fi_settings.png"),
                  color: greyColor,
                ),
                label: '',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
