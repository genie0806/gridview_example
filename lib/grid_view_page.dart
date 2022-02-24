import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:staggered_gridview_test/card_view.dart';
import 'package:staggered_gridview_test/model/photo_model.dart';
import 'package:staggered_gridview_test/model/search_model.dart';

class GridViewPage extends StatelessWidget {
  final SearchModel searchModel;
  const GridViewPage({Key? key, required this.searchModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StaggeredGrid.count(
          crossAxisCount: 2,
          mainAxisSpacing: 6,
          crossAxisSpacing: 6,
          children: searchModel.hits!
              .map((e) => CardViewItem(
                    hit: e,
                  ))
              .toList()),
    );
  }
}
