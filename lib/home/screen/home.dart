import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:test_flutter/home/widgets/buttons/catalog_button.dart';
import 'package:test_flutter/home/widgets/buttons/notification_button.dart';
import 'package:test_flutter/home/widgets/components/card_hits_widget.dart';
import 'package:test_flutter/home/widgets/components/card_store_info.dart';
import 'package:test_flutter/utils/constants/sizes.dart';
import '../widgets/buttons/menu_button.dart';
import '../widgets/components/card_widget.dart';
import '../widgets/components/catalog_circle.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const MenuButton(),
        actions: const [NotificationButton()],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // SVG Image Backround
            Stack(
              children: [
                SizedBox(
                  height: 450,
                  child: SvgPicture.asset(
                    'assets/images/background.svg',
                    fit: BoxFit.fill,
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                  ),
                ),

                // Catalog
                Positioned(
                  top: MediaQuery.of(context).size.height * 0.13,
                  left: 0,
                  right: 0,
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CatalogCircle(
                        imageNames: [
                          'category1.png',
                          'category2.png',
                          'category3.png',
                          'category4.png',
                          'category5.png',
                        ],
                      ),
                    ],
                  ),
                ),

                // Card
                Positioned(
                  top: MediaQuery.of(context).size.height * 0.22,
                  left: 30,
                  right: 0,
                  child: Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          spreadRadius: 1,
                          blurRadius: 10,
                          offset: const Offset(0, 10),
                        ),
                      ],
                    ),
                    child: Stack(
                      children: [
                        // Original CARD
                        SvgPicture.asset(
                          'assets/images/CARD.svg',
                          width: 340,
                          height: 240,
                        ),

                        // QR Code on top
                        Positioned(
                          top: 100,
                          left: 50,
                          width: 100,
                          height: 100,
                          child: Image.asset('assets/images/qrCode.png'),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),

            // Cards Widgets New and Sell
            Container(
              padding: const EdgeInsets.only(bottom: 15, left: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Title
                      const Text(
                        'Новости и Акции',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      // Все TextButton
                      TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          padding: const EdgeInsets.all(16),
                          foregroundColor: Colors.blue,
                        ),
                        child: const Text('Все'),
                      ),
                    ],
                  ),

                  // Сards
                  const SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        CardWidget(
                          assetPath: 'assets/images/category1.png',
                          text: 'Дарим подарки каждую неделю + 2 путеществие',
                        ),
                        SizedBox(
                          width: TSizes.spaceBtwItems,
                        ),
                        CardWidget(
                          assetPath: 'assets/images/category2.png',
                          text: 'Дарим подарки каждую неделю + 2 путеществие',
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),

            // Cards Widgets Hit sells
            Container(
              padding: const EdgeInsets.only(bottom: 15, left: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Title
                      const Text(
                        'Хиты продаж',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      // Все TextButton
                      TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          padding: const EdgeInsets.all(16),
                          foregroundColor: Colors.blue,
                        ),
                        child: const Text('Все'),
                      ),
                    ],
                  ),

                  // Сards
                  const SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        // Cards Widgets Hits of Sell
                        CardsHitsWidget(
                            imagePath: 'assets/images/category3.png',
                            text: 'Держатель для лейки BOOU PG605',
                            priceText: '1200 сом'),
                        CardsHitsWidget(
                            imagePath: 'assets/images/category3.png',
                            text: 'Держатель для лейки BOOU PG605',
                            priceText: '1200 сом'),
                        CardsHitsWidget(
                            imagePath: 'assets/images/category3.png',
                            text: 'Держатель для лейки BOOU PG605',
                            priceText: '1200 сом'),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            const CatalogButton(),

            // Cards Widgets Store Addres
            Container(
              padding: const EdgeInsets.only(bottom: 15, left: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Title
                      const Text(
                        'Хиты продаж',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      // Все TextButton
                      TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          padding: const EdgeInsets.all(16),
                          foregroundColor: Colors.blue,
                        ),
                        child: const Text('Все'),
                      ),
                    ],
                  ),

                  // Сards
                  const SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        CardStoreInfo(
                            storeName: 'Название магазина',
                            address: 'ул. Турусбекова A167',
                            workingHours: '08:00 - 22:00'),
                        CardStoreInfo(
                            storeName: 'Название магазина',
                            address: 'ул. Турусбекова A167',
                            workingHours: '08:00 - 22:00'),
                        CardStoreInfo(
                            storeName: 'Название магазина',
                            address: 'ул. Турусбекова A167',
                            workingHours: '08:00 - 22:00'),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
      drawer: const SideMenu(),
    );
  }
}
