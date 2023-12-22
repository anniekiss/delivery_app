import 'package:delivery_app/core/components/utils/app_buttons.dart';
import 'package:delivery_app/core/components/utils/colors.dart';
import 'package:delivery_app/core/components/utils/helper_functions.dart';
import 'package:delivery_app/core/components/widgets/app_text.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: getScreenHeight(context) / 2.5,
                  decoration: const BoxDecoration(color: AppColors.lilac),
                ),
                Positioned(
                    top: 0,
                    right: 0,
                    child: Image.asset(
                      "assets/images/elicpse.png",
                      height: 400,
                      width: 205,
                    )),
                Positioned(
                  top: 50,
                  left: 10,
                  child: Image.asset(
                    "assets/images/logo.png",
                    height: 70,
                    width: 60,
                  ),
                ),
                Positioned(
                    bottom: -5,
                    child: Container(
                      height: 30,
                      width: MediaQuery.of(context).size.width,
                      decoration: const BoxDecoration(
                          color: AppColors.white,
                          border: Border.fromBorderSide(
                              BorderSide(color: AppColors.lilac, width: 1.5)),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20))),
                    ))
              ],
            ),
            addVerticalSpacing(context, 50),
            Center(
              child: Image.asset("assets/images/Icon.png"),
            ),
            addVerticalSpacing(context, 50),
            const Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AppText(
                        text: "Non-Contact Deliveries",
                        textAlign: TextAlign.center,
                        fontSize: 10,
                        color: AppColors.black,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.bold),
                    SizedBox(
                      height: 15,
                    ),
                    AppText(
                      text:
                          "When placing an order, select the option “Contactless delivery” and the courier will leave your order at the door.",
                      fontSize: 18,
                      fontStyle: FontStyle.normal,
                      textAlign: TextAlign.center,
                      fontWeight: FontWeight.w400,
                      color: AppColors.grey2,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: appButton("ORDER NOW", getScreenWidth(context), () {},
                  Color.fromRGBO(11, 206, 131, 1), false),
            ),
            const SizedBox(
              height: 10,
            ),
            const Center(
              child: AppText(
                  text: "DISMISS",
                  textAlign: TextAlign.center,
                  fontSize: 22,
                  color: AppColors.grey,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w400),
            ),
          ],
        ),
      ),
    );
  }
}
