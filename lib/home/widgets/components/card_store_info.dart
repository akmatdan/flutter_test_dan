import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class CardStoreInfo extends StatelessWidget {
  final String storeName;
  final String address;
  final String workingHours;

  const CardStoreInfo({
    required this.storeName,
    required this.address,
    required this.workingHours,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 230,
        height: 100,
        clipBehavior: Clip.antiAlias,
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          shadows: const [
            BoxShadow(
              color: Color.fromARGB(20, 0, 0, 0),
              blurRadius: 20,
              offset: Offset(4, 4),
              spreadRadius: 0,
            )
          ],
        ),
        child: Stack(
          children: [
            Positioned(
              left: 16,
              top: 16,
              child: SizedBox(
                width: 200,
                height: 100,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Store name
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          storeName,
                          style:
                              Theme.of(context).textTheme.bodySmall!.copyWith(
                                    color: const Color(0xFF1F1F39),
                                    fontWeight: FontWeight.w500,
                                  ),
                        ),
                        const Icon(
                          Iconsax.arrow_right_3,
                          size: 15,
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),

                    // Address
                    Row(
                      children: [
                        const Icon(
                          Iconsax.location,
                          size: 15,
                          color: Colors.grey,
                        ),
                        const SizedBox(width: 10),
                        Text(
                          address,
                          style:
                              Theme.of(context).textTheme.labelLarge!.copyWith(
                                    color: const Color(0xFF1F1F39),
                                  ),
                        ),
                      ],
                    ),

                    // Working hours
                    Row(
                      children: [
                        const Icon(
                          Iconsax.clock,
                          size: 15,
                          color: Colors.grey,
                        ),
                        const SizedBox(width: 10),
                        Text(
                          workingHours,
                          style:
                              Theme.of(context).textTheme.labelLarge!.copyWith(
                                    color: const Color(0xFFB8B8D2),
                                  ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
