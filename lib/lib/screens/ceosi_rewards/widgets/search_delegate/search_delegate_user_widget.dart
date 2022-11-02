import 'package:ceosi_app/lib/widgets/text_widget.dart';
import 'package:flutter/material.dart';

import '../../../../constants/images.dart';

class SearchDelegateUser extends SearchDelegate {
  @override
  List<Widget>? buildActions(BuildContext context) {
    // TODO: implement buildActions

    late String result = '';

    return [
      IconButton(
        onPressed: () {
          if (query != '') {
          } else {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                duration: Duration(seconds: 1),
                content: Text('No Input. Cannot Procceed'),
              ),
            );
          }
        },
        icon: const Icon(
          Icons.search,
          color: Colors.blue,
        ),
      ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    // TODO: implement buildLeading

    return IconButton(
      onPressed: () {
        close(context, null);
      },
      icon: const Icon(Icons.arrow_back),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    // TODO: implement buildResults
    return Container();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // TODO: implement buildSuggestions
    return SizedBox(child: ListView.builder(itemBuilder: ((context, index) {
      return ListTile(
          onTap: () {
            // Navigator.of(context).push(MaterialPageRoute(
            //     builder: (context) => ViewProductPage()));
          },
          leading: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Image.asset(CustomImages().sampleProfileImage),
          ),
          title: const BoldTextWidget(
              color: Colors.black, fontSize: 14, text: 'Lance Olana'),
          subtitle: const NormalTextWidget(
              color: Colors.grey, fontSize: 10, text: 'Flutter Developer'),
          trailing: const BoldTextWidget(
              color: Colors.amber, fontSize: 12, text: '1,000cc'));
    })));
  }
}
