import 'package:flutter/material.dart';
import 'package:rail_me/core/Utilities/size_config.dart';
import 'constants.dart';

// Text railText(String sentence, double textSize, Color textColor) {
//   return Text(
//     sentence,
//     style: TextStyle(
//         fontSize: textSize,
//         color: textColor,
//         letterSpacing: -1,
//         fontFamily: "Brandon Grotesque"),
//   );
// }

// Image railImage({
//   String? theImage,
// }) =>
//     Image.asset(
//       "images/$theImage.png",
//     );

Text WelcomeText1(String displayText, double thesize) {
  return Text(
    displayText,
    style: TextStyle(
        color: Colors.black,
        fontFamily: kfontFamily,
        fontSize: getProportionateScreenWidth(thesize),
        fontWeight: FontWeight.bold),
  );
}

Text WelcomeText2(String longtext, double size2) {
  return Text(
    longtext,
    textAlign: TextAlign.center,
    style: TextStyle(
      color: Colors.black,
      fontSize: getProportionateScreenWidth(size2),
      fontFamily: kfontFamily,
    ),
  );
}

Text railText(String inputText, double textSize, Color textColor) {
  return Text(
    inputText,
    style: TextStyle(
      color: textColor,
      fontSize: getProportionateScreenWidth(textSize),
      fontWeight: FontWeight.bold,
      fontFamily: kfontFamily,
    ),
  );
}

class BackgroundImage extends StatelessWidget {
  final Widget child;
  final ImageProvider image;

  const BackgroundImage({Key? key, required this.image, required this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: image,
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              Colors.green.withOpacity(0.2),
              BlendMode.darken,
            ),
          ),
        ),
        child: child,
      );
}
