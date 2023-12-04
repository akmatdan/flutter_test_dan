import 'package:flutter/material.dart';

class CatalogCircle extends StatefulWidget {
  final List<String> imageNames;

  const CatalogCircle({
    Key? key,
    required this.imageNames,
  }) : super(key: key);

  @override
  _CatalogCircleState createState() => _CatalogCircleState();
}

class _CatalogCircleState extends State<CatalogCircle> {
  int selectedIdx = -1;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        widget.imageNames.length,
        (index) => Padding(
          padding: const EdgeInsets.all(2.0),
          child: ElevatedButton(
            onPressed: () {
              setState(() {
                selectedIdx = index;
              });
            },
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.zero,
              shape: const CircleBorder(),
              backgroundColor: selectedIdx == index ? Colors.blue : Colors.grey,
            ),
            child: Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.white,
                  width: selectedIdx == index ? 2.0 : 1.0,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(3.0),
                child: CircleAvatar(
                  radius: 18.0,
                  backgroundImage:
                      AssetImage('assets/images/${widget.imageNames[index]}'),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
