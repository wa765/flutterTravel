import 'package:apptravel/pages/saldo_bonus.dart';
import 'package:apptravel/style_theme.dart';
import 'package:apptravel/text_theme.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();

  // form method
  @override
  State CostumFormState() {
    return CostumFormState();
  }
}

class _SignUpState extends State<SignUp> {
  //
  final _formKey = GlobalKey<FormState>();
  //
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xffFAFAFA),
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          margin: const EdgeInsets.only(top: 30, left: 24, right: 24),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Join us and get \nyour next journey",
                  style: mainHeading,
                ),
                const SizedBox(
                  height: 30,
                ),
                Center(
                  child: Container(
                    padding: const EdgeInsets.only(
                        top: 30, left: 20, right: 20, bottom: 30),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      color: whiteColor,
                    ),
                    height: 590,
                    width: 500,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Full Name",
                          style: labelText,
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        Form(
                          key: _formKey,
                          child: TextFormField(
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Please input your name";
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                              contentPadding: const EdgeInsets.only(
                                  left: 20, top: 17, bottom: 17),
                              hintText: "Enter your full name",
                              hintStyle: TextStyle(
                                fontSize: 15,
                                color: greyColor,
                              ),
                              errorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(17),
                                borderSide: const BorderSide(
                                  color: Colors.red,
                                  width: 2,
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(17),
                                borderSide: BorderSide(
                                  color: greyColor,
                                  width: 2,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(17),
                                borderSide: BorderSide(
                                  color: purpleColor,
                                  width: 2,
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Email Address",
                          style: labelText,
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        TextFormField(
                          // validator email
                          keyboardType: TextInputType.emailAddress,
                          autofillHints: [AutofillHints.email],
                          decoration: InputDecoration(
                            contentPadding: const EdgeInsets.only(
                                left: 20, top: 17, bottom: 17),
                            hintText: "Enter your email address",
                            hintStyle: TextStyle(
                              fontSize: 15,
                              color: greyColor,
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(17),
                              borderSide: BorderSide(
                                color: greyColor,
                                width: 2,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(17),
                              borderSide: BorderSide(
                                color: purpleColor,
                                width: 2,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Password",
                          style: labelText,
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        TextFormField(
                          // Hidden Password
                          obscureText: true,
                          decoration: InputDecoration(
                            contentPadding: const EdgeInsets.only(
                                left: 20, top: 17, bottom: 17),
                            hintText: "Enter your password",
                            hintStyle: TextStyle(
                              fontSize: 15,
                              color: greyColor,
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(17),
                              borderSide: BorderSide(
                                color: greyColor,
                                width: 2,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(17),
                              borderSide: BorderSide(
                                color: purpleColor,
                                width: 2,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Hobby",
                          style: labelText,
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            contentPadding: const EdgeInsets.only(
                                left: 20, top: 17, bottom: 17),
                            hintText: "Enter your Hobby",
                            hintStyle: TextStyle(
                              fontSize: 15,
                              color: greyColor,
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(17),
                              borderSide: BorderSide(
                                color: greyColor,
                                width: 2,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(17),
                              borderSide: BorderSide(
                                color: purpleColor,
                                width: 2,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Container(
                          width: 580,
                          height: 55,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(17),
                              ),
                              primary: purpleColor,
                            ),
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                    content: Text("Processing Data"),
                                  ),
                                );
                                // saat mengisi name baru bisa get started
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const SaldoBonus()));
                              }
                            },
                            child: Text(
                              "Get Started",
                              style: subHeading.copyWith(color: whiteColor),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Center(
                  child: Text(
                    "Term and Conditions",
                    style: TextStyle(
                      color: greyColor,
                      fontSize: 16,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
