import 'package:angel_framework/angel_framework.dart';
import 'routes/articles.dart' as routea;

Future configureServer(Angel app) async {
  await app.configure(routea.configureServer());
}
