import 'package:flutter/material.dart';

import '../../data/news_data.dart';
import '../../widget/news_item_widget.dart';

class LatesNewsWidget extends StatelessWidget {
  const LatesNewsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: const Text("List Synopsis Movie"),
          trailing: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.arrow_forward_ios,
                size: 16,
              )),
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 5),
          child: Column(
              children: List.generate(
                  3,
                  (int i) => NewsItemWidget(
                        news: newsData[i],
                      ))),
        )
      ],
    );
  }
}
