import 'package:apptravel/style_theme.dart';
import 'package:flutter/material.dart';

import '../models/holiday.dart';
import '../text_theme.dart';

class BoxHoliday extends StatelessWidget {
  //
  final Holiday holidayBox;
  //
  const BoxHoliday({Key? key, required this.holidayBox}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      width: MediaQuery.of(context).size.width,
      height: 90,
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Row(
        children: [
          ClipRRect(
            child: Image.asset(
              holidayBox.imageUrl!,
              fit: BoxFit.fill,
            ),
            borderRadius: BorderRadius.circular(18),
          ),
          const SizedBox(
            width: 16,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                holidayBox.name!,
                style: subHeading.copyWith(
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                holidayBox.nameCity!,
                style: labelText.copyWith(color: greyColor),
              ),
            ],
          ),
          const Spacer(),
          Row(
            children: [
              Image.asset(
                "assets/star.png",
                width: 22,
              ),
              const SizedBox(
                width: 8,
              ),
              Text(
                holidayBox.rating!.toString(),
                style: labelText,
              ),
              const SizedBox(
                width: 10,
              )
            ],
          )
        ],
      ),
    );
  }
}
