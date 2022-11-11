import 'package:ceosi_app/constants/colors.dart';
import 'package:ceosi_app/models/ceosi_flutter_catalog/catalog_entry_model.dart';
import 'package:ceosi_app/screens/ceosi_flutter_catalog/widgets/appbar_extension_widget.dart';
import 'package:ceosi_app/screens/ceosi_flutter_catalog/widgets/flutter_catalog_appbar_widget.dart';
import 'package:ceosi_app/screens/ceosi_flutter_catalog/widgets/flutter_catalog_sidebar_widget.dart';
import 'package:ceosi_app/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../constants/labels.dart';
import '../../providers/ceosi_flutter_catalog/catalog_entry_provider.dart';

class CatalogEntriesScreen extends StatelessWidget {
  const CatalogEntriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        final confirm = await showDialog(
          context: context,
          builder: (context) {
            return AlertDialogWidget(
              title: Labels.confirmationTitle,
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.pushNamedAndRemoveUntil(
                        context, '/homescreen', (route) => false);
                  },
                  child: const Text(
                    Labels.yes,
                    style: TextStyle(color: CustomColors.secondary),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pop(context, false);
                  },
                  child: const Text(
                    Labels.no,
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            );
          },
        );
        return confirm;
      },
      child: Scaffold(
        appBar: flutterCatalogAppbarWidget(title: Labels.catalogEntries),
        drawer: const FlutterCatalogSidebarWidget(),
        floatingActionButton: Padding(
          padding: const EdgeInsets.only(bottom: 5.0, right: 5.0),
          child: FloatingActionButton(
            tooltip: Labels.addEntry,
            backgroundColor: Colors.white,
            elevation: 5,
            splashColor: CustomColors.greyAccent,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0)),
            child: const Icon(
              Icons.add_rounded,
              color: CustomColors.primary,
              size: 35.0,
            ),
            onPressed: () =>
                Navigator.of(context).pushNamed('/addcatalogentryscreen'),
          ),
        ),
        body: Column(
          children: [
            const AppbarExtensionWidget(),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const <Widget>[
                  CatalogEntriesViewWidget(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AlertDialogWidget extends StatelessWidget {
  const AlertDialogWidget(
      {super.key, required this.title, required this.actions});

  final String title;
  final List<Widget> actions;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      backgroundColor: CustomColors.primary,
      title: Text(
        title,
        style: const TextStyle(color: Colors.white, fontSize: 14.0),
      ),
      actions: actions,
    );
  }
}

class SourceCodeArguments {
  SourceCodeArguments(this.title, this.index);

  final String title;
  final int index;
}

navigateToSourceCodeScreen(NavigatorState navigator, String title, int index) {
  navigator.pushNamed(
    '/sourcecodescreen',
    arguments: SourceCodeArguments(title, index),
  );
}

class CatalogEntriesViewWidget extends ConsumerWidget {
  const CatalogEntriesViewWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    AsyncValue<CatalogEntryModel?> entryData =
        ref.watch(catalogEntryStateNotifierProvider);
    return entryData.when(
      data: (data) {
        List<EntryDatum> dataList = data!.entryData;
        return CatalogEntryWidget(dataList);
      },
      error: (error, stackTrace) => Text(error.toString()),
      loading: () => const Center(
          child: CircularProgressIndicator(
        color: CustomColors.primary,
      )),
    );
  }
}

class CatalogEntryWidget extends StatelessWidget {
  const CatalogEntryWidget(this.dataList, {super.key});
  final List<EntryDatum> dataList;

  @override
  Widget build(BuildContext context) {
    final navigator = Navigator.of(context);
    return Expanded(
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: dataList.length,
        itemBuilder: (context, index) {
          return InkWell(
            borderRadius: BorderRadius.circular(20.0),
            splashColor: Colors.transparent,
            onTap: () => navigateToSourceCodeScreen(
                navigator, dataList[index].title.toUpperCase(), index),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(36.0, 20.0, 36.0, 20.0),
              child: Container(
                height: 120.0,
                decoration: BoxDecoration(
                    color: index % 2 == 0
                        ? CustomColors.secondary
                        : CustomColors.primary,
                    borderRadius: BorderRadius.circular(20.0)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image.asset(
                          'assets/icons/code.png',
                          scale: 25.0,
                        ),
                        const SizedBox(width: 5.0),
                        BoldTextWidget(
                          color: Colors.white,
                          fontSize: 12.0,
                          text: dataList[index].title,
                        ),
                      ],
                    ),
                    BoldTextWidget(
                      color: Colors.white,
                      fontSize: 10.0,
                      text: dataList[index].category,
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
