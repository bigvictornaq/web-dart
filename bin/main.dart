import 'dart:io';
import 'package:angel_framework/angel_framework.dart';
import 'package:fz_res/fz_res.dart' as fz_res;
import 'package:angel_framework/http.dart';
import 'package:angel_hot/angel_hot.dart';

void main(List<String> arguments) async {
  var hot = HotReloader(() {
    var app = Angel();
    app.get('/', (req, res) => res.write('semedo'));
    return app;
  }, [Directory('lib')]);

  var http = await hot.startServer('localhost', 3000);
  print(
      'simple_blog_cms server listening at http://${http.address.address}:${http.port}');
}
