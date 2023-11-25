import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../injectable.dart';
import '../../../cubits/return_list/return_list_cubit.dart';
import '../../../widgets/widget/widget.dart';

class ReturnListPage extends StatelessWidget {
  const ReturnListPage({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
      body: BlocBuilder<ReturnListCubit, ReturnListState>(
          bloc: getIt<ReturnListCubit>()..returnListGetData(),
          builder: (context, state) {
            final status = (state.loading, state.returnList.isEmpty);

            return switch (status) {
              (true, _) => const PlatformLoadingIndicatorWidget(),
              (_, true) => const ListViewEmptyWidget(),
              (_, false) => const ListViewEmptyWidget()
              /*ListView.builder(
                  addAutomaticKeepAlives: false,
                  addRepaintBoundaries: false,
                  physics: const BouncingScrollPhysics(
                      parent: AlwaysScrollableScrollPhysics()),
                  itemCount: state.returnList.length,
                  itemBuilder: (BuildContext context, int index) =>
                      _returnItemView(context: context))*/
            };
          }));
}

/*_returnItemView({required BuildContext context}) {
   final returnListEntity(
      :uniqueId
  ) = returnListEntity;

  return Card(
      child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
        Container(
            margin: const EdgeInsets.all(8),
            height: 120,
            width: 100,
            child: Image.asset(AssetImageConstant.placeHolderImage,
                fit: BoxFit.cover)),
        Container(
            margin: const EdgeInsets.symmetric(vertical: 8),
            child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('00-00-0000 | 00:00 AM',
                      style: context.dateTimeItemViewTextStyle),
                  const SizedBox(height: 5),
                  //Text(uniqueId, style: context.uniqueIdItemViewTextStyle),
                  Text('00001', style: context.uniqueIdItemViewTextStyle),
                  Text('80260023071', style: context.serialNumberTextStyle),
                ]))
      ]));
}*/
