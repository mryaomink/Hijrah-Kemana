import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

import 'package:hijrah_tour/utilities/client_provider.dart';

final String getPostQuery = """
query
{
  posts(
    orderBy: createdAt_DESC
    ){
    judul
    desk
    gambar
    tempat
    info
  }
}
""";

class YaoExplore extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClientProvider(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back),
          ),
          title: Text(
            'Hijrah Kemana',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Query(
            options:
                QueryOptions(documentNode: gql(getPostQuery), pollInterval: 5),
            builder: (QueryResult result,
                {VoidCallback refetch, FetchMore fetchMore}) {
              if (result.exception != null) {
                return Center(
                  child: Text(
                    result.exception.toString(),
                    textAlign: TextAlign.center,
                  ),
                );
              }
              if (result.loading) {
                return Center(child: CircularProgressIndicator());
              }

              return ListView.builder(
                itemCount: result.data['posts'].length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width / 2,
                            height: 380,
                            child: CachedNetworkImage(
                                imageUrl: result.data['posts'][index]['gambar'],
                                fit: BoxFit.cover,
                                progressIndicatorBuilder:
                                    (context, url, progress) {
                                  return Container(
                                    height: 300,
                                    child: Center(
                                      child: CircularProgressIndicator(
                                        value: progress.progress,
                                      ),
                                    ),
                                  );
                                },
                                errorWidget: (context, url, error) {
                                  return Container(
                                    height: 300,
                                    child: Center(child: Icon(Icons.error)),
                                  );
                                }),
                          ),
                          Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 0, 15, 15),
                                  child: Text(
                                    result.data['posts'][index]['judul'],
                                    style: GoogleFonts.playfairDisplay(
                                        fontSize: 28.0, color: Colors.blue),
                                  ),
                                ),
                                Row(
                                  children: [
                                    Icon(CupertinoIcons.placemark),
                                    Text(
                                      result.data['posts'][index]['tempat'],
                                      style: GoogleFonts.roboto(
                                          fontSize: 14.0, color: Colors.black),
                                    ),
                                  ],
                                ),
                                Divider(
                                  height: 10,
                                  color: Colors.blue,
                                ),
                                Container(
                                  width: 400,
                                  child: Text(
                                    result.data['posts'][index]['desk'],
                                    style: GoogleFonts.roboto(
                                        fontSize: 16.0,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w300),
                                  ),
                                ),
                                Divider(
                                  height: 20,
                                  color: Colors.blue,
                                ),
                              ],
                            ),
                          )
                        ],
                      ));
                },
              );
            }),
      ),
    );
  }
}
