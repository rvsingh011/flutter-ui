import 'package:flutter/material.dart';
import 'data.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(minHeight: 80, maxHeight: 90),
      child: Container(
        padding: EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Ravi Singh",
              style: TextStyle(
                fontSize: 24,
                shadows: [
                  Shadow(
                      color: Colors.grey, offset: Offset(6, 5), blurRadius: 10)
                ],
              ),
            ),
            Expanded(
              child: Stack(
                alignment: AlignmentDirectional.topEnd,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.15,
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.orange[800],
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey[700],
                            offset: Offset(4, 4),
                            blurRadius: 6),
                      ],
                    ),
                    child: Container(
                      alignment: Alignment.center,
                      child: Icon(
                        Icons.notifications,
                        size: 30,
                      ),
                      decoration: BoxDecoration(
                        color: Appcolors.primaryWhite,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
