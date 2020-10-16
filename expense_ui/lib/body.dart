import 'package:flutter/material.dart';
import 'data.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(minHeight: 260, maxHeight: 270),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Appcolors.primaryWhite,
        ),
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                child: Container(
                  margin: EdgeInsets.all(20),
                  height: MediaQuery.of(context).size.height * 0.28,
                  width: MediaQuery.of(context).size.width * 0.90,
                  child: Card(),
                  decoration: BoxDecoration(
                      color: Appcolors.primaryWhite,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey,
                            offset: Offset(9, 7),
                            blurRadius: 5),
                        BoxShadow(
                            color: Colors.grey,
                            offset: Offset(4, -4),
                            blurRadius: 5)
                      ]),
                ),
              );
            }),
      ),
    );
  }
}

class Card extends StatelessWidget {
  const Card({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(30),
      child: Container(
        child: Stack(
          alignment: AlignmentDirectional.center,
          children: [
            Positioned(
              left: -100,
              child: Container(
                height: 350,
                width: 350,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white70,
                ),
              ),
            ),
            Positioned(
              top: 140,
              left: 0,
              child: Container(
                height: 350,
                width: 350,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white70,
                ),
              ),
            ),
            Positioned(
              left: 19,
              height: 200,
              child: Container(
                // padding: EdgeInsets.symmetric(vertical: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      'assets/master_card.png',
                      width: 200,
                    ),
                    Container(
                      height: 50,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "**** **** *****",
                                style: TextStyle(fontSize: 15),
                              ),
                              Text(
                                "1921",
                                style: TextStyle(fontSize: 20),
                              ),
                            ],
                          ),
                          Text(
                            "Ravi Singh",
                            style: TextStyle(fontSize: 20),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Positioned(
                right: 40,
                bottom: 20,
                child: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      color: Appcolors.primaryWhite,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey,
                            offset: Offset(4, 4),
                            blurRadius: 5)
                      ]),
                ))
          ],
        ),
      ),
    );
  }
}
