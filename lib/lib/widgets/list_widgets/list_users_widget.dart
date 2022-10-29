import 'package:ceosi_app/lib/widgets/single_item_widgets/users_widget.dart';
import 'package:flutter/material.dart';

class ListUsersWidget extends StatelessWidget {
  const ListUsersWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: ((context, index) {
      return UsersWidget();
    }));
  }
}
