import 'package:flutter/material.dart';

import 'extended_appbar.dart';
import 'recomended_plants.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          BodyHeader(),
          Recomended(),
        ],
      ),
    );
  }
}
