import 'package:flutter/material.dart';
import 'package:staggered_gridview_test/grid_view_page.dart';

void main() {
  runApp(const TryImageSearch());
}

class TryImageSearch extends StatelessWidget {
  const TryImageSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Try Image Search',
      home: GridViewPage(),
    );
  }
}
