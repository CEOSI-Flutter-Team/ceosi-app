import 'package:ceosi_app/models/ceosi_flutter_catalog/catalog_entry_model.dart';
import 'package:ceosi_app/repositories/ceosi_flutter_catalog/catalog_entry_repository_interface.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final catalogEntryRepositoryProvider =
    Provider<CatalogEntryRepository>((ref) => CatalogEntryRepository());

class CatalogEntryRepository implements CatalogEntryRepositoryInterface {
  @override
  Future<CatalogEntryModel?> getEntryData() async {
    final data = await Future.value(
      CatalogEntryModel(
        entryData: [
          EntryDatum(
              title: 'Code Sample 1',
              category: 'Category 1',
              description: sampleDescription,
              isCode: true,
              data: sampleSourceCode,
              previewImage: sampleImage),
          EntryDatum(
              title: 'Code Sample 2',
              category: 'Category 4',
              description: sampleDescription,
              isCode: false,
              data: sampleImage,
              previewImage: sampleImage),
          EntryDatum(
              title: 'Code Sample 3',
              category: 'Category 2',
              description: sampleDescription,
              isCode: true,
              data: sampleSourceCode,
              previewImage: sampleImage),
          EntryDatum(
              title: 'Code Sample 4',
              category: 'Category 8',
              description: sampleDescription,
              isCode: true,
              data: sampleSourceCode,
              previewImage: sampleImage),
          EntryDatum(
              title: 'Code Sample 5',
              category: 'Category 1',
              description: sampleDescription,
              isCode: false,
              data: sampleImage,
              previewImage: sampleImage),
        ],
      ),
    );
    return Future.delayed(const Duration(seconds: 3), () => data);
  }

  String sampleDescription =
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\nLorem ipsum dolor sit amet, consectetur adipiscing elit.\nLorem ipsum dolor sit amet, consectetur adipiscing elit.\nLorem ipsum dolor sit amet, consectetur adipiscing elit.';

  String sampleImage =
      'https://media.geeksforgeeks.org/wp-content/uploads/20200904104133/Screenshot633.png';

  String sampleSourceCode = """
``````dart
class SourceCodeScreen extends StatelessWidget {
  const SourceCodeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as SourceCodeArguments;
    const markdownSource = \"\"\"
```dart
class SourceCodeScreen extends StatelessWidget {
  const SourceCodeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as SourceCodeArguments;

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: BoldTextWdiget(
          color: Colors.white, fontSize: 14.0, text: args.title),
        centerTitle: true,
        backgroundColor: CustomColors.primary,
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
                        ''Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\nLorem ipsum dolor sit amet, consectetur adipiscing elit.\nLorem ipsum dolor sit amet, consectetur adipiscing elit.\nLorem ipsum dolor sit amet, consectetur adipiscing elit.'',
                    style: GoogleFonts.aleo(
                        color: Colors.black, fontSize: 12.0, height: 1.5),
                )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

```

\"\"\";

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: BoldTextWdiget(
          color: Colors.white, fontSize: 14.0, text: args.title),
        centerTitle: true,
        backgroundColor: CustomColors.primary,
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
                        ''Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\nLorem ipsum dolor sit amet, consectetur adipiscing elit.\nLorem ipsum dolor sit amet, consectetur adipiscing elit.\nLorem ipsum dolor sit amet, consectetur adipiscing elit.'',
                    style: GoogleFonts.aleo(
                        color: Colors.black, fontSize: 12.0, height: 1.5),
                )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
``````

""";
}
