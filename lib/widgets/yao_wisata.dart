import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:url_launcher/url_launcher.dart';

class YaoWisata extends StatelessWidget {
  final List<String> _imgUrl = [
    "https://images.unsplash.com/photo-1537181534458-45dcee76ae90?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=564&q=80",
    "https://images.unsplash.com/photo-1527838832700-5059252407fa?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=643&q=80",
    "https://images.unsplash.com/photo-1590092794015-bce5431c83f4?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=999&q=80",
    "https://images.unsplash.com/photo-1601191362988-ac6ebec629c8?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=675&q=80",
    "https://images.unsplash.com/photo-1593117579800-806d62306514?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1136&q=80",
    "https://images.unsplash.com/photo-1566816874952-efe670a52a9a?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80",
  ];

  @override
  Widget build(BuildContext context) {
    const String toLaunch = 'https://wa.me/6285252742437';
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0),
          child: Container(
            width: MediaQuery.of(context).size.width / 1.2,
            height: 520,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(14.0),
              child: CarouselSlider(
                options: CarouselOptions(
                    aspectRatio: 16 / 9,
                    height: 450,
                    initialPage: 0,
                    enlargeCenterPage: true,
                    scrollDirection: Axis.vertical,
                    autoPlay: true,
                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                    autoPlayCurve: Curves.easeInOutBack,
                    enableInfiniteScroll: true),
                items: _imgUrl
                    .map(
                      (item) => Container(
                        child: Center(
                            child: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: FadeInImage.memoryNetwork(
                            image: item,
                            fit: BoxFit.cover,
                            placeholder: kTransparentImage,
                            width: 500,
                          ),
                        )),
                      ),
                    )
                    .toList(),
              ),
            ),
          ),
        ),
        Positioned(
          top: 65,
          bottom: null,
          right: null,
          left: 5,
          child: Text(
              'Jalan-Jalan Sambil Beribadah\nBersama Keluarga ataupun\nBersama Rombongan\nDengan Tujuan meencari Pahala'),
        ),
        Positioned(
          bottom: null,
          left: 5,
          right: null,
          top: 200,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Kami Juga Menerima layanan B2B\nuntuk jasa transport",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w300, color: Colors.black),
              ),
              RaisedButton(
                onPressed: () {
                  _launchInWebViewWithJavaScript(toLaunch);
                },
                child: Text('Contact Us'),
                color: Colors.blue,
              )
            ],
          ),
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
