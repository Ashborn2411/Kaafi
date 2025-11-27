import '../feature/screens/shop/account/widget/orderlist/pages/allscreen.dart';
import '../feature/screens/shop/account/widget/orderlist/pages/cancelledscreen.dart';
import '../feature/screens/shop/account/widget/orderlist/pages/confirmscreen.dart';
import '../feature/screens/shop/account/widget/orderlist/pages/delivered.dart';
import '../feature/screens/shop/account/widget/orderlist/pages/dispatched.dart';
import '../feature/screens/shop/account/widget/orderlist/pages/inspection.dart';
import '../feature/screens/shop/account/widget/orderlist/pages/placescreen.dart';
import '../feature/screens/shop/account/widget/orderlist/pages/readytodispatch.dart';
import '../feature/screens/shop/account/widget/orderlist/pages/retrunscreen.dart';

class TabScreens {
  static const tabScreen = [
    AllScreen(),
    PlacedScreen(),
    ConfirmedScreen(),
    Readytodispatch(),
    DispatchedScreen(),
    Deliverd(),
    InspectionScreen(),
    ReturnScreens(),
    Cancelled(),
  ];
}
