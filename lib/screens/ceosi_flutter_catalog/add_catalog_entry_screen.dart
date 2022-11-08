import 'package:ceosi_app/constants/colors.dart';
import 'package:ceosi_app/screens/ceosi_flutter_catalog/widgets/flutter_catalog_appbar_widget.dart';
import 'package:ceosi_app/widgets/textformfield_widget.dart';
import 'package:code_editor/code_editor.dart';
import 'package:flutter/material.dart';
import 'package:markdown_widget/config/style_config.dart';

import '../../constants/labels.dart';

class AddCatalogEntryScreen extends StatelessWidget {
  const AddCatalogEntryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<FileEditor> files = [
      FileEditor(
        name: 'add_entry.dart',
        language: 'dart',
        code: <String>[].join('\n'),
      ),
    ];

    EditorModel editorModel = EditorModel(
      files: files,
      styleOptions: EditorModelStyleOptions(
        fontSize: 10.0,
        toolbarOptions: const ToolbarOptions(
          copy: true,
          paste: true,
          cut: true,
          selectAll: true,
        ),
        editButtonTextColor: CustomColors.primary,
        editorToolButtonColor: Colors.white,
        editorToolButtonTextColor: CustomColors.primary,
      ),
    );

    final TextEditingController titleController = TextEditingController();
    final TextEditingController descriptionController = TextEditingController();

    return Scaffold(
      appBar: flutterCatalogAppbarWidget(title: Labels.addCatalogEntry),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0.0),
              child: TextFormField(
                controller: titleController,
                autofocus: true,
                maxLength: 50,
                cursorRadius: const Radius.circular(20.0),
                cursorColor: CustomColors.primary,
                toolbarOptions: const ToolbarOptions(
                    copy: true, cut: true, paste: true, selectAll: true),
                validator: (value) {
                  return '';
                },
                decoration: InputDecoration(
                  isDense: true,
                  label: const Text(
                    'Title',
                    style: TextStyle(
                      color: CustomColors.primary,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: const BorderSide(
                        width: 1.0, color: CustomColors.primary),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: const BorderSide(
                        width: 1.0, color: CustomColors.primary),
                  ),
                  disabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: const BorderSide(
                        width: 1.0, color: CustomColors.greyAccent),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 10.0),
              child: TextFormField(
                controller: descriptionController,
                autofocus: true,
                cursorRadius: const Radius.circular(20.0),
                cursorColor: CustomColors.primary,
                keyboardType: TextInputType.multiline,
                maxLines: null,
                toolbarOptions: const ToolbarOptions(
                    copy: true, cut: true, paste: true, selectAll: true),
                validator: (value) {
                  return '';
                },
                decoration: InputDecoration(
                  isDense: false,
                  label: const Text(
                    'Description',
                    style: TextStyle(
                      color: CustomColors.primary,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: const BorderSide(
                        width: 1.0, color: CustomColors.primary),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: const BorderSide(
                        width: 1.0, color: CustomColors.primary),
                  ),
                  disabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: const BorderSide(
                        width: 1.0, color: CustomColors.greyAccent),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 20.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: CodeEditor(
                  model: editorModel,
                  edit: true,
                  onSubmit: (language, value) {},
                  disableNavigationbar: true,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
