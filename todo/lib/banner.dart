import 'package:flutter/widgets.dart';
import 'package:flutter/services.dart';
import 'package:todo/env.dart';

class AppModeBanner extends StatelessWidget {
  /// Creates a const debug mode banner.
  const AppModeBanner({
    super.key,
    required this.child,
  });

  /// The widget to show behind the banner.
  ///
  /// {@macro flutter.widgets.ProxyWidget.child}
  final Widget child;

  @override
  Widget build(BuildContext context) {
    Widget result = child;
    // TODO [Allou] J'ai modifié ici pour récuperer les données depuis .env
    if (Env.appBanner.isNotEmpty) {
      result = Banner(
        message: Env.appBanner,
        textDirection: TextDirection.ltr,
        location: BannerLocation.topStart,
        child: result,
      );
    }
    return result;
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    String message = 'disabled';
    assert(() {
    // TODO [Allou] J'ai aussi modifié ici pour récuperer les données depuis .env
      message = '"${Env.appBanner}"';
      return true;
    }());
    properties.add(DiagnosticsNode.message(message));
  }
}
