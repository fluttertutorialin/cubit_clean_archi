import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../core/extensions/extensions.dart';
import '../../../core/localization/localization.dart';
import '../../../core/router/router_path.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: SafeArea(
                child: Column(children: [
      const SizedBox(height: 12),
      Padding(
          padding: const EdgeInsets.all(12.0),
          child: Text(Strings.of(context)!.returnLabel.toUpperCase(),
              style: context.headerLine4Context!.copyWith(fontSize: 14))),
      const Divider(height: 1),
      const SizedBox(height: 8),
      Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Card(
                child: InkWell(
                    onTap: () {
                      context.goNamed(RouterPath.returnScanner,
                          extra:
                              '${Strings.of(context)!.amazonReturnType.toUpperCase()} ${Strings.of(context)!.returnLabel.toUpperCase()}');
                    },
                    child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: SizedBox(
                          width: 130,
                          child: Column(children: [
                            Text(Strings.of(context)!.amazonReturnType.toUpperCase(),
                                style: context.headerLine6Context),
                            Text(Strings.of(context)!.returnLabel.toUpperCase(),
                                style: context.headerLine1Context)
                          ]),
                        )))),
            const SizedBox(width: 12),
            Card(
                child: InkWell(
                    onTap: () {
                      context.goNamed(RouterPath.returnScanner,
                          extra:
                              '${Strings.of(context)!.blueDartReturn.toUpperCase()} ${Strings.of(context)!.returnLabel.toUpperCase()}');
                    },
                    child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: SizedBox(
                            width: 130,
                            child: Column(children: [
                              Text(Strings.of(context)!.blueDartReturn.toUpperCase(),
                                  style: context.headerLine6Context),
                              Text(Strings.of(context)!.returnLabel.toUpperCase(),
                                  style: context.headerLine1Context)
                            ])))))
          ]),
      const SizedBox(height: 12),
      Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Card(
                child: InkWell(
                    onTap: () {
                      context.goNamed(RouterPath.returnScanner,
                          extra:
                              '${Strings.of(context)!.deliveryReturn.toUpperCase()} ${Strings.of(context)!.returnLabel.toUpperCase()}');
                    },
                    child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: SizedBox(
                          width: 130,
                          child: Column(children: [
                            Text(Strings.of(context)!.deliveryReturn.toUpperCase(),
                                style: context.headerLine6Context),
                            Text(Strings.of(context)!.returnLabel.toUpperCase(),
                                style: context.headerLine1Context)
                          ]),
                        ))))
          ]),
      //PROCUREMENT
      const SizedBox(height: 20),
      Padding(
          padding: const EdgeInsets.all(12.0),
          child: Text(Strings.of(context)!.procurementReturnLabel.toUpperCase(),
              style: context.headerLine4Context!.copyWith(fontSize: 14))),
      const Divider(height: 1),
      const SizedBox(height: 8),
      Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Card(
                child: InkWell(
                    onTap: () {
                      context.goNamed(RouterPath.returnScanner,
                          extra:
                              '${Strings.of(context)!.procurementReturn.toUpperCase()} ${Strings.of(context)!.returnLabel.toUpperCase()}');
                    },
                    child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: SizedBox(
                          width: 200,
                          child: Column(children: [
                            Text(Strings.of(context)!.procurementReturn.toUpperCase(),
                                style: context.headerLine6Context),
                            Text(Strings.of(context)!.returnLabel.toUpperCase(),
                                style: context.headerLine1Context)
                          ]),
                        ))))
          ])
    ]))));
  }
}
