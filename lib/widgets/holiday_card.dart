import 'package:apptravel/style_theme.dart';
import 'package:apptravel/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:apptravel/models/holiday.dart';

class HolidayCard extends StatelessWidget {
  final Holiday? cardHoliday;
  //
  const HolidayCard({Key? key, this.cardHoliday}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          width: 250,
          height: 320,
          decoration: BoxDecoration(
            color: whiteColor,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      cardHoliday!.imageUrl!,
                      fit: BoxFit.fill,
                      width: 500,
                      height: 220,
                    ),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      width: 60,
                      height: 30,
                      decoration: BoxDecoration(
                        color: whiteColor,
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(19),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/star.png",
                            width: 24,
                          ),
                          const SizedBox(
                            width: 2,
                          ),
                          Text(
                            cardHoliday!.rating!.toString(),
                            style: TextStyle(
                              fontSize: 14,
                              color: darkColor,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                cardHoliday!.name!,
                style: subHeading,
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                cardHoliday!.nameCity!,
                style: labelText.copyWith(color: greyColor),
              )
            ],
          ),
        ),
      ],
    );
  }
}
