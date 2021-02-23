import 'package:flutter/material.dart';
import 'package:hijrah_tour/screens/wisatadet_mob.dart';
import 'package:hijrah_tour/views/wisatadet_desk.dart';
import 'package:responsive_builder/responsive_builder.dart';

class WisataDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.black,
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return ScreenTypeLayout(
            desktop: WisataDetailsDesk(),
            mobile: WisataDetailsMob(),
          );
        },
      ),
    );
  }
}

class YaTextOne extends StatelessWidget {
  final String listText;

  const YaTextOne({Key key, this.listText}) : super(key: key);

  @override
  Widget build(
    BuildContext context,
  ) {
    return Row(
      children: [
        Icon(
          Icons.check,
          size: 28.0,
          color: Colors.white,
        ),
        SizedBox(
          width: 5,
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(
            listText,
            style: TextStyle(
                fontSize: 16.0,
                color: Colors.black,
                fontWeight: FontWeight.w600),
          ),
        )
      ],
    );
  }
}

class CardCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = new Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;

    Path path = Path();
    path.moveTo(0, 0);
    path.lineTo(0, size.height * 0.32);
    path.quadraticBezierTo(size.width * 0.24, size.height * 0.45,
        size.width * 0.49, size.height * 0.45);
    path.quadraticBezierTo(
        size.width * 0.73, size.height * 0.45, size.width, size.height * 0.32);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
