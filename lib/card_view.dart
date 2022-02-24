import 'package:flutter/material.dart';
import 'package:staggered_gridview_test/model/photo_model.dart';

class CardViewItem extends StatelessWidget {
  final Hits hit;

  const CardViewItem({Key? key, required this.hit}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          child: Image.network(
            hit.webformatURL,
            fit: BoxFit.fill,
            width: 150,
            height: 150,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Text(hit.tags)],
              ),
            ],
          ),
        )
      ],
    );
  }
}
