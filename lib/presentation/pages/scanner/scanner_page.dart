import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

import '../../../core/localization/localization.dart';
import '../../../core/theme/color.dart';
import '../../cubits/return/return_cubits.dart';
import '../../widgets/components/components.dart';

class ScannerPage extends StatefulWidget {
  final String? argument;

  const ScannerPage(this.argument, {super.key});

  @override
  createState() => _ScannerPageState();
}

class _ScannerPageState extends State<ScannerPage>
    with SingleTickerProviderStateMixin {
  BarcodeCapture? barcode;

  MobileScannerController controller =
      MobileScannerController(torchEnabled: false);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ReturnCubit, ReturnState>(
        listener: (context, state) {
          state.whenOrNull(returnSuccess: (response) {
            ScaffoldMessenger.of(context)
              ..hideCurrentSnackBar()
              ..showSnackBar(SnackBar(content: Text(response.message!)));

            context.pop();
          }, error: (error) {
            ScaffoldMessenger.of(context)
              ..hideCurrentSnackBar()
              ..showSnackBar(SnackBar(content: Text(error)));
          });
        },
        builder: (_, state) => Scaffold(
            appBar: AppBar(title: Text(widget.argument!)),
            body: _scanner(context)));
  }

  _scanner(BuildContext context) => Stack(children: [
        MobileScanner(
            fit: BoxFit.contain,
            controller: controller,
            onDetect: (barcode) {
              setState(() {
                this.barcode = barcode;
              });
            }),
        Align(
            alignment: Alignment.bottomCenter,
            child: Column(mainAxisSize: MainAxisSize.min, children: [
              SizedBox(
                  width: MediaQuery.of(context).size.width - 200,
                  height: 50,
                  child: FittedBox(
                      child: Text(
                          barcode?.barcodes.first.rawValue ??
                              'Start scan barcode',
                          overflow: TextOverflow.fade,
                          style: Theme.of(context)
                              .textTheme
                              .headlineMedium!
                              .copyWith(
                                  color: ColorConstant.primaryThemeColor)))),
              Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: ElevatedButtonComponent(
                      isLoading: context.watch<ReturnCubit>().isLoading,
                      buttonText: Strings.of(context)!.submitButton,
                      onPressed: () {
                        if (barcode?.barcodes.first.rawValue != null) {
                          if (widget.argument!.toUpperCase().contains(Strings.of(context)!.procurementReturn.toUpperCase())) {
                            //PROCUREMENT RETURN
                            context.read<ReturnCubit>().returnProcurementGetData(imeiNumber: barcode!.barcodes.first.rawValue!);
                          } else {
                            //AWB RETURN
                            context.read<ReturnCubit>().returnAwbGetData(imeiNumber: barcode!.barcodes.first.rawValue!);
                          }
                        }
                      }))
            ]))
      ]);
}
