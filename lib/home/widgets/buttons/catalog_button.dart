import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CatalogButton extends StatelessWidget {
  const CatalogButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: const Color(0xFF0066B0),
            borderRadius: BorderRadius.circular(38),
          ),
          child: Padding(
            padding: const EdgeInsets.all(18),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset('assets/icons/layer.svg'),
                const SizedBox(width: 8),
                Text(
                  'Перейти в Каталог',
                  style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                        color: Colors.white,
                      ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
