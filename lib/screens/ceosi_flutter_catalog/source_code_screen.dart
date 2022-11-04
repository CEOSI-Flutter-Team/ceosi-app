import 'package:ceosi_app/models/ceosi_flutter_catalog/code_model.dart';
import 'package:ceosi_app/providers/ceosi_flutter_catalog/code_provider.dart';
import 'package:ceosi_app/widgets/button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:markdown_widget/markdown_widget.dart';
import 'package:markdown_widget/config/highlight_themes.dart' as theme;

import '../../constants/colors.dart';
import '../../widgets/sidebar_widget.dart';
import '../../widgets/text_widget.dart';
import 'code_list_screen.dart';

class SourceCodeScreen extends StatelessWidget {
  const SourceCodeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)!.settings.arguments as SourceCodeArguments;

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: BoldTextWidget(
            color: Colors.white, fontSize: 14.0, text: args.title),
        centerTitle: true,
        backgroundColor: CustomColors.primary,
      ),
      drawer: const SidebarWidget(),
      body: Consumer(
        builder: (context, ref, child) {
          AsyncValue<CodeModel?> codeData =
              ref.watch(codeStateNotifierProvider);
          return codeData.when(
            data: (data) {
              List<CodeDatum> dataList = data!.codeData;
              return Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(30.0, 20.0, 30.0, 20.0),
                    child: RichText(
                        overflow: TextOverflow.clip,
                        textAlign: TextAlign.start,
                        textDirection: TextDirection.ltr,
                        softWrap: true,
                        text: TextSpan(
                          text: dataList[args.index].description,
                          style: GoogleFonts.aleo(
                              color: Colors.black, fontSize: 12.0, height: 1.5),
                        )),
                  ),
                  Expanded(
                    flex: 3,
                    child: dataList[args.index].isCode
                        ? Container(
                            margin:
                                const EdgeInsets.symmetric(horizontal: 30.0),
                            decoration: BoxDecoration(
                              color: CustomColors.greyAccent,
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: MarkdownWidget(
                              selectable: true,
                              data: dataList[args.index].data,
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
                            child: Image.network(dataList[args.index].data),
                          ),
                  ),
                  const SizedBox(height: 20.0),
                  Expanded(
                    flex: 1,
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding:
                              const EdgeInsets.symmetric(horizontal: 110.0),
                          child: ButtonWidget(
                            onPressed: () {},
                            buttonHeight: 60.0,
                            buttonWidth: 30.0,
                            borderRadius: 20.0,
                            color: CustomColors.secondary,
                            textWidget: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Image.asset(
                                  'assets/icons/send.png',
                                  scale: 25.0,
                                ),
                                const SizedBox(width: 10.0),
                                const BoldTextWidget(
                                  color: Colors.white,
                                  fontSize: 14.0,
                                  text: 'Share Code',
                                ),
                              ],
                            ),
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          style: ButtonStyle(
                              overlayColor: MaterialStateProperty.all(
                                  Colors.transparent)),
                          child: const BoldTextWidget(
                            color: CustomColors.primary,
                            fontSize: 14.0,
                            text: 'Preview',
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ],
                    ),
                  ),
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
