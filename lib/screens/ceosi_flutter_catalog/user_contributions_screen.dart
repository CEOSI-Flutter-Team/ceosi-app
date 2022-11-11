import 'package:ceosi_app/screens/ceosi_flutter_catalog/widgets/flutter_catalog_appbar_widget.dart';
import 'package:flutter/material.dart';

import '../../constants/labels.dart';

class UserContributionsScreen extends StatelessWidget {
  const UserContributionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: flutterCatalogAppbarWidget(title: Labels.userContributions),
    );
  }
}
