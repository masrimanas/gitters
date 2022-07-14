import 'package:gitters/app/app.dart';
import 'package:gitters/bootstrap.dart';
import 'package:gitters/injection.dart' as di;

void main() {
  di.init();
  bootstrap(() => const App());
  // runApp(const App());
}
