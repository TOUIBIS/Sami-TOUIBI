import 'package:stacked/stacked_annotations.dart';
import 'package:test_technique/ui/views/home/home_view.dart';
import 'package:test_technique/ui/views/home1/home1_view.dart';
import 'package:test_technique/ui/views/login/login_view.dart';
import 'package:test_technique/ui/views/signup/signup_view.dart';
import 'package:test_technique/ui/views/upload/upload_view.dart';
@StackedApp(
  routes: [
    MaterialRoute(page: LoginView, initial: true,),
    MaterialRoute(page: SignUpView),
    MaterialRoute(page: HomeView),
    MaterialRoute(page: Home1View),
    MaterialRoute(page: UploadView),
  ],
)
class App {}