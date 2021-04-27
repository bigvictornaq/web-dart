import 'package:angel_framework/angel_framework.dart';
import 'package:file/local.dart';

import 'config/templating.dart' as templating;
import 'routes/articles.dart' as routea;

Future configureServer(Angel app) async {
  var fs = const LocalFileSystem();

  await app.configure(templating.configureServer(fs));
  await app.configure(routea.configureServer());
}
