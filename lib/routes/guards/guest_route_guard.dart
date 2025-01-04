import 'package:flutter_app/resources/pages/dashboard_page.dart';
import 'package:nylo_framework/nylo_framework.dart';

/* Guest Route Guard
|-------------------------------------------------------------------------- */

class GuestRouteGuard extends NyRouteGuard {
  GuestRouteGuard();

  @override
  onRequest(PageRequest pageRequest) async {

    bool isLoggedIn = (await Auth.isAuthenticated());
    if (isLoggedIn) {
       return redirect(DashboardPage.path);
    }

    return pageRequest;
  }
}
