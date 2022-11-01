import 'package:ceosi_app/constants/colors.dart';
import 'package:ceosi_app/providers.dart';
import 'package:ceosi_app/widgets/sidebar_widget.dart';
import 'package:ceosi_app/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../constants/labels.dart';

class CodeListScreen extends StatelessWidget {
  const CodeListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const BoldTextWidget(
            color: Colors.white, fontSize: 14.0, text: Label.codeList),
        centerTitle: true,
        backgroundColor: primaryColor,
      ),
      drawer: const SidebarWidget(),
      body: Column(
        children: [
          const AppbarExtensionWidget(),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const <Widget>[
                CodeListViewWidget(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class AppbarExtensionWidget extends StatelessWidget {
  const AppbarExtensionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: primaryColor,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(10.0),
          bottomRight: Radius.circular(10.0),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          left: 20.0,
          bottom: 20.0,
        ),
        child: Row(
          children: <Widget>[
            CodeListSearchFieldWidget(),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.filter_list,
                size: 24.0,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CodeListViewWidget extends ConsumerWidget {
  const CodeListViewWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    AsyncValue<Map<String, dynamic>?> codeListData =
        ref.watch(codeListStateNotifierProvider);
    return codeListData.when(
      data: (data) {
        List<Map<String, dynamic>> codeList = data!['code_list'];
        return Expanded(
          child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            itemCount: codeList.length,
            itemBuilder: (context, index) {
              return InkWell(
                borderRadius: BorderRadius.circular(20.0),
                splashColor: Colors.transparent,
                onTap: () {},
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(36.0, 20.0, 36.0, 20.0),
                  child: Container(
                    height: 120.0,
                    decoration: BoxDecoration(
                        color: index % 2 == 0 ? secondaryColor : primaryColor,
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
                              text: codeList[index]['title'],
                            ),
                          ],
                        ),
                        BoldTextWidget(
                          color: Colors.white,
                          fontSize: 10.0,
                          text: codeList[index]['category'],
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        );
      },
      error: (error, stackTrace) => Text(error.toString()),
      loading: () => const Center(
          child: CircularProgressIndicator(
        color: primaryColor,
      )),
    );
  }
}

class CodeListSearchFieldWidget extends StatelessWidget {
  CodeListSearchFieldWidget({super.key});

  final TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextFormField(
        controller: searchController,
        style: const TextStyle(color: Colors.black),
        decoration: InputDecoration(
            isDense: true,
            border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(10.0),
              ),
              borderSide: BorderSide(color: Colors.transparent),
            ),
            focusedBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(10.0),
              ),
              borderSide: BorderSide(color: Colors.transparent),
            ),
            fillColor: Colors.white,
            filled: true,
            prefixIcon: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.search,
                  color: primaryColor,
                ))),
      ),
    );
  }
}
