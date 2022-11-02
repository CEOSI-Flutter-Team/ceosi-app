import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:google_fonts/google_fonts.dart';

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
    const markdownSource = """
```dart
navigateToSourceCodeScreen(NavigatorState navigator, String title) {
  navigator.pushNamed(
    '/sourcecodescreen',
    arguments: SourceCodeArguments(title),
  );
}
```
""";
    final controller = ScrollController();

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: BoldTextWidget(
            color: Colors.white, fontSize: 14.0, text: args.title),
        centerTitle: true,
        backgroundColor: CustomColors.primary,
      ),
      drawer: const SidebarWidget(),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(30.0, 20.0, 30.0, 20.0),
              child: RichText(
                  overflow: TextOverflow.clip,
                  textAlign: TextAlign.start,
                  textDirection: TextDirection.ltr,
                  softWrap: true,
                  text: TextSpan(
                    text:
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\nLorem ipsum dolor sit amet, consectetur adipiscing elit.\nLorem ipsum dolor sit amet, consectetur adipiscing elit.\nLorem ipsum dolor sit amet, consectetur adipiscing elit.',
                    style: GoogleFonts.aleo(
                        color: Colors.black, fontSize: 12.0, height: 1.5),
                  )),
            ),
          ),
          Expanded(
            child: Markdown(
              data: markdownSource,
              controller: controller,
              selectable: true,
              physics: const BouncingScrollPhysics(),
              styleSheetTheme: MarkdownStyleSheetBaseTheme.platform,
            ),
          ),
        ],
      ),
    );
  }
}
