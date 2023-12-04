import 'package:flutter/material.dart';

import '../utils/constants/sizes.dart';

class LocationScreen extends StatelessWidget {
  const LocationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Padding(
            padding: const EdgeInsets.all(TSizes.defaultSpace),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              // Headings
              Text('Локация',
                  style: Theme.of(context).textTheme.headlineMedium),
            ])));
  }
}
