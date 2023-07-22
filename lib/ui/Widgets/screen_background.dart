import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';

import '../utils/asset_utils.dart';

class ScreenBackground extends StatelessWidget {
  final Widget child;

  const ScreenBackground({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: SvgPicture.asset(
            AssetUtils.backgroundSVG,
            fit: BoxFit.cover,
          ),
        ),
        SafeArea(child: child),
      ],
    );
  }
}
