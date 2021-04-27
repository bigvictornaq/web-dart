import 'dart:io';
import 'package:angel_framework/angel_framework.dart';
import 'package:fz_res/fz_res.dart' as fz_res;

import 'package:angel_hot/angel_hot.dart';

void main(List<String> arguments) async {
  var hot = HotReloader(() async {
    var app = Angel();
    await app.configure(fz_res.configureServer);
    return app;
  }, [Directory('lib')]);

  var http = await hot.startServer('localhost', 3000);
  print(
      'simple_blog_cms server listening at http://${http.address.address}:${http.port}');
}
