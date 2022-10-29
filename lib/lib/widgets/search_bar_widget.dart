import 'package:ceosi_app/lib/widgets/text_widget.dart';
import 'package:flutter/material.dart';

import '../constants/colors.dart';

class SearchUserWidget extends StatelessWidget {
  const SearchUserWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: GestureDetector(
        onTap: () {},
        child: Container(
          height: 35,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(100)),
          child: Row(
            children: [
              const SizedBox(
                width: 10,
              ),
              const Icon(
                Icons.search,
                color: primaryColor,
              ),
              const Expanded(child: SizedBox()),
              const NormalTextWidget(
                  color: primaryColor,
                  fontSize: 12,
                  text: 'Flutter Developers'),
              const SizedBox(
                width: 10,
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.arrow_drop_down_circle_rounded,
                  color: primaryColor,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SearchItemWidget extends StatelessWidget {
  const SearchItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: GestureDetector(
        onTap: () {},
        child: Container(
          height: 35,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(100)),
          child: Row(
            children: [
              const SizedBox(
                width: 10,
              ),
              const Icon(
                Icons.search,
                color: primaryColor,
              ),
              const Expanded(child: SizedBox()),
              const NormalTextWidget(
                  color: primaryColor, fontSize: 12, text: 'Snacks'),
              const SizedBox(
                width: 10,
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.arrow_drop_down_circle_rounded,
                  color: primaryColor,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
