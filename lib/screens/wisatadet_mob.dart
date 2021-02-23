import 'package:flutter/material.dart';
import 'package:hijrah_tour/widgets/paket_dua.dart';
import 'package:hijrah_tour/widgets/paket_satu.dart';
import 'package:hijrah_tour/widgets/paket_tiga.dart';

class WisataDetailsMob extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.black,
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 35.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 120,
                    height: 80,
                    alignment: Alignment.topCenter,
                    child: FlatButton.icon(
                      color: Colors.blue,
                      icon: Icon(Icons.arrow_back_rounded),
                      label: Text('Kembali'),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                  Container(
                    height: 600,
                    width: 300,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18.0),
                      gradient: LinearGradient(colors: [
                        Colors.deepPurple[300],
                        Colors.deepPurple[400],
                      ]),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(18.0),
                      child: CustomPaint(
                          painter: CardCustomPainter(),
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              PaketSatu(),
                            ],
                          )),
                    ),
                  ),
                  Divider(),
                  Container(
                    height: 600,
                    width: 300,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18.0),
                      gradient: LinearGradient(colors: [
                        Colors.deepPurple[600],
                        Colors.deepPurple[400],
                      ]),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(18.0),
                      child: CustomPaint(
                          painter: CardCustomPainter(),
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              PaketDua(),
                            ],
                          )),
                    ),
                  ),
                  Divider(),
                  Container(
                    height: 600,
                    width: 300,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18.0),
                      gradient: LinearGradient(colors: [
                        Colors.deepPurple[300],
                        Colors.deepPurple[700],
                      ]),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(18.0),
                      child: CustomPaint(
                          painter: CardCustomPainter(),
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              PaketTiga(),
                            ],
                          )),
                    ),
                  ),
                ],
              ),
            ),
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
