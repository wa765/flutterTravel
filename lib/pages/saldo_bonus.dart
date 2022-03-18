import 'package:apptravel/pages/home_screen.dart';
import 'package:apptravel/style_theme.dart';
import 'package:apptravel/text_theme.dart';
import 'package:flutter/material.dart';

class SaldoBonus extends StatefulWidget {
  const SaldoBonus({Key? key}) : super(key: key);

  @override
  State<SaldoBonus> createState() => _SaldoBonusState();
}

class _SaldoBonusState extends State<SaldoBonus> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFAFAFA),
      body: SafeArea(
        child: Container(
          margin:
              const EdgeInsets.only(top: 150, left: 37, right: 37, bottom: 150),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                children: [
                  Container(
                    padding: const EdgeInsets.all(24),
                    height: 211,
                    width: 600,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color(0xff5547E6),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0xff3F32B2).withOpacity(0.2),
                          spreadRadius: 2,
                          blurRadius: 30,
                          offset:
                              const Offset(0, 9), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Name",
                                  style: labelText.copyWith(color: whiteColor),
                                ),
                                Text(
                                  "Jarwo Tejo",
                                  style: subHeading.copyWith(
                                    fontSize: 20,
                                    color: whiteColor,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Image.asset(
                                  "assets/logo.png",
                                  width: 30,
                                ),
                                const SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  "Pay",
                                  style: paragraph.copyWith(
                                      color: whiteColor,
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const Spacer(),
                        Text(
                          "Balance",
                          style: labelText.copyWith(
                            color: whiteColor,
                          ),
                        ),
                        Text(
                          "IDR 280.000.000",
                          style: mainHeading.copyWith(color: whiteColor),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              Text(
                "Big Bonus 🎉",
                style: mainHeading.copyWith(fontSize: 32),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "We give you early credit so that \nyou can buy a flight ticket",
                style: paragraph.copyWith(),
                textAlign: TextAlign.center,
              ),
              const Spacer(),
              Container(
                width: 220,
                height: 55,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: purpleColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(17),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomePage()));
                  },
                  child: Text(
                    "Start Fly Now",
                    style: subHeading.copyWith(color: whiteColor),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
