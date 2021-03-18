import 'package:flutter_svg/flutter_svg.dart';

displaySvg(String rawSvg, { int width = 500 , int height = 500}) async {
  final DrawableRoot svgRoot = await svg.fromSvgString(rawSvg, rawSvg);
  return await svgRoot.toPicture().toImage(width, height);
}