import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hijrah_tour/widgets/header_rectleft.dart';
import 'package:url_launcher/url_launcher.dart';

class YaominkHomeMob extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const String toLaunch = 'https://wa.me/6285252742437';
    return Material(
      color: Colors.white,
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return ListView(
            children: [
              Container(
                width: constraints.maxHeight,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 1.4,
                  child: Stack(
                    overflow: Overflow.visible,
                    alignment: Alignment.center,
                    children: [
                      Positioned(
                        left: 0.0,
                        top: 0.0,
                        right: null,
                        bottom: null,
                        width: 712.0,
                        height: 800.0,
                        child: HeaderRectLeft(),
                      ),
                      // Positioned(
                      //     top: 100,
                      //     width: MediaQuery.of(context).size.width / 1.3,
                      //     height: 428,
                      //     child: YaoWisata()),
                      Padding(
                        padding: const EdgeInsets.all(24.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "Hijrah Kemana ?",
                              style: GoogleFonts.merriweatherSans(
                                fontSize: 34.0,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                              overflow: TextOverflow.visible,
                            ),
                            Text(
                              "wisata religi sekitaran pulau\nKalimantan waktu santai jadi\nBermanfaat dan Berpahala.",
                              style: GoogleFonts.poppins(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Container(
                              width: 150.0,
                              height: 30.0,
                              child: FlatButton(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                color: Color(0xff21A0D7),
                                hoverColor: Colors.white,
                                child: Text(
                                  "Yuk Hijrah",
                                  style: TextStyle(
                                      fontSize: 19.0,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600),
                                ),
                                onPressed: () =>
                                    _launchInWebViewWithJavaScript(toLaunch),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 30,
                    width: 140,
                    child: FlatButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      color: Color(0xff21A0D7),
                      hoverColor: Colors.white,
                      child: Text(
                        "Explore",
                        style: GoogleFonts.poppins(
                            fontSize: 19.0,
                            color: Colors.black,
                            fontWeight: FontWeight.w400),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/places');
                      },
                    ),
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  Container(
                    height: 30,
                    width: 140,
                    child: FlatButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      color: Color(0xff21A0D7).withOpacity(0.60),
                      hoverColor: Colors.white,
                      child: Text(
                        "Tentang Kami",
                        style: GoogleFonts.poppins(
                            fontSize: 16.0,
                            color: Colors.black,
                            fontWeight: FontWeight.w400),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/tentang');
                      },
                    ),
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  Container(
                    width: 140,
                    height: 30,
                    child: FlatButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      color: Color(0xff21A0D7),
                      hoverColor: Colors.white,
                      child: Text(
                        "Detail Paket",
                        style: GoogleFonts.poppins(
                            fontSize: 16.0,
                            color: Colors.black,
                            fontWeight: FontWeight.w400),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/paket');
                      },
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                ],
              ),
            ],
          );
        },
      ),
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
