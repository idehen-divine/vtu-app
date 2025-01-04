import '/resources/pages/dashboard_page.dart';
import 'package:flutter_app/routes/guards/guest_route_guard.dart';

import '../resources/pages/auths/register_page.dart';
import '../resources/pages/auths/login_page.dart';
import '../resources/pages/errors/not_found_page.dart';
import '/resources/pages/home_page.dart';
import 'package:nylo_framework/nylo_framework.dart';

/* App Router
|--------------------------------------------------------------------------
| * [Tip] Create pages faster 🚀
| Run the below in the terminal to create new a page.
| "dart run nylo_framework:main make:page profile_page"
|
| * [Tip] Add authentication 🔑
| Run the below in the terminal to add authentication to your project.
| "dart run scaffold_ui:main auth"
|
| Learn more https://nylo.dev/docs/6.x/router
|-------------------------------------------------------------------------- */

appRouter() => nyRoutes((router) {
      router.group(
          () => {
                "route_guards": [GuestRouteGuard()],
              }, (router) {
        router.add(LoginPage.path).initialRoute();
        router.add(RegisterPage.path);
      });
      router.add(HomePage.path);
      router.add(NotFoundPage.path).unknownRoute();
      router.add(DashboardPage.path);
    });
