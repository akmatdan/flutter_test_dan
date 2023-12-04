import 'package:flutter/material.dart';

import '../utils/constants/sizes.dart';

class CatalogScreen extends StatelessWidget {
  const CatalogScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Padding(
            padding: EdgeInsets.all(TSizes.defaultSpace),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              // Headings
              Text('Каталог',
                  style: Theme.of(context).textTheme.headlineMedium),
            ])));
  }
}
