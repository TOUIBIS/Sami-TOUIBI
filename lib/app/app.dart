import 'package:stacked/stacked_annotations.dart';
import 'package:test_technique/ui/views/home/home_view.dart';
import 'package:test_technique/ui/views/startup/startup_view.dart';
@StackedApp(
  routes: [
    MaterialRoute(page: StartupView, initial: true,),
    MaterialRoute(page: HomeView),
  ],
)
class App {}