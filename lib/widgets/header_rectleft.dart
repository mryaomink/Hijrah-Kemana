import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

class HeaderRectLeft extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 712.0,
        height: 900.0,
        decoration: BoxDecoration(
          color: Color(0xff21A0D7),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(0.0),
            topRight: Radius.circular(30.0),
            bottomRight: Radius.circular(30.0),
            bottomLeft: Radius.circular(0.0),
          ),
          boxShadow: [
            BoxShadow(
              color: Color.fromARGB(63, 0, 0, 0),
              offset: Offset(6.0, 4.0),
              blurRadius: 1.0,
            )
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(0.0),
            topRight: Radius.circular(30.0),
            bottomRight: Radius.circular(30.0),
            bottomLeft: Radius.circular(0.0),
          ),
          child: FadeInImage.memoryNetwork(
            image:
                "https://images.unsplash.com/photo-1570206916435-745fc43bb9c1?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80",
            placeholder: kTransparentImage,
            fit: BoxFit.fitHeight,
          ),
        ));
  }
}
