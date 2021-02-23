import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

String uuidFromObject(Object object) {
  if (object is Map<String, Object>) {
    final String typeName = object['__typename'] as String;
    final String id = object['id'].toString();
    if (typeName != null && id != null) {
      return <String>[typeName, id].join('/');
    }
  }
  return null;
}

final OptimisticCache cache = OptimisticCache(
  dataIdFromObject: uuidFromObject,
);

Link link =
    HttpLink(uri: 'https://yaominkapp1613276601066.microgen.mejik.id/graphql');

final client =
    ValueNotifier<GraphQLClient>(GraphQLClient(cache: cache, link: link));

class ClientProvider extends StatelessWidget {
  final Widget child;

  const ClientProvider({Key key, this.child}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GraphQLProvider(
      client: client,
      child: child,
    );
  }
}
