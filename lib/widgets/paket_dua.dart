import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hijrah_tour/screens/wisata_details.dart';
import 'package:url_launcher/url_launcher.dart';

class PaketDua extends StatelessWidget {
  const PaketDua({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const String toLaunch = 'https://wa.me/6285252742437';
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.network(
          "https://firebasestorage.googleapis.com/v0/b/yaomink-events.appspot.com/o/up%20(2)%201.png?alt=media&token=2057e336-e38f-4138-a506-e62eaec6ddd4",
          fit: BoxFit.fitHeight,
          width: 400,
          height: 150,
        ),
        SizedBox(height: 20.0),
        Text('Rp4.600.000',
            style: GoogleFonts.poppins(
                fontSize: 26.0,
                color: Colors.black,
                fontWeight: FontWeight.bold)),
        YaTextOne(
          listText: "Min 30-34 Orang",
        ),
        YaTextOne(
          listText: "Tiket Pesawat PP",
        ),
        YaTextOne(
          listText: "Antar Jemput Bandara",
        ),
        YaTextOne(
          listText: "Transportasi Full AC",
        ),
        YaTextOne(
          listText: "Snack & Air Mineral",
        ),
        YaTextOne(
          listText: "Penginapan Hotel",
        ),
        YaTextOne(
          listText: "Tour Leader",
        ),
        YaTextOne(
          listText: "Baju Tour",
        ),
        YaTextOne(
          listText: "Dokumentasi",
        ),
        FlatButton.icon(
          color: Colors.blue,
          icon: Icon(
            Icons.payments,
          ),
          onPressed: () {
            _launchInWebViewWithJavaScript(toLaunch);
          },
          label: Text('Pesan Sekarang'),
        ),
      ],
    );
  }

  Future<void> _launchInWebViewWithJavaScript(String url) async {
    if (await canLaunch(url)) {
      await launch(
        url,
        forceSafariVC: true,
        forceWebView: true,
        enableJavaScript: true,
      );
    } else {
      throw 'Could not launch $url';
    }
  }
}
