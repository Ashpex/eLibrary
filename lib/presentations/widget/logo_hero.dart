
import 'package:flutter/material.dart';

import '../../librarian/data/sources/constants.dart';

class HeroLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Hero(tag: "Logo", child: Image.asset(imagesPath + 'logo.png'));
  }
}
