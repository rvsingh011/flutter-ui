import 'package:flutter/material.dart';
import 'package:plant_ui/components/home/details/detail_page.dart';

import '../../constants.dart';
import 'bar_with_buttons.dart';
import 'featured_plants.dart';

class Recomended extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Column(
            children: [
              Column(
                children: [
                  Bar(
                    text: "Recommended",
                  ),
                  Rbody()
                ],
              )
            ],
          ),
          Featured(),
        ],
      ),
    );
  }
}

class Rbody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(maxHeight: 290, minHeight: 290),
      child: ListView.builder(
          itemCount: recomended.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Items(
                recomended[index]['name'],
                recomended[index]['country'],
                recomended[index]['price'],
                recomended[index]['image']);
          }),
    );
  }
}

class Items extends StatelessWidget {
  final String name, country, image;
  final int price;
  Items(this.name, this.country, this.price, this.image);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailScreen(),
          ),
        );
      },
      child: Container(
        width: size.width * 0.45,
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              // border: Border.all(width: 1, color: Colors.grey),
              boxShadow: [
                BoxShadow(
                    color: kPrimaryColor,
                    offset: Offset(0, 3),
                    blurRadius: 10,
                    spreadRadius: -4),
              ],
            ),
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                  child: Image(
                    alignment: Alignment.bottomCenter,
                    width: size.width * 0.45,
                    fit: BoxFit.cover,
                    image: AssetImage(
                      'assets/images/$image',
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 15, 10, 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "$name\n".toUpperCase(),
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  letterSpacing: 1),
                            ),
                            TextSpan(
                              text: "$country".toUpperCase(),
                              style: TextStyle(
                                  color: kPrimaryColor,
                                  fontSize: 12,
                                  height: 1.7,
                                  letterSpacing: 1),
                            ),
                          ],
                        ),
                      ),
                      Text(
                        "\$$price",
                        style: TextStyle(
                          color: kPrimaryColor,
                          fontSize: 15,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// class Bar extends StatelessWidget {
//   const Bar({
//     Key key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Flexible(
//       fit: FlexFit.tight,
//       child: Container(
//         padding: EdgeInsets.all(15),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Text(
//               "Recommended",
//               style: TextStyle(
//                   fontSize: 17,
//                   color: Colors.black,
//                   fontWeight: FontWeight.bold),
//             ),
//             Container(
//               alignment: Alignment.center,
//               height: 80,
//               width: 80,
//               child: Text("More"),
//               decoration: BoxDecoration(
//                   color: kPrimaryColor,
//                   borderRadius: BorderRadius.circular(20)),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
