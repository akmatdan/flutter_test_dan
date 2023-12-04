import 'package:flutter/material.dart';

class CardsHitsWidget extends StatelessWidget {
  final String imagePath;
  final String text;
  final String priceText;

  const CardsHitsWidget({
    Key? key,
    required this.imagePath,
    required this.text,
    required this.priceText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 160,
        height: 290,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: const [
            BoxShadow(
              color: Color(0x11000000),
              blurRadius: 20,
              offset: Offset(4, 4),
              spreadRadius: 0,
            ),
          ],
        ),
        child: Column(
          children: [
            // Image
            Container(
              width: 160,
              height: 160,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(imagePath),
                  fit: BoxFit.fill,
                ),
                borderRadius:
                    const BorderRadius.vertical(top: Radius.circular(16)),
              ),
            ),
            const SizedBox(height: 8),

            // Product
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Price
                  Text(
                    priceText,
                    style: theme.textTheme.headlineSmall!.copyWith(
                      color: const Color(0xFF0063A9),
                    ),
                  ),

                  // Name
                  Text(text, style: Theme.of(context).textTheme.labelLarge),
                  const SizedBox(height: 8),

                  // Available
                  Row(
                    children: [
                      Text('Доступно:',
                          style: Theme.of(context).textTheme.labelMedium),
                      const SizedBox(width: 5),
                      Text(
                        '32',
                        style:
                            Theme.of(context).textTheme.labelMedium!.copyWith(
                                  color: const Color(0xFFDD0613),
                                  fontWeight: FontWeight.w600,
                                ),
                      ),
                      const Spacer(),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          width: 30,
                          height: 30,
                          decoration: const BoxDecoration(
                            color: Color(0xFF0066B0),
                            shape: BoxShape.circle,
                          ),
                          child: const Center(
                            child: Icon(
                              Icons.add,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class OvalBorder extends ShapeBorder {
  const OvalBorder({this.side = BorderSide.none});

  final BorderSide side;

  @override
  EdgeInsetsGeometry get dimensions => EdgeInsets.all(side.width);

  @override
  Path getInnerPath(Rect rect, {TextDirection? textDirection}) => Path();

  @override
  Path getOuterPath(Rect rect, {TextDirection? textDirection}) {
    return Path()
      ..addOval(rect.inflate(side.width))
      ..close();
  }

  @override
  void paint(Canvas canvas, Rect rect, {TextDirection? textDirection}) {
    final Paint paint = side.toPaint();
    canvas.drawOval(rect.inflate(side.width / 2.0), paint);
  }

  @override
  ShapeBorder scale(double t) => OvalBorder(side: side.scale(t));
}
