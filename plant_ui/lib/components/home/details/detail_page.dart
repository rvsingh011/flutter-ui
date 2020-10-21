import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:plant_ui/constants.dart';

class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Expanded(
          flex: 8,
          child: Row(
            children: [
              BackButton(),
              CoverImage(size: size),
            ],
          ),
        ),
        Expanded(
          flex: 3,
          child: Container(
            child: Column(
              children: [
                Expanded(
                  flex: 4,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                          child: Container(
                        padding: EdgeInsets.all(kDefaultPadding),
                        child: RichText(
                          text: TextSpan(
                            text: "Angelica\n",
                            style: GoogleFonts.workSans(
                                textStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 35,
                              letterSpacing: 1.3,
                            )),
                            children: [
                              TextSpan(
                                text: "Russia",
                                style: TextStyle(
                                    color: kPrimaryColor,
                                    fontSize: 20,
                                    letterSpacing: 0.5),
                              )
                            ],
                          ),
                        ),
                      )),
                      Expanded(
                          child: Container(
                        padding: EdgeInsets.all(kDefaultPadding),
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            "\$400",
                            style:
                                TextStyle(color: kPrimaryColor, fontSize: 30),
                          ),
                        ),
                      ))
                    ],
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Row(
                    children: [
                      BuyNowButton(),
                      DescriptionButton(),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class CoverImage extends StatelessWidget {
  const CoverImage({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width * 0.75,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30), bottomLeft: Radius.circular(30)),
        image: DecorationImage(
          alignment: Alignment.centerLeft,
          image: AssetImage(
            'assets/images/img.png',
          ),
          fit: BoxFit.cover,
        ),
        color: Colors.black,
      ),
    );
  }
}

class BackButton extends StatelessWidget {
  const BackButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SafeArea(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(left: 20, right: 40),
              margin: EdgeInsets.only(top: 40),
              child: IconButton(
                icon: SvgPicture.asset('assets/icons/back_arrow.svg'),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 4,
                itemBuilder: (context, index) {
                  return Buttons(
                    index: index,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DescriptionButton extends StatelessWidget {
  const DescriptionButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: Center(
            child: Text(
          'Description',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            letterSpacing: 1,
          ),
        )),
        decoration: BoxDecoration(
            // color: kPrimaryColor,
            borderRadius: BorderRadius.only(topRight: Radius.circular(30))),
      ),
    );
  }
}

class BuyNowButton extends StatelessWidget {
  const BuyNowButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: Center(
            child: Text(
          'Buy Now',
          style: TextStyle(
            fontSize: 20,
            letterSpacing: 1.5,
          ),
        )),
        decoration: BoxDecoration(
            color: kPrimaryColor,
            borderRadius: BorderRadius.only(topRight: Radius.circular(30))),
      ),
    );
  }
}

class Buttons extends StatelessWidget {
  final int index;
  const Buttons({Key key, @required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20, right: 30),
      margin: EdgeInsets.only(top: 40),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15),
            bottomLeft: Radius.circular(15),
          ),
          color: Colors.white,
          boxShadow: [
            BoxShadow(offset: Offset(3, 3), color: Colors.grey, blurRadius: 10),
          ],
        ),
        child: IconButton(
            icon: SvgPicture.asset('assets/icons/${images[index]}'),
            onPressed: () {}),
      ),
    );
  }
}
