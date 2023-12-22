import 'package:delivery_app/core/components/utils/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import '../widgets/app_text.dart';
import 'constants.dart';
import 'colors.dart';

Widget appButton(String text, double width, VoidCallback onPressed,
    Color btnColor, bool isLoading,
    [Color textColor = Colors.white, double fontSize = 22]) {
  return SizedBox(
    width: width,
    height: Constants.buttonHeight,
    child: CupertinoButton(
        disabledColor: !isLoading ? AppColors.grey : AppColors.primary,
        borderRadius: BorderRadius.circular(20),
        onPressed: isLoading ? null : onPressed,
        color: btnColor,
        child: !isLoading
            ? AppText(
                text: text,
                textAlign: TextAlign.start,
                fontSize: fontSize,
                color: textColor,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.bold)
            : const SpinKitThreeBounce(
                color: AppColors.white,
                size: 16,
              )),
  );
}

Widget appButtons(
    String text, double width, VoidCallback onPressed, Color btnColor,
    [Color textColor = Colors.white, double fontSize = 22]) {
  return SizedBox(
    width: width,
    height: Constants.buttonHeight,
    child: CupertinoButton(
        borderRadius: BorderRadius.circular(1),
        onPressed: onPressed,
        color: btnColor,
        child: AppText(
            text: text,
            textAlign: TextAlign.start,
            fontSize: fontSize,
            color: textColor,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.bold)),
  );
}

Widget appButton2(
    {required Widget child,
    required VoidCallback onPressed,
    Color? btnColor,
    BorderRadius? borderRadius,
    double? height,
    double? top,
    double? bottom,
    double? minWidth,
    BorderSide? borderSide}) {
  return MaterialButton(
    elevation: 0,
    onPressed: onPressed,
    height: height,
    minWidth: minWidth ?? double.infinity,
    color: btnColor ?? AppColors.primary,
    shape: RoundedRectangleBorder(
      side: borderSide ?? BorderSide.none,
      borderRadius: borderRadius ?? BorderRadius.circular(1),
    ),
    child: Padding(
      padding: EdgeInsets.only(top: top ?? 15, bottom: bottom ?? 15),
      child: child,
    ),
  );
}

Widget camButton(String text, double width, VoidCallback onPressed,
    Color btnColor, Color borderColor,
    [Color textColor = Colors.black, double fontSize = 24]) {
  return GestureDetector(
    onTap: onPressed,
    child: Container(
      width: width,
      height: Constants.buttonHeight / 2,
      decoration: BoxDecoration(
          color: btnColor,
          borderRadius: BorderRadius.circular(Constants.buttonHeight / 2),
          border: Border.all(
            color: borderColor,
          )),
      child: Center(
        child: AppText(
            text: text,
            textAlign: TextAlign.start,
            fontSize: fontSize,
            color: textColor,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.bold),
      ),
    ),
  );
}

// Widget appButtons(String text, double width, VoidCallback onPressed,
//     [Color textColor = Colors.black, double fontSize = 12]) {
//   return SizedBox(
//     width: width,
//     height: Constants.buttonHeight,
//     child: CupertinoButton(
//         borderRadius: BorderRadius.circular(Constants.buttonHeight / 2),
//         child: Text(text,
//             style: TextStyle(
//                 color: textColor,
//                 fontSize: fontSize,
//                 fontWeight: FontWeight.w600)),
//         onPressed: onPressed,
//         color: AppColors.primary),
//   );
// }

Widget appButtonBusiness(String text, double width, VoidCallback onPressed,
    [Color textColor = Colors.black, double fontSize = 24]) {
  return GestureDetector(
    onTap: onPressed,
    child: Container(
      width: width,
      height: Constants.buttonHeight,
      decoration: BoxDecoration(
        //color: AppColors.yellow,
        border: Border.all(color: AppColors.primary, width: 1),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Center(
        child: AppText(
            text: text,
            textAlign: TextAlign.start,
            fontSize: fontSize,
            color: textColor,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w700),
      ),
    ),
  );
}

Widget produceButton(
    String text, Color color, double width, VoidCallback onPressed,
    [Color textColor = Colors.white, double fontSize = 22]) {
  return SizedBox(
    width: width,
    height: Constants.buttonHeight,
    child: CupertinoButton(
      onPressed: onPressed,
      color: color,
      child: AppText(
          text: text,
          textAlign: TextAlign.start,
          fontSize: fontSize,
          color: textColor,
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.normal),
    ),
  );
}

Widget produceNoBgButton(
    String text, double width, Color textColor, VoidCallback onPressed) {
  return GestureDetector(
    onTap: () => onPressed(),
    child: SizedBox(
      width: width,
      height: Constants.buttonHeight,
      child: AppText(
          text: text,
          textAlign: TextAlign.center,
          fontSize: 22,
          color: textColor,
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.bold),
    ),
  );
}

Widget imageBack(
    String imgName, double width, double height, VoidCallback onPressed) {
  return GestureDetector(
    onTap: () => onPressed(),
    child: SizedBox(
      width: width,
      height: height,
      child: Image.asset(imgName),
    ),
  );
}

class Button extends StatelessWidget {
  final String text;
  final void Function() onPressed;
  final Color? btncolor;
  final Color? textcolor;
  final bool isLoading;
  const Button({
    super.key,
    required this.text,
    required this.onPressed,
    this.isLoading = false,
    this.btncolor = AppColors.primary,
    this.textcolor = AppColors.white,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: getScreenWidth(context),
        height: 52,
        child: Container(
          decoration: const BoxDecoration(
            boxShadow: <BoxShadow>[
              BoxShadow(
                color: Color.fromRGBO(0, 39, 166, 0.12),
                blurRadius: 20,
                offset: Offset(0, 17),
              ),
            ],
          ),
          child: MaterialButton(
            elevation: 0.5,
            height: 52,
            minWidth: 10,
            color: btncolor,
            onPressed: onPressed,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            child: !isLoading
                ? AppText(
                    text: text,
                    textAlign: TextAlign.center,
                    fontSize: 22,
                    color: AppColors.white,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.bold)
                : const SpinKitThreeBounce(
                    color: AppColors.white,
                    size: 16,
                  ),
          ),
        ));
  }
}

class ButtonSO extends StatelessWidget {
  final String text;
  final void Function() onPressed;
  final Color? btncolor;
  final Color? textcolor;
  final Color? borderColor;
  const ButtonSO(
      {super.key,
      this.btncolor = AppColors.lilac,
      this.textcolor = AppColors.white,
      this.borderColor = AppColors.white,
      required this.text,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: getScreenWidth(context),
      height: 52,
      child: OutlinedButton(
        style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          )),
          side: MaterialStateProperty.all(
              BorderSide(color: borderColor!, width: 1.0)),
        ),
        onPressed: onPressed,
        child: Center(
          child: AppText(
              text: text,
              textAlign: TextAlign.center,
              fontSize: 22,
              color: textcolor,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
