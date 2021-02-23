import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hijrah_tour/widgets/header_rectleft.dart';
import 'package:hijrah_tour/widgets/yao_wisata.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:url_launcher/url_launcher.dart';

class YaominkHomeDesk extends StatelessWidget {
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
                width: constraints.maxWidth,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
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
                        height: 900.0,
                        child: HeaderRectLeft(),
                      ),
                      Positioned(
                          width: MediaQuery.of(context).size.width / 1.3,
                          height: 300,
                          child: YaoWisata()),
                      Positioned(
                        left: 40.0,
                        top: 20.0,
                        right: null,
                        bottom: null,
                        width: 395.0,
                        height: 500.0,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Hijrah Kemana ?",
                              style: GoogleFonts.merriweatherSans(
                                fontSize: 42.0,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                              overflow: TextOverflow.visible,
                            ),
                            Text(
                              "wisata religi sekitaran pulau Kalimantan waktu santai jadi\nBermanfaat dan Berpahala.",
                              style: GoogleFonts.poppins(
                                  fontSize: 22.0,
                                  fontWeight: FontWeight.w300,
                                  color: Colors.black),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              width: 174.0,
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
                      Positioned(
                        left: 750.0,
                        top: 13.0,
                        right: null,
                        bottom: null,
                        width: 542.0,
                        height: 182.0,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Dengan Tim Dokumentasi\nyang handal Wisata\nAkan Jadi Lebih Asyik",
                            style: GoogleFonts.poppins(
                                fontSize: 18.0,
                                fontWeight: FontWeight.w300,
                                color: Colors.black),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 920,
                        top: 250.0,
                        right: null,
                        bottom: null,
                        width: 542.0,
                        height: 182.0,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Explore Dunia Islami dengan\nTujuan Ibadah",
                            style: GoogleFonts.poppins(
                                fontSize: 18.0,
                                fontWeight: FontWeight.w300,
                                color: Colors.black),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 870,
                        top: 320.0,
                        right: null,
                        bottom: null,
                        width: 542.0,
                        height: 182.0,
                        child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: FadeInImage.memoryNetwork(
                              image:
                                  'https://image.freepik.com/free-vector/alone-concept-illustration_114360-2393.jpg',
                              placeholder: kTransparentImage,
                            )),
                      ),
                      Positioned(
                        right: null,
                        top: null,
                        left: 450,
                        bottom: 50,
                        width: 118.0,
                        height: 50.0,
                        child: FlatButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          color: Color(0xff21A0D7),
                          hoverColor: Colors.white,
                          child: Text(
                            "Tentang Kami",
                            style: GoogleFonts.poppins(
                                fontSize: 14.0,
                                color: Colors.black,
                                fontWeight: FontWeight.w400),
                          ),
                          onPressed: () {
                            Navigator.pushNamed(context, '/tentang');
                          },
                        ),
                      ),
                      Positioned(
                        right: null,
                        top: null,
                        left: 300,
                        bottom: 50,
                        width: 118.0,
                        height: 50.0,
                        child: FlatButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          color: Color(0xff21A0D7),
                          hoverColor: Colors.white,
                          child: Text(
                            "Detail Paket",
                            style: GoogleFonts.poppins(
                                fontSize: 14.0,
                                color: Colors.black,
                                fontWeight: FontWeight.w400),
                          ),
                          onPressed: () {
                            Navigator.pushNamed(context, '/paket');
                          },
                        ),
                      ),
                      Positioned(
                        right: null,
                        top: null,
                        left: 150,
                        bottom: 50,
                        width: 118.0,
                        height: 50.0,
                        child: FlatButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          color: Color(0xff21A0D7),
                          hoverColor: Colors.white,
                          child: Text(
                            "Explore",
                            style: GoogleFonts.poppins(
                                fontSize: 16.0,
                                color: Colors.black,
                                fontWeight: FontWeight.w400),
                          ),
                          onPressed: () {
                            Navigator.pushNamed(context, '/places');
                          },
                        ),
                      ),
                    ],
                  ),
                ),
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
