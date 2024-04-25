
 import 'package:bit_math/utils/constants.dart';

double  getPaddingHeight(
  double screenWidth,
  double screenHeight,
){
  final screenAspectRatio = screenHeight/screenWidth;

  if(screenAspectRatio>gameAspectRatio){
    return screenHeight-(screenWidth*gameAspectRatio);
  }else{
    return 0;
  }
}