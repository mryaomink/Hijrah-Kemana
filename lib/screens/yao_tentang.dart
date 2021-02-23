import 'package:flutter/material.dart';

class YaoTentang extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Padding(
        padding: const EdgeInsets.all(26.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              "https://firebasestorage.googleapis.com/v0/b/yaomink-events.appspot.com/o/up%20(2)%201.png?alt=media&token=2057e336-e38f-4138-a506-e62eaec6ddd4",
              fit: BoxFit.fitHeight,
              width: 192,
              height: 192,
            ),
            SizedBox(height: 20.0),
            Text(
              'Hijrah Kemana Adalah\nSebuah Web Yang memuat informasi tentang wisata religi\nseputaran kalimantan, yang mana menawarkan perjalanan sambil beribadah',
              style: TextStyle(fontSize: 26.0),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 60.0),
            FlatButton.icon(
              icon: Icon(
                Icons.arrow_back,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
              label: Text(
                'Kembali Ke Halaman Depan',
                style: TextStyle(fontSize: 26.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
