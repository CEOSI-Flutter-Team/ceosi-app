import 'package:ceosi_app/models/ceosi_flutter_catalog/catalog_entry_model.dart';
import 'package:ceosi_app/providers/ceosi_flutter_catalog/catalog_entry_provider.dart';
import 'package:ceosi_app/screens/ceosi_flutter_catalog/widgets/flutter_catalog_appbar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:markdown_widget/markdown_widget.dart';
import 'package:markdown_widget/config/highlight_themes.dart' as theme;
import 'package:share_plus/share_plus.dart';

import '../../constants/colors.dart';
import '../../constants/labels.dart';
import '../../widgets/sidebar_widget.dart';
import 'catalog_entries_screen.dart';

class SourceCodeScreen extends StatelessWidget {
  const SourceCodeScreen({super.key});

  _share(String body, String subject) async {
    await Share.share(
      body
          .replaceAll(RegExp('``````dart'), '')
          .replaceAll(RegExp('``````'), '')
          .trim(),
      subject: subject,
    );
  }

  _preview(context, dataList, args) {
    showDialog(
      barrierColor: CustomColors.primary,
      context: context,
      builder: (context) {
        return Image.network(
          dataList[args.index].previewImage,
          loadingBuilder: (context, child, loadingProgress) {
            return loadingProgress != null
                ? const Center(
                    child: CircularProgressIndicator(
                      color: CustomColors.primary,
                    ),
                  )
                : child;
          },
          errorBuilder: (context, error, stackTrace) {
            return const Center(
              child: Text(
                Labels.checkYourInternetConnectivity,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            );
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)!.settings.arguments as SourceCodeArguments;
    List<EntryDatum> dataList = [];
    String itemData = '';
    String itemTitle = '';

    return Scaffold(
      appBar: flutterCatalogAppbarWidget(
        title: args.title,
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: GestureDetector(
              onTap: () => _share(itemData, itemTitle),
              child: const Icon(
                Icons.share,
                size: 20.0,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: GestureDetector(
              onTap: () => _preview(context, dataList, args),
              child: const Icon(
                Icons.preview_rounded,
                size: 20.0,
              ),
            ),
          )
        ],
      ),
      drawer: const SidebarWidget(),
      body: Consumer(
        builder: (context, ref, child) {
          AsyncValue<CatalogEntryModel?> entryData =
              ref.watch(catalogEntryStateNotifierProvider);
          return entryData.when(
            data: (data) {
              dataList = data!.entryData;
              itemData = dataList[args.index].data;
              itemTitle = dataList[args.index].title;
              return Column(
                children: <Widget>[
                  DescriptionWidget(
                    padding: const EdgeInsets.fromLTRB(30.0, 20.0, 30.0, 20.0),
                    text: dataList[args.index].description,
                  ),
                  DataViewWidget(
                    isCode: dataList[args.index].isCode,
                    data: itemData,
                  ),
                  const SizedBox(height: 50.0),
                ],
              );
            },
            error: (error, stackTrace) => Text(error.toString()),
            loading: () => const Center(
                child: CircularProgressIndicator(
              color: CustomColors.primary,
            )),
          );
        },
      ),
    );
  }
}

class DescriptionWidget extends StatelessWidget {
  const DescriptionWidget({
    super.key,
    required this.padding,
    required this.text,
  });

  final EdgeInsetsGeometry padding;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: RichText(
          overflow: TextOverflow.clip,
          textAlign: TextAlign.start,
          textDirection: TextDirection.ltr,
          softWrap: true,
          text: TextSpan(
            text: text,
            style: GoogleFonts.aleo(
                color: Colors.black, fontSize: 12.0, height: 1.5),
          )),
    );
  }
}

class DataViewWidget extends StatelessWidget {
  const DataViewWidget({
    super.key,
    required this.isCode,
    required this.data,
    this.backgroundColor = CustomColors.greyAccent,
    this.radius = 20.0,
  });

  final bool isCode;
  final String data;
  final Color backgroundColor;
  final double radius;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: isCode
          ? Container(
              margin: const EdgeInsets.symmetric(horizontal: 30.0),
              decoration: BoxDecoration(
                color: backgroundColor,
                borderRadius: BorderRadius.circular(radius),
              ),
              child: MarkdownWidget(
                selectable: true,
                data: data,
                physics: const BouncingScrollPhysics(),
                padding: const EdgeInsets.all(20.0),
                styleConfig: StyleConfig(
                  preConfig: PreConfig(
                    decoration: const BoxDecoration(
                      color: Colors.transparent,
                    ),
                    padding: const EdgeInsets.all(0.0),
                    language: 'dart',
                    textStyle: GoogleFonts.ubuntuMono().copyWith(
                      fontSize: 14.0,
                    ),
                    theme: theme.a11yLightTheme,
                  ),
                ),
              ),
            )
          : ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Image.network(
                data,
                loadingBuilder: (context, child, loadingProgress) {
                  return loadingProgress != null
                      ? const Center(
                          child: CircularProgressIndicator(
                            color: CustomColors.primary,
                          ),
                        )
                      : child;
                },
                errorBuilder: (context, error, stackTrace) {
                  return const Center(
                    child: Text(
                      Labels.checkYourInternetConnectivity,
                      style: TextStyle(
                        color: CustomColors.secondary,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  );
                },
              ),
            ),
    );
  }
}
