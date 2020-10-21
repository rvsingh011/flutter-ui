import 'package:flutter/material.dart';

import '../../constants.dart';
import 'bar_with_buttons.dart';

class Featured extends StatelessWidget {
  const Featured({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Bar(
          text: "Featured Plants",
        ),
        FeaturedBody(),
      ],
    );
  }
}

class FeaturedBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ConstrainedBox(
      constraints: BoxConstraints(
        maxHeight: 300,
        minHeight: 300,
      ),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: bottomImages.length,
        itemBuilder: (context, index) {
          var imageName = bottomImages[index];
          return Container(
            padding: EdgeInsets.fromLTRB(10, 20, 10, 30),
            child: Container(
              // height: size.height * 0.,
              width: size.width * 0.8,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.blue,
              ),
              child: Image.asset(
                'assets/images/$imageName',
                fit: BoxFit.fill,
              ),
            ),
          );
        },
      ),
    );
  }
}
