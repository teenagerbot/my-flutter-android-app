
import 'package:flutter/cupertino.dart';

import '../dimensions.dart';

double getListBottomPadding(BuildContext context) {
  final safeBottomPadding = MediaQuery.of(context).padding.bottom;
  //расстояние SafeArea
  final bottomPadding = (safeBottomPadding + pad8) * 2 + s40;

  return bottomPadding;
}