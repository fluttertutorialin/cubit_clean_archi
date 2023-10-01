import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../../core/constants/constants.dart';
import '../../../core/extensions/extensions.dart';
import '../../../core/localization/localization.dart';

class ListViewEmptyWidget extends StatelessWidget {
  const ListViewEmptyWidget({super.key});

  @override
  Widget build(BuildContext context) => MergeSemantics(
          child: Stack(children: [
        Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Lottie.asset(AssetLottieConstant.emptyLottie),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(Strings.of(context)!.noDataLabel, style: context.labelNoNavigationFormTextStyle)
          ])
        ]),
        ListView()
      ]));
}
